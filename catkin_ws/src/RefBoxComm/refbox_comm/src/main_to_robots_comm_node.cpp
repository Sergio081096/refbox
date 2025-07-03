#include <ros/ros.h>

#include <signal.h>

#include<arpa/inet.h> 
#include <thread>

#include "simulator/SinglePlan.h"

//Biblioteca para tokenizar
#include <boost/algorithm/string.hpp>
#include <boost/algorithm/string/split.hpp>	

#define TCPPORT 9002
using namespace std;
//int total_instructions = 24;//TODO CHANGE

vector<vector<std::string>> plans[3];
/*
vector<std::string> debug_instructions_1 = {
    "goto CS M_Z47 0 platform",
    "find CAP_GREY",
    "take CAP_GREY",
    "move entrance",
    "drop CAP_GREY",
    "ask take CAP_GREY",
    "move output",
    "find base_translucid",
    "take base_translucid",
    "move platform",
    "drop base_translucid",
    "goto BS M_Z33 180 output",
    "ask base BASE_SILVER",
    "find BASE_SILVER",
    "take BASE_SILVER",
    "goto CS M_Z47 0 entrance",
    "drop BASE_SILVER",
    "ask put cap",
    "move output",
    "find BASE_SILVER",
    "take BASE_SILVER",
    "goto DS M_Z64 90 entrance",
    "drop BASE_SILVER",
    "ask moveto 2"
    };

vector<std::string> debug_instructions_2 = {
    "goto CS M_Z45 0 platform",
    "find CAP_BLACK",
    "take CAP_BLACK",
    "move entrance",
    "drop CAP_BLACK",
    "ask take CAP_BLACK",
    "move output",
    "find base_translucid",
    "take base_translucid",
    "move platform",
    "drop base_translucid",
    "goto BS C_Z53 180 output",
    "ask base BASE_RED",
    "find BASE_RED",
    "take BASE_RED",
    "goto CS C_Z47 0 entrance",
    "drop BASE_RED",
    "ask put cap",
    "move output",
    "find BASE_RED",
    "take BASE_RED",
    "goto DS M_Z22 90 entrance",
    "drop BASE_RED",
    "ask moveto 3"
    };

    vector<vector<std::string>> debug_vector;*/

ros::Subscriber plan_sub;

void planCallback(const simulator::SinglePlan::ConstPtr& plan_msg){
     
    std::cout << "\nplan received, size " << plan_msg->plan_steps.size() << std::endl;
/*
    for(int i = 0; i < plan_msg->plan_steps.size(); i++){
        std::cout << "plan step " << plan_msg->plan_steps[i] << std::endl;
    }
*/
     std::vector<std::string> tokens;
     vector<std::string> temp_plan;
     std::string instruction;

     tokens.clear();
     int robot_plan = -1;

     for(int i=0; i < plan_msg->plan_steps.size(); i++){
        instruction = plan_msg->plan_steps[i];

        std::cout << " plan step " << instruction << "-oo" << std::endl;

        boost::algorithm::split(tokens, instruction, boost::algorithm::is_any_of(" "));
        std::string temp_string = "";

        if(tokens[3] == "Festino"){robot_plan=0;}else if(tokens[3] == "Festina"){robot_plan=1;}else if(tokens[3] == "Festine"){robot_plan=2;}

        for(int j = 4; j < tokens.size(); j++){
            //temp_plan.push_back(tokens[j]);
            temp_string = temp_string + tokens[j] + " ";
        }
        temp_plan.push_back(temp_string);
     }

    switch (robot_plan){
    case 0:
        std::cout << "plan assigned to Festino" << std::endl;
        break;
        case 1:
        std::cout << "plan assigned to Festina" << std::endl;
        break;
            case 2:
        std::cout << "plan assigned to Festine" << std::endl;
        break;
    default:
        break;
    }

    //std::cout << "segmentation fault 0?" << std::endl;
    plans[robot_plan].push_back(temp_plan);
    //std::cout << "segmentation fault 1?" << std::endl;

    for(int i=0; i<plan_msg->plan_steps.size(); i++){
        std::cout << temp_plan.at(i) << std::endl;
     }
}

std::thread robot_connection_threads[3];



void single_robot_communication(int robot_no, int client_socket){
    std::cout << "\n\nattending robot" << std::endl;
    std::cout << " no- " << robot_no << "\n\n"<< std::endl;

    unsigned int read_size;
    unsigned int write_size;
    unsigned char buffer;

    int current_plan = -1;
    int instruction_counter = 0;

    string tmp_str = "";

    int debug_int = 0;

    while(true){

//std::cout << "plans size " << plans[robot_no].size() << " current plan " << current_plan << std::endl;
std::cout << " waiting client " << std::endl;
        read_size = recv(client_socket , &buffer , sizeof(unsigned char), 0);

        std::ostringstream ss;
        // std::cout << "msg received-<" << buffer << std::endl;
        /*
        n - next instruction
         */

        tmp_str = "";

        switch (buffer){
        case 'n':
/*
                    ss << "hola " << debug_int << "keh?" << '\0';
                    std::cout << " string to send " << ss.str() << std::endl;
                    write_size = write(client_socket, ss.str().c_str(), ss.str().size());
                    std::cout << " deb_int val pre " << debug_int << std::endl;
                    debug_int++;
                    std::cout << " deb_int val post " << debug_int << std::endl;*/

            if(plans[robot_no].size() == 0){
                //std::cout << "cero plans" << std::endl;
                ss << "NoPlanAssigned" << '\0';

                write_size = write(client_socket, ss.str().c_str(), ss.str().size());

                ss.flush();

                break;
            } else {
                if(current_plan == -1){//no plan assigned yet
                    current_plan = 0;//already has at least 1 plan
                    //std::cout << "first plan" << std::endl;
                }

                //std::cout << "instruction counter:" << instruction_counter << " current plan " << current_plan << std::endl;

                if(instruction_counter < plans[robot_no].at(current_plan).size()){
                    //std::cout << "single instruction" << std::endl;

                    tmp_str = plans[robot_no].at(current_plan).at(instruction_counter);
        
                    ss << tmp_str << '\0';
                    write_size = write(client_socket, ss.str().c_str(), ss.str().size());
                    ss.flush();

                    instruction_counter++;
                } else {
                    //std::cout << "plans size " << plans[robot_no].size() << " current plan " << current_plan << std::endl;

                    if(plans[robot_no].size() > (current_plan+1)){
                        //std::cout << "next plan" << std::endl;
                        current_plan++;
                        instruction_counter = 0;
                        ss << "PlanFinished" << '\0';
                        write_size = write(client_socket, ss.str().c_str(), ss.str().size());
                        ss.flush();
                        //std::cout << "instruction counter:" << instruction_counter << " current plan " << current_plan << std::endl;
                    } else {
                        //std::cout << "No next plan" << std::endl;
                        ss << "NoPlanAssigned" << '\0';
                        write_size = write(client_socket, ss.str().c_str(), ss.str().size());
                        ss.flush();
                    }

                }
            }
            /*
            if(instruction_counter < plans_size[plan_assigned[robot_no]]){
                //tmp_str = plans[plan_assigned[robot_no]][instruction_counter]; //debug_instructions_festino[instruction_counter];
                //string instruction = tmp_str.substr(8, tmp_str.size());

                instruction_counter++;
                ROS_INFO_STREAM("Single_instruction:" << tmp_str << ":");

                ss << tmp_str;

                write_size = write(client_socket, ss.str().c_str(), ss.str().size());
            } else {
                write_size = write(client_socket, "done", 4);
            }*/
            break;
        
        default:
            break;
        }
        /*
        //read_size = recv(client_socket , &buffer , sizeof(unsigned char), 0);
        read_size = read(client_socket, buffer, 3);
        if(instruction_counter < total_instructions){
            string tmp_str = "";

            if(robot_no == 0){
                tmp_str = debug_instructions_festino[instruction_counter];
            }
            if(robot_no == 1){
                tmp_str = debug_instructions_festina[instruction_counter];
            }
            instruction_counter++;

            string instruction = tmp_str.substr(8, tmp_str.size());
            ROS_INFO_STREAM("Single_instruction:" << instruction << ":");

            std::ostringstream ss;
            ss << instruction;

            write_size = write(client_socket, ss.str().c_str(), ss.str().size());


        } else {
            write_size = write(client_socket, "done", 4);
        }
*/

    /*
        std::cout << "message from robot " << robot_no << " is: " << buffer << std::endl;

        std::ostringstream oss;

        if(buffer[0] == 'm' && buffer[1] == 's'){
            oss << "navigate_to_kitchen";
            write_size = write(client_socket, oss.str().c_str(), oss.str().size());
        } else {
            oss << "hello robot no " << robot_no << " Im the main server ";
            write_size = write(client_socket, oss.str().c_str(), oss.str().size());
        }
    */



    }
}

int server_socket_desc;
std::vector<int> clients;

void robots_connection(){

    int c;
    struct sockaddr_in server, client;
    server_socket_desc = socket(AF_INET , SOCK_STREAM , 0);
    if (server_socket_desc == -1){
        printf("Could not create TCP socket");
    }

    //Prepare the sockaddr_in structure
    server.sin_family = AF_INET;
    server.sin_addr.s_addr = INADDR_ANY;//When INADDR_ANY is specified in the bind call, the socket will be bound to all local interfaces.
    server.sin_port = htons( TCPPORT );


    if( bind(server_socket_desc,(struct sockaddr *)&server , sizeof(server)) < 0){
        //print the error message
        perror("bind TCP failed. Error");
        //return -1;
        return;
    }

    puts("bind TCP done");
    listen(server_socket_desc , 3);

    c = sizeof(struct sockaddr_in);

    int robots_connected = 0;

    while(true){
        ROS_INFO_STREAM("\n\n\n\n\n------         Waiting for incoming connections TCP TALKING TO ROBOTS      ---------\n\n\n\n\n");
        clients.push_back(accept(server_socket_desc, (struct sockaddr *)&client, (socklen_t*)&c));
        if (clients[robots_connected] < 0){
            perror("robot connection failed");
            //return -1;
            continue;
        } else {
            puts("Connection accepted");
            robot_connection_threads[robots_connected] = std::thread(single_robot_communication, robots_connected, clients[robots_connected]);
            robots_connected++;
        }
    }

    close(server_socket_desc);
}

void sig_handler(int s){
    std::cout << "closing socket" << std::endl;
        close(server_socket_desc);
        for(int i = 0; i < clients.size(); i++){
            close(clients[i]);
        }
        //printf("Caught signal %d\n",s);
        exit(1); 
}

int main(int argc, char** argv){


    signal(SIGINT, sig_handler);

/*
    struct sigaction sa;
    sa.sa_handler = sig_handler;
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = SA_RESTART; // Restart functions if interrupted by handler
    if (sigaction(SIGINT, &sa, NULL) == -1)
        // Handle error
*/
/*
    std::cout << "start" << std::endl;
    //if(plans_robot_1[0] == nullptr){
std::cout << plans_robot_1[0].size() << std::endl;
    //}
    //if(plans_robot_1[1] == nullptr){
std::cout << plans_robot_1[1].size() << std::endl;
    //}
std::cout << "end" << std::endl;*/
    //ros::init(argc, argv, "main_to_robots_comm_node");
    ros::init(argc, argv, "main_to_robots_comm_node", ros::init_options::NoSigintHandler);
    ros::NodeHandle n;

    plan_sub = n.subscribe("/plan_msg",100, planCallback);

    //CREATE SUBSCRIBERS AND PUBLISHERS TO COMUNICATE WITH ROBOTS

    std::thread main_connection_thread = std::thread(robots_connection);

    ros::Rate r(10);
    r.sleep();
    while (ros::ok()) {
        ros::spinOnce();
        r.sleep();
    }
    return 0;
}