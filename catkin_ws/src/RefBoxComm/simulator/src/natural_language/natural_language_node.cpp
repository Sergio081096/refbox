/***********************************************
*                                              *
*      natural_language_node.cpp               *
*                                              *
*      Jesus Savage                            *
*                                              *
*              Bio-Robotics Laboratory         *
*              UNAM, 12-12-2022                *
*                                              *
*                                              *
************************************************/

#include "ros/ros.h"
#include <iostream>
#include <vector>
#include <ctime>
#include <map>
#include <sstream>
#include <string>
#include "../simrep/SimuladorRepresentation.h"
#include "simulator/NaturalLanguage.h"


// It starts the communication with the CLIPS node
int start_clips(){

	bool init_kdb = false;
 	std::string file;
 	std::string result;

 	std::cout << "Starting CLIPS" << std::endl;

 	//This functions loads initial facts and rules from a file
 	// The first parameter is a file that contains the names of CLIPS files *.clp
 	// The second parameter indicates with false do not start executing the loaded files
 	// The third parameter is a timeout
 	//file = "/src/expert_system/oracle.dat";
	// file = "/src/action_planner/ViRBot_Cubes_ROS/objects_deftemplates.dat";
 	file = "/src/action_planner/ViRBot_Cubes_ROS/ROS_virbot.dat";
 	init_kdb = SimuladorRepresentation::initKDB(file, false, 2000);
 	if(!init_kdb){
    	std::cout << "CLIPS error file not found: " << file  << std::endl;
        return 0;
 	}


 	//Function to RESET CLIPS
 	SimuladorRepresentation::resetCLIPS(true);

 	//Function to print facts 
 	SimuladorRepresentation::factCLIPS(true);

 	//Function to print the loaded rules' names
 	SimuladorRepresentation::ruleCLIPS(true);

 	//Function to start running Clips
 	SimuladorRepresentation::runCLIPS(true);

 	//Function to asserting a fact to the clips node to check if Clips is alive
 	SimuladorRepresentation::strQueryKDB("(assert (alive clips))", result, 10000);

 	std::cout << "CLIPS answer: " << result << std::endl;

	return 1;

}

int i=1;
void callback_refbox_msg(const std_msgs::String::ConstPtr& refbox_msg){
	 
	 std::string result_str;
	 char str[5000];
	 sprintf(str,"(assert (%s))",refbox_msg->data.c_str());
	 printf("\nSend fact %d %s\n",i, str);
         SimuladorRepresentation::strQueryKDB(str, result_str, 10000);
		 printf("\nCLIPS answer: %d %s\n",i,result_str.c_str());
		i++;
}

int main(int argc ,char **argv){
	int dummy;
	char message[300];
	//char str[500];
 	//int i=1;
 
 	// ROS directives
 	// Initializes Node Name
 	ros::init(argc ,argv ,"simulator_natural_language_node");
 	// Node handle declaration for communication with ROS system
 	ros::NodeHandle n;

	ros::Subscriber subRefboxOrder = n.subscribe("/refbox_msgs", 10, callback_refbox_msg);

	SimuladorRepresentation::setNodeHandle(&n);
 	ros::Rate r(60);


 	// It starts the communication with the Clips node
 	start_clips();

 	while(true){

		ros::spinOnce();
		r.sleep();
/*
 	printf("\n ************* Natural Language Node ***************************\n");
 	printf("The commands are send to the Action Planner CLIPS node\n");
 	printf("\nRings\n");
 	printf("rings { ring_color: RING_ORANGE raw_material: 2 }\n");
 	printf("rings { ring_color: RING_BLUE raw_material: 1 }\n");

 	printf("\nBase station\n");
 	printf("machines { name: \"C-BS\" type: \"BS\" state: \"IDLE\" team_color: CYAN 5: 222 6: 221 }\n");
 	printf("machines { name: \"C-BS\" type: \"BS\" state: \"IDLE\" team_color: CYAN zone: M_Z33 rotation: 180 5: 222 6: 221 }\n");

 	printf("\nCap station\n");
 	printf("machines { name: \"C-CS1\" type: \"CS\" state: \"IDLE\" team_color: CYAN 5: 102 6: 101 }\n");
 	printf("machines { name: \"C-CS1\" type: \"CS\" state: \"IDLE\" team_color: CYAN zone: M_Z47 rotation: 0 5: 202 6: 201 }\n");

 	printf("\nRing station\n");
 	printf("machines { name: \"C-RS2\" type: \"RS\" state: \"IDLE\" team_color: CYAN ring_colors: RING_BLUE ring_colors: RING_YELLOW 5: 114 6: 113 }\n");
 	printf("machines { name: \"C-RS2\" type: \"RS\" state: \"IDLE\" team_color: CYAN zone: C_Z13 rotation: 270 ring_colors: RING_BLUE ring_colors: RING_YELLOW 5: 214 6: 213 }\n");

 	printf("\nDelivery station\n");
 	printf("machines { name: \"C-DS\" type: \"DS\" state: \"IDLE\" team_color: CYAN 5: 232 6: 231 }\n");
 	printf("machines { name: \"C-DS\" type: \"DS\" state: \"IDLE\" team_color: CYAN zone: M_Z64 rotation: 90 5: 232 6: 231 }\n");

 	printf("\nOrders\n");
 	printf("orders { id: 3 complexity: C0 base_color: BASE_SILVER cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 253 delivery_period_end: 420 delivery_gate: 2 competitive: false }\n");
 	printf("orders { id: 1 complexity: C1 base_color: BASE_BLACK ring_colors: RING_GREEN cap_color: CAP_BLACK quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 0 delivery_period_end: 1200 delivery_gate: 3 competitive: false }\n");
 	printf("orders { id: 2 complexity: C2 base_color: BASE_SILVER ring_colors: RING_GREEN ring_colors: RING_ORANGE cap_color: CAP_BLACK quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 0 delivery_period_end: 1200 delivery_gate: 3 competitive: false }\n");

*/
/*
std::string result_str;
	 printf("\n-> ");
   	 dummy=scanf("%[^\n]%*c",message);
	 sprintf(str,"(assert (%s))",message);
	 i++;
	 printf("\nSend fact %d %s\n",i,str);
         SimuladorRepresentation::strQueryKDB(str, result_str, 10000);
         //printf("\nCLIPS answer: %d %s\n",i,result_str.c_str());
		 */

 	}
}
