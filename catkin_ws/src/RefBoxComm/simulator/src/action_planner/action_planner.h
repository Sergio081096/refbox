/***********************************************
*                                              *
*      action_planner.h                        *
*                                              *
*      Jesus Savage                            *
*                                              *
*              Bio-Robotics Laboratory         *
*              UNAM, 2020                      *
*                                              *
*                                              *
************************************************/


#include "ros/ros.h"
#include "ros/package.h"
#include "simulator/simulator_find_obj.h"
#include "simulator/simulator_manipulator.h"
#include <iostream>
#include <vector>
#include <ctime>
#include <map>
#include <sstream>
#include <string>
#include "simulator/MotionPlanner.h"
#include "simulator/FindObject.h"
#include "../simulator_physics/prb_failure_actions.h"
#include "../simrep/SimuladorRepresentation.h"
//#include "simulator/ActionPlanner.h"

#ifndef PI
#define PI 3.1415926535f
#endif

int flg_msg = 0;
int flg_msg_navigation = 0;
parameters params_act;

void msgCallbackMotionPlanner(const simulator::MotionPlanner::ConstPtr& msg)
{
    printf("\nReceived msg from motion planner str %s\n",msg->motion.c_str());    

        action_data = msg->data;
	flg_msg_navigation = 1;
}

void msgCallbackFindObject(const simulator::FindObject::ConstPtr& msg)
{
    action_data = msg->data;
    //strcpy(Motion_Planner,msg->motion.c_str());
    flg_msg = msg->data;
	if(flg_msg == 1) printf("Object found from find object %s\n",msg->find.c_str());
	else printf("Object NOT found from find object\n");
}

int start_clips_node_action_planner(){

 bool init_kdb = false;
 std::string file;
 std::string result;

 std::cout << "Starting CLIPS" << std::endl;
 file = ros::package::getPath("simulator") + "/src/logistics/logistics.dat";
 std::cout << "CLIPS file: " << file  << std::endl;
 init_kdb = SimuladorRepresentation::initKDB(file, false, 2000);
 init_kdb = 1;

 if(!init_kdb){
                std::cout << "CLIPS error file not found: " << file  << std::endl;
                return 0;
 }

 //Function to RESET CLIPS
 SimuladorRepresentation::resetCLIPS(true);
 SimuladorRepresentation::resetCLIPS(true);

 //Function to print facts 
 SimuladorRepresentation::factCLIPS(true);

 //Function to print the loaded rules' names
 SimuladorRepresentation::ruleCLIPS(true);

 //Function to start running Clips
 SimuladorRepresentation::runCLIPS(true);

}

int  send_grab_drop(char *action, char *object, char *answer){

    //printf("%s object %s\n",action,object);
    char str[300];
    char ROS_System[30];
    int result;
    float x,y,z;


    ros::NodeHandle n;
    ros::ServiceClient client;
    simulator::simulator_manipulator srv;
    client = n.serviceClient<simulator::simulator_manipulator>("simulator_manipulator"); //create the client

    srv.request.ROS_System = ROS_System;
    srv.request.action = action;
    srv.request.object = object;

    if (client.call(srv))
    {
      strcpy(str,srv.response.answer.c_str());
    }
    else
    {
      ROS_ERROR("Failed to call service simulator_manipulator");
    }

    printf("\nAnswer manipulator %s\n",str);
    strcpy(answer,str);
    sscanf(str,"%s",action);

    if(strcmp(action,"dropped")==0){
	sscanf(str,"%s%s%f%f%f%d",action,object,&x,&y,&z,&result);	
	printf("DROPPED %s x %f y %f z %f result %d\n",object,x,y,z,result); 
    }
    else{
	sscanf(str,"%s%s%d",action,object,&result);
    	printf("FIND-OBJECT/GRAB %s %d\n",object,result);

   }

    return result;

}

int action_planner(float px, float py, float theta, Actions *plan, int num_pl){

    static int mini_sm=1;
    static char object_name[200];
    static int init_flg=1;
    std::string result;
    static int i=0,j=0,k=0,l;
    char str[300];
    char action[50];
    char name_plan[50];
    char ROS_System[30];
    char fact[60];
    char room[30];
    char zone[30];
    static float x,y,z=0.0;
    static char arm[30];
    static char object[100];
    static float distance=1.0;
    static float angle=0.0;
    static int num_plans=0;
    static int num_planes[100];
    int num_id=0;
    int num_plan_actual=0;
    int num_actions=0;
    int dummy,d;
    int flg_clp=0;

    ros::NodeHandle n;

    SimuladorRepresentation::setNodeHandle(&n);


    if(init_flg==1){

        // It starts the communication with the Clips node
        start_clips_node_action_planner();
        init_flg=0;
        //strcpy(arm,"manipulator");

    }


    // flg_clp=0;
    while(flg_clp == 0){
        SimuladorRepresentation::strQueryKDB("(assert (alive clips))", result, 10000);
        sscanf(result.c_str(),"%s %s %d",ROS_System,action,&flg_clp); 
    }

    sprintf(str,"(assert (get-num-plans-total))");
    printf("\nSend fact %s\n",str);
    SimuladorRepresentation::strQueryKDB(str, result, 10000);
    printf("\nCLIPS answer # plans: %d %s\n",i,result.c_str());
    sscanf(result.c_str(),"%s %s",ROS_System,action);
    printf("ROS_System %s action %s \n",ROS_System,action);
    sscanf(result.c_str(),"%s %s %s %d %d",ROS_System,action,name_plan,&num_plan_actual,&num_actions);
    printf("ROS_System %s action %s name_plan %s num_plan_actual %d num_actions %d\n",ROS_System,action,name_plan,num_plan_actual,num_actions);

    if(strcmp(action,"num_plans-total")==0){

	   sscanf(result.c_str(),"%s %s %s %d %d",ROS_System,action,name_plan,&num_plan_actual,&num_actions);

	   printf("num. actions %d\n",num_actions);

	   for(i=num_pl;i < num_actions+num_pl;i++){

		sprintf(str,"(assert (get-num-plans-number %d))",i);
       		printf("\nSend fact %s\n",str);
       		SimuladorRepresentation::strQueryKDB(str, result, 10000);

       		printf("\nCLIPS answer: %d %s\n",i,result.c_str());
	 	num_id=0;
		num_plans=0;
	   	sscanf(result.c_str(),"%s %s %d %d",ROS_System,action,&num_id,&num_plans);
		num_planes[i]=num_plans;	
		printf("num_id %d num_plans %d\n",num_id,num_planes[num_id]);
		plan->num[i]=num_planes[i];


		for(k=1; k<= num_planes[i];k++){
       			sprintf(str,"(assert (step %d %d ))",num_id,k);
       			printf("\nSend fact %s\n",str);
       			SimuladorRepresentation::strQueryKDB(str, result, 10000);
       			printf("\nPLAN received: %d %d %s\n",num_id,k,result.c_str());
			strcpy(plan->action_plan[i][k],result.c_str());
		}

		for(k=1; k<= num_planes[i];k++){
			printf("Final plan received: %d %s\n",k,plan->action_plan[i][k]);
		}
           }

    }

   return num_actions;

}

// It notifies to the action planner in CLIPS that action plan number was executed
void send_clips(int num){

 char str[300];
 std::string result;

 sprintf(str,"(assert (executed %d ))",num);
 SimuladorRepresentation::strQueryKDB(str, result, 10000);
}


int wait_answer_service(int *num_no_exe,int *plan_no_executed,int i,int *plan_no_executed_id, int k, char *exe_action, char *object){

 int count=0;
 char answer[500];
 int result;


 while(flg_msg == 0){
    ros::spinOnce();
    sleep(LIMIT_EXE_TIME_FIND_OBJECT);
    ros::spinOnce();
    count++;
    if(count > INTENTS_FIND_OBJECT+1){
        flg_msg = 1;
            printf("ACTION %s could not be executed\n",exe_action);
            *num_no_exe++;
            plan_no_executed[*num_no_exe]=i;
            plan_no_executed_id[*num_no_exe]=k;

    }
    else{
        //if(flg_msg == 0) result=send_grab_drop(exe_action,object,answer);
        flg_msg=1;
    }

 }

 if(count < INTENTS_FIND_OBJECT){
       	printf("ACTION %s was executed\n",exe_action);
 }
 
 return result;

}

void paramCallback(const simulator::Parameters::ConstPtr& paramss)
{
    params_act.robot_x             = paramss->robot_x   ;
    params_act.robot_y             = paramss->robot_y   ;
    params_act.robot_theta         = paramss->robot_theta   ;
    params_act.robot_radio         = paramss->robot_radio   ;
    params_act.robot_max_advance   = paramss->robot_max_advance   ;
    params_act.robot_turn_angle    = paramss->robot_turn_angle   ;
    params_act.laser_num_sensors   = paramss->laser_num_sensors   ;
    params_act.laser_origin        = paramss->laser_origin         ;
    params_act.laser_range         = paramss->laser_range   ;
    params_act.laser_value         = paramss->laser_value   ;
    strcpy(params_act.world_name ,paramss -> world_name.c_str());
    params_act.noise               = paramss->noise   ;
    params_act.run                 = paramss->run   ;
    params_act.light_x             = paramss->light_x;
    params_act.light_y             = paramss->light_y;
    params_act.behavior            = paramss->behavior;
    params_act.steps               = paramss->steps;
    params_act.useRealRobot        = paramss->useRealRobot;
    params_act.useLidar            = paramss->useLidar;
    params_act.useSArray           = paramss->useSArray;

    //printf("Callback params_act.run %d\n",params_act.run);

}


