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
	printf("\nCLIPS answer: %d -%s\n",i,result_str.c_str());
	i++;
}

int main(int argc ,char **argv){
	int dummy;
	char message[300];
 
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
 	}
}
