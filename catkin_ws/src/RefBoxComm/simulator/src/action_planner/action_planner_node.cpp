/***********************************************
*                                              *
*      action_planner_node.cpp                 *
*                                              *
*      Jesus Savage                            *
*                                              *
*              Bio-Robotics Laboratory         *
*              UNAM, 2022                      *
*                                              *
*                                              *
************************************************/



#include "ros/ros.h"
#include "../utilities/simulator_structures.h"
#include "../simrep/SimuladorRepresentation.h"
#include "../motion_planner/motion_planner_utilities.h"
#include "action_planner.h"
#include "simulator/ActionPlannerFindObject.h"
#include "simulator/ActionPlannerManipulator.h"

#include "simulator/SinglePlan.h"

int main(int argc ,char **argv)
{
    int i,j=0,k,num_actions=0;
    int test = 1;
    movement movements;
    char path[200];
    int flg_once=1;
    int count = 1;
    Actions plan;
    std::string ss;
    char exe_action[300];
    char extra_action[300];
    char string1[300];
    char string2[500];
    char ROS_System[300];
    char object[300];
    char answer[500];
    int plan_no_executed[300];
    int plan_no_executed_id[300];
    int num_no_exe=0;
    int result=0;
    char command[100],object_res[100];
    int plan_num,id;
    std::string result_str;
    char str[300];
    char place[300];
    int success=1;
    int num_plan=1;
    char attribute[300];
    char attribute1[300];
    char attribute2[300];
    char robot_name[100];
    int dummy,d;
    char machine_type[100],machine_name[100];
    int angle;


    // ROS directives
    // Initializes Node Name
    ros::init(argc ,argv ,"simulator_action_planner_node");
    // Node handle declaration for communication with ROS system
    ros::NodeHandle n;

    ros::Publisher plan_publisher = n.advertise<simulator::SinglePlan>("/plan_msg", 1000);

    SimuladorRepresentation::setNodeHandle(&n);
    ros::Rate r(20);

   // it sets the environment's path
    strcpy(path,"./src/simulator/src/data/");
  
    params_act.behavior=10;
    params_act.run=1;


    printf("\n\n             PLANS EXECUTER %d \n________________________________\n",params_act.behavior);

    // num_actions=action_planner(params_act.robot_x, params_act.robot_y,params_act.robot_theta,&plan,num_plan);

    while( ros::ok()  )
    {
        ros::spinOnce();

        switch ( params_act.behavior) {

                case 4:
                        if(j > 1000){
                                printf(" ******* SELECTION 4 %d *******\n",j++);
                                j=0;
                        }

                        break;

                case 10:
                        printf(" ******* SELECTION %d *******\n",params_act.behavior);
                        ros::spinOnce();

                        num_actions=action_planner(params_act.robot_x, params_act.robot_y,params_act.robot_theta,&plan,num_plan);

                        printf("Num. accions %d\n",num_actions);
                        for(i=num_plan; i< num_plan + num_actions;i++){
                                printf("\nPLAN to be executed: %d\n",i);

                                std::vector<std::string> plan_str(plan.num[i]);

                                for(k=1; k<= plan.num[i];k++){
                                        printf("	Subplan: %d %d %s",i,k,plan.action_plan[i][k]);
                                        printf("plann:%s",plan.action_plan[i][k]);
                                        plan_str[k-1] = plan.action_plan[i][k];//"El plaaaNNNNNNN";//
                                }

                                simulator::SinglePlan plan_msg;
                                plan_msg.plan_steps = plan_str;
                                plan_publisher.publish(plan_msg);
                        }

                        break;

                default:
                        printf(" ******* SELECTION NO DEFINED %d *******\n",j++);
                break;
        }
   }
}
