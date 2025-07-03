#include <ros/ros.h>
#include <protobuf_comm/peer.h>

#include <refbox_protobuf_msgs/AgentTask.pb.h>
#include <refbox_protobuf_msgs/AttentionMessage.pb.h>
#include <refbox_protobuf_msgs/BeaconSignal.pb.h>
#include <refbox_protobuf_msgs/ExplorationInfo.pb.h>
#include <refbox_protobuf_msgs/GameInfo.pb.h>
#include <refbox_protobuf_msgs/GameState.pb.h>
#include <refbox_protobuf_msgs/MachineCommands.pb.h>
#include <refbox_protobuf_msgs/MachineDescription.pb.h>
#include <refbox_protobuf_msgs/MachineInfo.pb.h>
#include <refbox_protobuf_msgs/MachineInstructions.pb.h>
#include <refbox_protobuf_msgs/MachineReport.pb.h>
#include <refbox_protobuf_msgs/NavigationChallenge.pb.h>
#include <refbox_protobuf_msgs/OrderInfo.pb.h>
#include <refbox_protobuf_msgs/Pose2D.pb.h>
#include <refbox_protobuf_msgs/ProductColor.pb.h>
#include <refbox_protobuf_msgs/RingInfo.pb.h>
#include <refbox_protobuf_msgs/RobotCommands.pb.h>
#include <refbox_protobuf_msgs/RobotInfo.pb.h>
#include <refbox_protobuf_msgs/SimTimeSync.pb.h>
#include <refbox_protobuf_msgs/Team.pb.h>
#include <refbox_protobuf_msgs/Time.pb.h>
#include <refbox_protobuf_msgs/VersionInfo.pb.h>
#include <refbox_protobuf_msgs/WorkpieceInfo.pb.h>
#include <refbox_protobuf_msgs/Zone.pb.h>

#include "geometry_msgs/PoseStamped.h"
#include <tf/transform_listener.h>

#include "refbox_comm/RefboxMsg.h"

//----------------------------------NAVIGATION CHALLENGE
//Biblioteca para tokenizar
#include <boost/algorithm/string.hpp>
#include <boost/algorithm/string/split.hpp>

#include <string>
#include <map>
#include "std_msgs/String.h"
//---------------------------------NAVIGATION CHALLENGE

#include <chrono>
#include <iomanip>
#include <sstream>
#include <memory>
#include <thread>


/*
Private Messages
    Machine Info
    Ring Info
    Machine Report

Public Messages
    Order Info
*/

//ROBOCUP
//#define HOST "172.26.255.255"
//#define HOST "192.168.1.255"
#define HOST "localhost"

//#define HOST "172.23.134.255"
#define TEAM_COLOR "MAGENTA"
//#define TEAM_COLOR "CYAN"
#define TEAM_NAME "Pumas"
//#define ROBOT_NAME "Festino"
#define CRYPTO_KEY "randomkey"
#define PUBLIC_PORT_S 4445
#define PUBLIC_PORT_R 4444
#define CYAN_PORT_S 4446
#define CYAN_PORT_R 4441
#define MAGENTA_PORT_S 4447
#define MAGENTA_PORT_R 4442

#define TCPPORT 9002

#include <iostream>
#include <typeinfo>

using namespace std;
using namespace protobuf_comm;

/*
ros::Publisher pub_orders;
ros::Publisher pub_machines;
ros::Publisher pub_rings;
*/
/*
ros::Publisher pub_order;
ros::Publisher pub_machine;
ros::Publisher pub_ring;
*/
ros::Publisher pub_refbox;
ros::Publisher pub_send_plan_fake_refbox;
//bool debug_send_msg = true;

class Handler 
{

    using AgentTask = llsf_msgs::AgentTask;
    using WorkpieceDescription = llsf_msgs::WorkpieceDescription;
    
    using AttentionMessage = llsf_msgs::AttentionMessage;
    
    using BeaconSignal = llsf_msgs::BeaconSignal;

    using ExplorationSignal = llsf_msgs::ExplorationSignal;
    using ExplorationZone = llsf_msgs::ExplorationZone;
    using ExplorationInfo = llsf_msgs::ExplorationInfo;
    

    using GameInfo = llsf_msgs::GameInfo;
    using SetTeamName = llsf_msgs::SetTeamName;

    using GameState = llsf_msgs::GameState;
    using SetGameState = llsf_msgs::SetGameState;
    using SetGamePhase = llsf_msgs::SetGamePhase;
    using RandomizeField = llsf_msgs::RandomizeField;

    using SetMachineState = llsf_msgs::SetMachineState;
    using MachineAddBase = llsf_msgs::MachineAddBase;
    using SetMachineLights = llsf_msgs::SetMachineLights;

    //using MachineDescription = llsf_msgs::MachineDescription;

    using LightSpec = llsf_msgs::LightSpec;
    using ShelfSlotInfo = llsf_msgs::ShelfSlotInfo;
    using Machine = llsf_msgs::Machine;
    using MachineInfo = llsf_msgs::MachineInfo;

    using PrepareInstructionBS = llsf_msgs::PrepareInstructionBS;
    using PrepareInstructionDS = llsf_msgs::PrepareInstructionDS;
    using PrepareInstructionSS = llsf_msgs::PrepareInstructionSS;
    using PrepareInstructionRS = llsf_msgs::PrepareInstructionRS;
    using PrepareInstructionCS = llsf_msgs::PrepareInstructionCS;
    using PrepareMachine = llsf_msgs::PrepareMachine;
    using ResetMachine = llsf_msgs::ResetMachine;

    using MachineReportEntry = llsf_msgs::MachineReportEntry;
    using MachineReport = llsf_msgs::MachineReport;
    using MachineReportInfo = llsf_msgs::MachineReportInfo;
    using MachineTypeFeedback = llsf_msgs::MachineTypeFeedback;

    using Route = llsf_msgs::Route;
    using NavigationRoutes = llsf_msgs::NavigationRoutes;

    using UnconfirmedDelivery = llsf_msgs::UnconfirmedDelivery;
    using Order = llsf_msgs::Order;
    using OrderInfo = llsf_msgs::OrderInfo;
    using SetOrderDelivered = llsf_msgs::SetOrderDelivered;
    using ConfirmDelivery = llsf_msgs::ConfirmDelivery;

    using Pose2D = llsf_msgs::Pose2D;

    //using ProductColor = llsf_msgs::ProductColor;

    using Ring = llsf_msgs::Ring;
    using RingInfo = llsf_msgs::RingInfo;

    using SetRobotMaintenance = llsf_msgs::SetRobotMaintenance;

    using Robot = llsf_msgs::Robot;
    using RobotInfo = llsf_msgs::RobotInfo;

    using SimTimeSync = llsf_msgs::SimTimeSync;

    using Team = llsf_msgs::Team;

    using Time = llsf_msgs::Time;

    using VersionInfo = llsf_msgs::VersionInfo;

    using WorkPiece = llsf_msgs::Workpiece;
    using WorkpieceInfo = llsf_msgs::WorkpieceInfo;
    using WorkpieceAddRing = llsf_msgs::WorkpieceAddRing;

    using Zone = llsf_msgs::Zone;

    private:
        std::string m_host;
        int m_port_s;
        int m_port_r;
        //int m_recv_port;

        unsigned long int m_sequence_nr_;
        MessageRegister *m_mr;
        
        std::shared_ptr<ProtobufBroadcastPeer> m_public_peer;
        std::shared_ptr<ProtobufBroadcastPeer> m_private_peer;
        bool crypto_setup= false;

        std::string m_team_name;
        bool m_is_cyan = false;
        std::thread m_beacon_thread;
        bool m_running;

        bool orders_sent[11] = { false };
        bool ring_info_sent = false;
        bool can_send_machines = true;
        bool machines_rotations_sent = false;
        bool can_send_orders = false;

//--------------------------------NAVIGATION CHALLENGE
        std::map<Zone, std::string> zones_map;
        std::map<std::string, Zone> zones_map_str;
        //ros::Publisher pub_zone;
//--------------------------------NAVIGATION CHALLENGE
    public:
        Handler(std::string host, int port_s, int port_r)
            : m_host(host), m_port_s(port_s)
            , m_port_r(port_r)
            , m_mr(new MessageRegister()) 
    {

        //--------------------------------NAVIGATION CHALLENGE
        zones_map[Zone::C_Z11] = "C_Z11";
        zones_map[Zone::C_Z12] = "C_Z12";
        zones_map[Zone::C_Z13] = "C_Z13";
        zones_map[Zone::C_Z14] = "C_Z14";
        zones_map[Zone::C_Z15] = "C_Z15";
        zones_map[Zone::C_Z16] = "C_Z16";
        zones_map[Zone::C_Z17] = "C_Z17";
        zones_map[Zone::C_Z18] = "C_Z18";

        zones_map[Zone::C_Z21] = "C_Z21";
        zones_map[Zone::C_Z22] = "C_Z22";
        zones_map[Zone::C_Z23] = "C_Z23";
        zones_map[Zone::C_Z24] = "C_Z24";
        zones_map[Zone::C_Z25] = "C_Z25";
        zones_map[Zone::C_Z26] = "C_Z26";
        zones_map[Zone::C_Z27] = "C_Z27";
        zones_map[Zone::C_Z28] = "C_Z28";

        zones_map[Zone::C_Z31] = "C_Z31";
        zones_map[Zone::C_Z32] = "C_Z32";
        zones_map[Zone::C_Z33] = "C_Z33";
        zones_map[Zone::C_Z34] = "C_Z34";
        zones_map[Zone::C_Z35] = "C_Z35";
        zones_map[Zone::C_Z36] = "C_Z36";
        zones_map[Zone::C_Z37] = "C_Z37";
        zones_map[Zone::C_Z38] = "C_Z38";

        zones_map[Zone::C_Z41] = "C_Z41";
        zones_map[Zone::C_Z42] = "C_Z42";
        zones_map[Zone::C_Z43] = "C_Z43";
        zones_map[Zone::C_Z44] = "C_Z44";
        zones_map[Zone::C_Z45] = "C_Z45";
        zones_map[Zone::C_Z46] = "C_Z46";
        zones_map[Zone::C_Z47] = "C_Z47";
        zones_map[Zone::C_Z48] = "C_Z48";

        zones_map[Zone::C_Z52] = "C_Z52";
        zones_map[Zone::C_Z53] = "C_Z53";
        zones_map[Zone::C_Z54] = "C_Z54";
        zones_map[Zone::C_Z55] = "C_Z55";
        zones_map[Zone::C_Z56] = "C_Z56";
        zones_map[Zone::C_Z57] = "C_Z57";
        zones_map[Zone::C_Z58] = "C_Z58";

        zones_map[Zone::C_Z62] = "C_Z62";
        zones_map[Zone::C_Z63] = "C_Z63";
        zones_map[Zone::C_Z64] = "C_Z64";
        zones_map[Zone::C_Z65] = "C_Z65";
        zones_map[Zone::C_Z66] = "C_Z66";
        zones_map[Zone::C_Z67] = "C_Z67";
        zones_map[Zone::C_Z68] = "C_Z68";

        zones_map[Zone::C_Z72] = "C_Z72";
        zones_map[Zone::C_Z73] = "C_Z73";
        zones_map[Zone::C_Z74] = "C_Z74";
        zones_map[Zone::C_Z75] = "C_Z75";
        zones_map[Zone::C_Z76] = "C_Z76";
        zones_map[Zone::C_Z77] = "C_Z77";
        zones_map[Zone::C_Z78] = "C_Z78";



        zones_map[Zone::M_Z11] = "M_Z11";
        zones_map[Zone::M_Z12] = "M_Z12";
        zones_map[Zone::M_Z13] = "M_Z13";
        zones_map[Zone::M_Z14] = "M_Z14";
        zones_map[Zone::M_Z15] = "M_Z15";
        zones_map[Zone::M_Z16] = "M_Z16";
        zones_map[Zone::M_Z17] = "M_Z17";
        zones_map[Zone::M_Z18] = "M_Z18";

        zones_map[Zone::M_Z21] = "M_Z21";
        zones_map[Zone::M_Z22] = "M_Z22";
        zones_map[Zone::M_Z23] = "M_Z23";
        zones_map[Zone::M_Z24] = "M_Z24";
        zones_map[Zone::M_Z25] = "M_Z25";
        zones_map[Zone::M_Z26] = "M_Z26";
        zones_map[Zone::M_Z27] = "M_Z27";
        zones_map[Zone::M_Z28] = "M_Z28";

        zones_map[Zone::M_Z31] = "M_Z31";
        zones_map[Zone::M_Z32] = "M_Z32";
        zones_map[Zone::M_Z33] = "M_Z33";
        zones_map[Zone::M_Z34] = "M_Z34";
        zones_map[Zone::M_Z35] = "M_Z35";
        zones_map[Zone::M_Z36] = "M_Z36";
        zones_map[Zone::M_Z37] = "M_Z37";
        zones_map[Zone::M_Z38] = "M_Z38";

        zones_map[Zone::M_Z41] = "M_Z41";
        zones_map[Zone::M_Z42] = "M_Z42";
        zones_map[Zone::M_Z43] = "M_Z43";
        zones_map[Zone::M_Z44] = "M_Z44";
        zones_map[Zone::M_Z45] = "M_Z45";
        zones_map[Zone::M_Z46] = "M_Z46";
        zones_map[Zone::M_Z47] = "M_Z47";
        zones_map[Zone::M_Z48] = "M_Z48";

        zones_map[Zone::M_Z52] = "M_Z52";
        zones_map[Zone::M_Z53] = "M_Z53";
        zones_map[Zone::M_Z54] = "M_Z54";
        zones_map[Zone::M_Z55] = "M_Z55";
        zones_map[Zone::M_Z56] = "M_Z56";
        zones_map[Zone::M_Z57] = "M_Z57";
        zones_map[Zone::M_Z58] = "M_Z58";

        zones_map[Zone::M_Z62] = "M_Z62";
        zones_map[Zone::M_Z63] = "M_Z63";
        zones_map[Zone::M_Z64] = "M_Z64";
        zones_map[Zone::M_Z65] = "M_Z65";
        zones_map[Zone::M_Z66] = "M_Z66";
        zones_map[Zone::M_Z67] = "M_Z67";
        zones_map[Zone::M_Z68] = "M_Z68";

        zones_map[Zone::M_Z72] = "M_Z72";
        zones_map[Zone::M_Z73] = "M_Z73";
        zones_map[Zone::M_Z74] = "M_Z74";
        zones_map[Zone::M_Z75] = "M_Z75";
        zones_map[Zone::M_Z76] = "M_Z76";
        zones_map[Zone::M_Z77] = "M_Z77";
        zones_map[Zone::M_Z78] = "M_Z78";
        //--------------------------------NAVIGATION CHALLENGE

        //--------------------------------EXPLORATION CHALLENGE
        zones_map_str["C_Z11"] = Zone::C_Z11;
        zones_map_str["C_Z12"] = Zone::C_Z12;
        zones_map_str["C_Z13"] = Zone::C_Z13;
        zones_map_str["C_Z14"] = Zone::C_Z14;
        zones_map_str["C_Z15"] = Zone::C_Z15;
        zones_map_str["C_Z16"] = Zone::C_Z16;
        zones_map_str["C_Z17"] = Zone::C_Z17;
        zones_map_str["C_Z18"] = Zone::C_Z18;

        zones_map_str["C_Z21"] = Zone::C_Z21;
        zones_map_str["C_Z22"] = Zone::C_Z22;
        zones_map_str["C_Z23"] = Zone::C_Z23;
        zones_map_str["C_Z24"] = Zone::C_Z24;
        zones_map_str["C_Z25"] = Zone::C_Z25;
        zones_map_str["C_Z26"] = Zone::C_Z26;
        zones_map_str["C_Z27"] = Zone::C_Z27;
        zones_map_str["C_Z28"] = Zone::C_Z28;

        zones_map_str["C_Z31"] = Zone::C_Z31;
        zones_map_str["C_Z32"] = Zone::C_Z32;
        zones_map_str["C_Z33"] = Zone::C_Z33;
        zones_map_str["C_Z34"] = Zone::C_Z34;
        zones_map_str["C_Z35"] = Zone::C_Z35;
        zones_map_str["C_Z36"] = Zone::C_Z36;
        zones_map_str["C_Z37"] = Zone::C_Z37;
        zones_map_str["C_Z38"] = Zone::C_Z38;

        zones_map_str["C_Z41"] = Zone::C_Z41;
        zones_map_str["C_Z42"] = Zone::C_Z42;
        zones_map_str["C_Z43"] = Zone::C_Z43;
        zones_map_str["C_Z44"] = Zone::C_Z44;
        zones_map_str["C_Z45"] = Zone::C_Z45;
        zones_map_str["C_Z46"] = Zone::C_Z46;
        zones_map_str["C_Z47"] = Zone::C_Z47;
        zones_map_str["C_Z48"] = Zone::C_Z48;

        zones_map_str["C_Z52"] = Zone::C_Z52;
        zones_map_str["C_Z53"] = Zone::C_Z53;
        zones_map_str["C_Z54"] = Zone::C_Z54;
        zones_map_str["C_Z55"] = Zone::C_Z55;
        zones_map_str["C_Z56"] = Zone::C_Z56;
        zones_map_str["C_Z57"] = Zone::C_Z57;
        zones_map_str["C_Z58"] = Zone::C_Z58;

        zones_map_str["C_Z62"] = Zone::C_Z62;
        zones_map_str["C_Z63"] = Zone::C_Z63;
        zones_map_str["C_Z64"] = Zone::C_Z64;
        zones_map_str["C_Z65"] = Zone::C_Z65;
        zones_map_str["C_Z66"] = Zone::C_Z66;
        zones_map_str["C_Z67"] = Zone::C_Z67;
        zones_map_str["C_Z68"] = Zone::C_Z68;

        zones_map_str["C_Z72"] = Zone::C_Z72;
        zones_map_str["C_Z73"] = Zone::C_Z73;
        zones_map_str["C_Z74"] = Zone::C_Z74;
        zones_map_str["C_Z75"] = Zone::C_Z75;
        zones_map_str["C_Z76"] = Zone::C_Z76;
        zones_map_str["C_Z77"] = Zone::C_Z77;
        zones_map_str["C_Z78"] = Zone::C_Z78;


        zones_map_str["M_Z11"] = Zone::M_Z11;
        zones_map_str["M_Z12"] = Zone::M_Z12;
        zones_map_str["M_Z13"] = Zone::M_Z13;
        zones_map_str["M_Z14"] = Zone::M_Z14;
        zones_map_str["M_Z15"] = Zone::M_Z15;
        zones_map_str["M_Z16"] = Zone::M_Z16;
        zones_map_str["M_Z17"] = Zone::M_Z17;
        zones_map_str["M_Z18"] = Zone::M_Z18;

        zones_map_str["M_Z21"] = Zone::M_Z21;
        zones_map_str["M_Z22"] = Zone::M_Z22;
        zones_map_str["M_Z23"] = Zone::M_Z23;
        zones_map_str["M_Z24"] = Zone::M_Z24;
        zones_map_str["M_Z25"] = Zone::M_Z25;
        zones_map_str["M_Z26"] = Zone::M_Z26;
        zones_map_str["M_Z27"] = Zone::M_Z27;
        zones_map_str["M_Z28"] = Zone::M_Z28;

        zones_map_str["M_Z31"] = Zone::M_Z31;
        zones_map_str["M_Z32"] = Zone::M_Z32;
        zones_map_str["M_Z33"] = Zone::M_Z33;
        zones_map_str["M_Z34"] = Zone::M_Z34;
        zones_map_str["M_Z35"] = Zone::M_Z35;
        zones_map_str["M_Z36"] = Zone::M_Z36;
        zones_map_str["M_Z37"] = Zone::M_Z37;
        zones_map_str["M_Z38"] = Zone::M_Z38;

        zones_map_str["M_Z41"] = Zone::M_Z41;
        zones_map_str["M_Z42"] = Zone::M_Z42;
        zones_map_str["M_Z43"] = Zone::M_Z43;
        zones_map_str["M_Z44"] = Zone::M_Z44;
        zones_map_str["M_Z45"] = Zone::M_Z45;
        zones_map_str["M_Z46"] = Zone::M_Z46;
        zones_map_str["M_Z47"] = Zone::M_Z47;
        zones_map_str["M_Z48"] = Zone::M_Z48;

        zones_map_str["M_Z52"] = Zone::M_Z52;
        zones_map_str["M_Z53"] = Zone::M_Z53;
        zones_map_str["M_Z54"] = Zone::M_Z54;
        zones_map_str["M_Z55"] = Zone::M_Z55;
        zones_map_str["M_Z56"] = Zone::M_Z56;
        zones_map_str["M_Z57"] = Zone::M_Z57;
        zones_map_str["M_Z58"] = Zone::M_Z58;

        zones_map_str["M_Z62"] = Zone::M_Z62;
        zones_map_str["M_Z63"] = Zone::M_Z63;
        zones_map_str["M_Z64"] = Zone::M_Z64;
        zones_map_str["M_Z65"] = Zone::M_Z65;
        zones_map_str["M_Z66"] = Zone::M_Z66;
        zones_map_str["M_Z67"] = Zone::M_Z67;
        zones_map_str["M_Z68"] = Zone::M_Z68;

        zones_map_str["M_Z72"] = Zone::M_Z72;
        zones_map_str["M_Z73"] = Zone::M_Z73;
        zones_map_str["M_Z74"] = Zone::M_Z74;
        zones_map_str["M_Z75"] = Zone::M_Z75;
        zones_map_str["M_Z76"] = Zone::M_Z76;
        zones_map_str["M_Z77"] = Zone::M_Z77;
        zones_map_str["M_Z78"] = Zone::M_Z78;
        //--------------------------------EXPLORATION CHALLENGE

        ROS_INFO_STREAM("------Test print--------- Host: " << m_host << " SendPort:" << m_port_s << " RecvPort:" << m_port_r);

        m_mr->add_message_type<AgentTask>();
        m_mr->add_message_type<WorkpieceDescription>();

        m_mr->add_message_type<AttentionMessage>();

        m_mr->add_message_type<BeaconSignal>();
            
        m_mr->add_message_type<ExplorationSignal>();
        m_mr->add_message_type<ExplorationZone>();
        m_mr->add_message_type<ExplorationInfo>();
            
        m_mr->add_message_type<GameInfo>();
        m_mr->add_message_type<SetTeamName>();

        m_mr->add_message_type<GameState>();
        m_mr->add_message_type<SetGameState>();
        m_mr->add_message_type<SetGamePhase>();
        m_mr->add_message_type<RandomizeField>();

        m_mr->add_message_type<SetMachineState>();
        m_mr->add_message_type<MachineAddBase>();
        m_mr->add_message_type<SetMachineLights>();

        m_mr->add_message_type<LightSpec>();
        m_mr->add_message_type<ShelfSlotInfo>();
        m_mr->add_message_type<Machine>();
        m_mr->add_message_type<MachineInfo>();

        m_mr->add_message_type<PrepareMachine>();
        m_mr->add_message_type<ResetMachine>();

        m_mr->add_message_type<MachineReportEntry>();
        m_mr->add_message_type<MachineReport>();
        m_mr->add_message_type<MachineReportInfo>();
        m_mr->add_message_type<MachineTypeFeedback>();

        m_mr->add_message_type<NavigationRoutes>();

        m_mr->add_message_type<UnconfirmedDelivery>();
        m_mr->add_message_type<Order>();
        m_mr->add_message_type<OrderInfo>();
        m_mr->add_message_type<SetOrderDelivered>();
        m_mr->add_message_type<ConfirmDelivery>();

        m_mr->add_message_type<RingInfo>();

        m_mr->add_message_type<SetRobotMaintenance>();

        m_mr->add_message_type<Robot>();
        m_mr->add_message_type<RobotInfo>();
            
        m_mr->add_message_type<SimTimeSync>();

        m_mr->add_message_type<VersionInfo>();

        m_mr->add_message_type<WorkPiece>();
        m_mr->add_message_type<WorkpieceInfo>();
        m_mr->add_message_type<WorkpieceAddRing>();

        m_public_peer =  std::make_shared<ProtobufBroadcastPeer>(m_host, PUBLIC_PORT_S, PUBLIC_PORT_R, m_mr);
        ROS_INFO_STREAM("--Public--");
        m_public_peer->signal_received().connect(
                boost::bind(&Handler::handleRefboxMessagePublic, this, _1, _2, _3, _4));


        m_team_name = TEAM_NAME;
        m_running = true;
        m_sequence_nr_ = 0;
    }



    ~Handler() 
    {
        m_running = false;
    }


    void reportAMachine(const std_msgs::String::ConstPtr& machine_data){
        //ROS_INFO_STREAM("------A MACHINE REPORT SENT TO REFBOX--------- " << machine << " : ");
        std::shared_ptr<MachineReport> machine_report_message(new MachineReport());

        if(m_is_cyan){
            machine_report_message->set_team_color(Team::CYAN);
        } else {
            machine_report_message->set_team_color(Team::MAGENTA);
        }


        MachineReportEntry* new_machine_entry = machine_report_message->add_machines();

        std::vector<std::string> tokens;
        tokens.clear();
        boost::algorithm::split(tokens, machine_data->data, boost::algorithm::is_any_of(","));

        for(std::string token : tokens){
            ROS_INFO_STREAM("Un token: " << token);
        }

        new_machine_entry->set_name(tokens[0]);
        new_machine_entry->set_type(tokens[1]);
        new_machine_entry->set_zone(zones_map_str[tokens[2]]);
            
        if(m_private_peer != nullptr){
            ROS_INFO_STREAM("NOT NULL PTR, SENDING PRIVATE");
            m_private_peer->send(MachineReport::COMP_ID, MachineReport::MSG_TYPE, machine_report_message);
        }
    }


    /*PRIVATE MESSAGES*/
    void handleRefboxMessagePrivate(boost::asio::ip::udp::endpoint &endpoint, uint16_t comp_id, uint16_t msg_type, std::shared_ptr<google::protobuf::Message> msg)
    {
        ROS_INFO_STREAM("-------------------------------\n\n\n\n\nRecv message on private A\n\n\n\n\n------------------------------------------------------------------");
        //ROS_INFO_STREAM(""<< msg->ShortDebugString() << " typeOOOO " << msg_type);
        switch (msg_type) {
            case 502://AGENT TASK / AGENT TASK
            {
                std::shared_ptr<AgentTask> agent_task = std::dynamic_pointer_cast<AgentTask>(msg);
                ROS_INFO_STREAM("------1 AGENT TASK / AGENT TASK--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< agent_task->ShortDebugString());
                ROS_INFO_STREAM("------2 AGENT TASK / AGENT TASK--------- ");
                
                break;
            }
            case 510://AGENT TASK / Workpiece Description
            {
                std::shared_ptr<WorkpieceDescription> workpiece_description = std::dynamic_pointer_cast<WorkpieceDescription>(msg);
                ROS_INFO_STREAM("------1 AGENT TASK / Workpiece Description--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< workpiece_description->ShortDebugString());
                ROS_INFO_STREAM("------2 AGENT TASK / Workpiece Description--------- ");
                
                break;
            }
            case 2://ATTENTION MESSAGE / ATTENTION MESSAGE
            {
                std::shared_ptr<AttentionMessage> attention_message = std::dynamic_pointer_cast<AttentionMessage>(msg);
                ROS_INFO_STREAM("------1 ATTENTION MESSAGE / ATTENTION MESSAGE--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< attention_message->ShortDebugString());
                ROS_INFO_STREAM("------2 ATTENTION MESSAGE / ATTENTION MESSAGE--------- ");
                
                break;
            }
            case 1://BEACON SIGNAL
            {
                std::shared_ptr<BeaconSignal> beacon_signal = std::dynamic_pointer_cast<BeaconSignal>(msg);
                ROS_INFO_STREAM("------1 BEACON SIGNAL--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< beacon_signal->ShortDebugString());
                ROS_INFO_STREAM("------2 BEACON SIGNAL--------- ");
                
                break;
            }
            case 70://EXPLORATION INFO / Exploration Signal
            {
                std::shared_ptr<ExplorationSignal> exploration_signal = std::dynamic_pointer_cast<ExplorationSignal>(msg);
                ROS_INFO_STREAM("------1 EXPLORATION INFO  / Exploration Signal--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< exploration_signal->ShortDebugString());
                ROS_INFO_STREAM("------2 EXPLORATION INFO  / Exploration Signal--------- ");
                
                break;
            }
            case 71://EXPLORATION INFO / Exploration Zone
            {
                std::shared_ptr<ExplorationZone> exploration_zone = std::dynamic_pointer_cast<ExplorationZone>(msg);
                ROS_INFO_STREAM("------1 EXPLORATION INFO / Exploration Zone--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< exploration_zone->ShortDebugString());
                ROS_INFO_STREAM("------2 EXPLORATION INFO / Exploration Zone--------- ");
                
                break;
            }
            case 72://EXPLORATION INFO / EXPLORATION INFO
            {
                std::shared_ptr<ExplorationInfo> exploration_info = std::dynamic_pointer_cast<ExplorationInfo>(msg);
                ROS_INFO_STREAM("------1 EXPLORATION INFO / EXPLORATION INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< exploration_info->ShortDebugString());
                ROS_INFO_STREAM("------2 EXPLORATION INFO / EXPLORATION INFO--------- ");
                
                break;
            }
            case 81://GAME INFO / GAME INFO
            {
                std::shared_ptr<GameInfo> game_info = std::dynamic_pointer_cast<GameInfo>(msg);
                ROS_INFO_STREAM("------1 GAME INFO / GAME INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< game_info->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME INFO / GAME INFO--------- ");
                
                break;
            }
            case 82://GAME INFO / Set Team Name
            {
                std::shared_ptr<SetTeamName> set_team_name = std::dynamic_pointer_cast<SetTeamName>(msg);
                ROS_INFO_STREAM("------1 GAME INFO / Set Team Name--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_team_name->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME INFO / Set Team Name--------- ");
                
                break;
            }
            case 20://GAME STATE / GAME STATE
            {
                std::shared_ptr<GameState> game_state = std::dynamic_pointer_cast<GameState>(msg);
                ROS_INFO_STREAM("------1 GAME STATE / GAME STATE--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< game_state->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME STATE / GAME STATE--------- ");
                
                break;
            }
            case 21://GAME STATE / Set Game State
            {
                std::shared_ptr<SetGameState> set_game_state = std::dynamic_pointer_cast<SetGameState>(msg);
                ROS_INFO_STREAM("------1 GAME STATE / Set Game State--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_game_state->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME STATE / Set Game State--------- ");
                
                break;
            }
            case 22://GAME STATE / Game Phase
            {
                std::shared_ptr<SetGamePhase> set_game_phase = std::dynamic_pointer_cast<SetGamePhase>(msg);
                ROS_INFO_STREAM("------1 GAME STATE / Game Phase--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_game_phase->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME STATE / Game Phase--------- ");
                
                break;
            }
            case 23://GAME STATE / Randomize Field
            {
                std::shared_ptr<RandomizeField> randomize_field = std::dynamic_pointer_cast<RandomizeField>(msg);
                ROS_INFO_STREAM("------1 GAME STATE / Randomize Field--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< randomize_field->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME STATE / Randomize Field--------- ");
                
                break;
            }
            case 17://MACHINE COMMANDS / Set Machine State
            {
                std::shared_ptr<SetMachineState> set_machine_state = std::dynamic_pointer_cast<SetMachineState>(msg);
                ROS_INFO_STREAM("------1  MACHINE COMMANDS / Set Machine State--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_machine_state->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE COMMANDS / Set Machine State--------- ");
                
                break;
            }
            case 18://MACHINE COMMANDS / Machine Add Base
            {
                std::shared_ptr<MachineAddBase> machine_add_base = std::dynamic_pointer_cast<MachineAddBase>(msg);
                ROS_INFO_STREAM("------1  MACHINE COMMANDS / Machine Add Base--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_add_base->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE COMMANDS / Machine Add Base--------- ");
                
                break;
            }
            case 19://MACHINE COMMANDS / Set Machine Lights
            {
                std::shared_ptr<SetMachineLights> set_machine_lights = std::dynamic_pointer_cast<SetMachineLights>(msg);
                ROS_INFO_STREAM("------1  MACHINE COMMANDS / Set Machine Lights--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_machine_lights->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE COMMANDS / Set Machine Lights--------- ");
                
                break;
            }
            case 10://MACHINE INFO / Light Spec
            {
                std::shared_ptr<LightSpec> light_spec = std::dynamic_pointer_cast<LightSpec>(msg);
                ROS_INFO_STREAM("------1 MACHINE INFO / Light Spec--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< light_spec->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INFO / Light Spec--------- ");
                
                break;
            }
            case 121://MACHINE INFO / Shelf Slot Info
            {
                std::shared_ptr<ShelfSlotInfo> shelf_slot_info = std::dynamic_pointer_cast<ShelfSlotInfo>(msg);
                ROS_INFO_STREAM("------1 MACHINE INFO / Shelf Slot Info--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< shelf_slot_info->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INFO / Shelf Slot Info--------- ");
                
                break;
            }
            case 12://MACHINE INFO / Machine
            {
                std::shared_ptr<Machine> machine = std::dynamic_pointer_cast<Machine>(msg);
                ROS_INFO_STREAM("------1 MACHINE INFO / Machine--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INFO / Machine--------- ");
                
                break;
            }
            case 13://MACHINE INFO / MACHINE INFO
            {
                std::shared_ptr<MachineInfo> machine_info = std::dynamic_pointer_cast<MachineInfo>(msg);
                ROS_INFO_STREAM("------1 MACHINE INFO / MACHINE INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_info->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INFO / MACHINE INFO--------- ");
                std::vector<string> machines;
                for(int i = 0; i < machine_info->machines().size(); i++){
                    ROS_INFO_STREAM("------2 Machine No --------- " << i);
                    //ROS_INFO_STREAM(machine_info->machines().Get(i).ShortDebugString());
                    //if( machine_info->machines().Get(i).type() == "SS"){continue;}
                    std::stringstream ss;

                    /*production challenge*/

                    std::stringstream ss2;

                    llsf_msgs::Machine m_full = machine_info->machines().Get(i);
                    llsf_msgs::Machine m_empty;
                    m_empty.set_name(m_full.name());
                    m_empty.set_type(m_full.type());
                    m_empty.set_state(m_full.state());
                    m_empty.set_team_color(m_full.team_color());
                    
                    if(m_full.type() == "BS"){
                        ss2 << "machines { " << m_empty.ShortDebugString() << " 5: 222 6: 221 }";
                    } else {//CS
                        ss2 << "machines { " << m_empty.ShortDebugString() << " 5: 202 6: 201 }";
                    }                  
                    
                    std::cout << " empty_machine machines " << ss2.str() << " ..End" << std::endl;
                    std::cout << " full_machine machines { " << m_full.ShortDebugString() << " } ..End" << std::endl;

                    std_msgs::String empty_machine_msg;
                    empty_machine_msg.data = ss2.str();
                    pub_refbox.publish(empty_machine_msg);

                    /*production challenge*/

                    ss << "machines { " << machine_info->machines().Get(i).ShortDebugString() << " }";
                    std_msgs::String machine_msg;
                    machine_msg.data = ss.str();
                
                    pub_refbox.publish(machine_msg);
                    can_send_machines = false;

                    if(machines_rotations_sent){
                        can_send_orders = true;
                    }                    
                }
                break;
            }
            case 101://MACHINE INSTRUCTIONS / Prepare Machine
            {
                std::shared_ptr<PrepareMachine> prepare_machine = std::dynamic_pointer_cast<PrepareMachine>(msg);
                ROS_INFO_STREAM("------1 MACHINE INSTRUCTIONS / Prepare Machine--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< prepare_machine->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INSTRUCTIONS / Prepare Machine--------- ");
                
                break;
            }
            case 104://MACHINE INSTRUCTIONS / Reset Machine
            {
                std::shared_ptr<ResetMachine> reset_machine = std::dynamic_pointer_cast<ResetMachine>(msg);
                ROS_INFO_STREAM("------1 MACHINE INSTRUCTIONS / Reset Machine--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< reset_machine->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INSTRUCTIONS / Reset Machine--------- ");
                
                break;
            }
            case 60://MACHINE REPORT / Machine Report Entry
            {
                std::shared_ptr<MachineReportEntry> machine_report_entry = std::dynamic_pointer_cast<MachineReportEntry>(msg);
                ROS_INFO_STREAM("------1 MACHINE REPORT / Machine Report Entry--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_report_entry->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE REPORT / Machine Report Entry--------- ");
                
                break;
            }
            case 61://MACHINE REPORT / MACHINE REPORT
            {
                std::shared_ptr<MachineReport> machine_report = std::dynamic_pointer_cast<MachineReport>(msg);
                ROS_INFO_STREAM("------1 MACHINE REPORT / MACHINE REPORT--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_report->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE REPORT / MACHINE REPORT--------- ");
                
                break;
            }
            case 62://MACHINE REPORT / Machine Report Info
            {
                std::shared_ptr<MachineReportInfo> machine_report_info = std::dynamic_pointer_cast<MachineReportInfo>(msg);
                ROS_INFO_STREAM("------1 MACHINE REPORT / Machine Report Info--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_report_info->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE REPORT / Machine Report Info--------- ");
                
                break;
            }
            case 63://MACHINE REPORT / Machine Type Feedback
            {
                std::shared_ptr<MachineTypeFeedback> machine_type_feedback = std::dynamic_pointer_cast<MachineTypeFeedback>(msg);
                ROS_INFO_STREAM("------1 MACHINE REPORT / Machine Type Feedback--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_type_feedback->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE REPORT / Machine Type Feedback--------- ");
                
                break;
            }
            case 250://NAVIGATION CHALLENGE / Navigation Routes
            {
                std::shared_ptr<NavigationRoutes> navigation_routes = std::dynamic_pointer_cast<NavigationRoutes>(msg);
                ROS_INFO_STREAM("------1 NAVIGATION CHALLENGE / Route--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< navigation_routes->ShortDebugString());   

                ROS_INFO_STREAM("------2 NAVIGATION CHALLENGE / Route--------- ");

                break;
            }
            case 45://ORDER INFO / Unconfirmed Delivery
            {
                std::shared_ptr<UnconfirmedDelivery> unconfirmed_delivery = std::dynamic_pointer_cast<UnconfirmedDelivery>(msg);
                ROS_INFO_STREAM("------1 ORDER INFO / Unconfirmed Delivery--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< unconfirmed_delivery->ShortDebugString());
                ROS_INFO_STREAM("------2 ORDER INFO / Unconfirmed Delivery--------- ");                
                
                break;
            }
            case 42://ORDER INFO / ORDER
            {
                std::shared_ptr<Order> order = std::dynamic_pointer_cast<Order>(msg);
                ROS_INFO_STREAM("------1 ORDER INFO / ORDER--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< order->ShortDebugString());
                ROS_INFO_STREAM("------2 ORDER INFO / ORDER--------- ");
                
                break;
            }
            case 41://ORDER INFO / ORDER INFO
            {
                std::shared_ptr<OrderInfo> order_info = std::dynamic_pointer_cast<OrderInfo>(msg);
                ROS_INFO_STREAM("------1 ORDER INFO / ORDER INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< order_info->ShortDebugString());
                ROS_INFO_STREAM("------2 ORDER INFO / ORDER INFO--------- ");          

                break;
            }
            case 43://ORDER INFO / Set Order Delivered
            {
                std::shared_ptr<SetOrderDelivered> set_order_delivered = std::dynamic_pointer_cast<SetOrderDelivered>(msg);
                ROS_INFO_STREAM("------1 ORDER INFO / Set Order Delivered--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_order_delivered->ShortDebugString());
                ROS_INFO_STREAM("------2 ORDER INFO / Set Order Delivered--------- ");
                
                break;
            }
            case 46://ORDER INFO / Confirm Delivery
            {
                std::shared_ptr<ConfirmDelivery> confirm_delivery = std::dynamic_pointer_cast<ConfirmDelivery>(msg);
                ROS_INFO_STREAM("------1 ORDER INFO / Confirm Delivery--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< confirm_delivery->ShortDebugString());
                ROS_INFO_STREAM("------2 ORDER INFO / Confirm Delivery--------- ");
                
                break;
            }
            case 110://RING INFO / RING INFO
            {
                std::shared_ptr<RingInfo> ring_info = std::dynamic_pointer_cast<RingInfo>(msg);
                ROS_INFO_STREAM("------1 RING INFO / RING INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< ring_info->ShortDebugString());
                ROS_INFO_STREAM("------2 RING INFO / RING INFO--------- ");
                
                std::vector<string> rings;//[ring_info->rings().size()];
                if(!ring_info_sent){
                    for(int i = 0; i < ring_info->rings().size(); i++){
                        ROS_INFO_STREAM("------2 Ring No --------- " << i);
                        //ROS_INFO_STREAM(ring_info->rings().Get(i).ShortDebugString());
                        //rings[i] = ring_info->rings().Get(i).ShortDebugString();
                        std::stringstream ss;
                        ss << "rings { " << ring_info->rings().Get(i).ShortDebugString() << " }";
                        std_msgs::String ring_msg;
                        ring_msg.data = ss.str();
                    
                        pub_refbox.publish(ring_msg);
                        ring_info_sent = true;
                    }
                }
                break;
            }
            case 91://ROBOT COMMANDS / Set Robot Maintenance
            {
                std::shared_ptr<SetRobotMaintenance> set_robot_maintenance = std::dynamic_pointer_cast<SetRobotMaintenance>(msg);
                ROS_INFO_STREAM("------1 ROBOT COMMANDS / Set Robot Maintenance--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_robot_maintenance->ShortDebugString());
                ROS_INFO_STREAM("------2 ROBOT COMMANDS / Set Robot Maintenance--------- ");
                
                break;
            }
            case 31://ROBOT INFO / Robot
            {
                std::shared_ptr<Robot> robot = std::dynamic_pointer_cast<Robot>(msg);
                ROS_INFO_STREAM("------1 ROBOT INFO / Robot--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< robot->ShortDebugString());
                ROS_INFO_STREAM("------2 ROBOT INFO / Robot--------- ");
                
                break;
            }
            case 30://ROBOT INFO / ROBOT INFO
            {
                std::shared_ptr<RobotInfo> robot_info = std::dynamic_pointer_cast<RobotInfo>(msg);
                ROS_INFO_STREAM("------1 ROBOT INFO / ROBOT INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< robot_info->ShortDebugString());
                ROS_INFO_STREAM("------2 ROBOT INFO / ROBOT INFO--------- ");
                
                break;
            }
            case 327://SIM TIME SYNC / SIM TIME SYNC
            {
                std::shared_ptr<SimTimeSync> sim_time_sync = std::dynamic_pointer_cast<SimTimeSync>(msg);
                ROS_INFO_STREAM("------1 SIM TIME SYNC / SIM TIME SYNC--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< sim_time_sync->ShortDebugString());
                ROS_INFO_STREAM("------2 SIM TIME SYNC / SIM TIME SYNC--------- ");
                
                break;
            }
            case 3://VERSION INFO
            {
                std::shared_ptr<VersionInfo> version_info = std::dynamic_pointer_cast<VersionInfo>(msg);
                ROS_INFO_STREAM("------1 VERSION INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< version_info->ShortDebugString());
                ROS_INFO_STREAM("------2 VERSION INFO--------- ");
                
                break;
            }
            case 55://WORKPIECE INFO / Workpiece
            {
                std::shared_ptr<WorkPiece> workpiece = std::dynamic_pointer_cast<WorkPiece>(msg);
                ROS_INFO_STREAM("------1 WORKPIECE INFO / Workpiece--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< workpiece->ShortDebugString());
                ROS_INFO_STREAM("------2 WORKPIECE INFO / Workpiece--------- ");
                
                break;
            }
            case 56://WORKPIECE INFO / WORKPIECE INFO
            {
                std::shared_ptr<WorkpieceInfo> workpiece_info = std::dynamic_pointer_cast<WorkpieceInfo>(msg);
                ROS_INFO_STREAM("------1 WORKPIECE INFO / WORKPIECE INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< workpiece_info->ShortDebugString());
                ROS_INFO_STREAM("------2 WORKPIECE INFO / WORKPIECE INFO--------- ");
                
                break;
            }
            case 57://WORKPIECE INFO / Workpiece Add Ring
            {
                std::shared_ptr<WorkpieceAddRing> workpiece_add_ring = std::dynamic_pointer_cast<WorkpieceAddRing>(msg);
                ROS_INFO_STREAM("------1 WORKPIECE INFO / Workpiece Add Ring--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< workpiece_add_ring->ShortDebugString());
                ROS_INFO_STREAM("------2 WORKPIECE INFO / Workpiece Add Ring--------- ");
                
                break;
            }
            default:
            {
                ROS_INFO_STREAM("------PRIVATE MESSAGE NOT PROCESSED--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< msg->ShortDebugString());
                ROS_INFO_STREAM("------PRIVATE MESSAGE NOT PROCESSED--------- ");
                break;
            }
        }
        ROS_INFO_STREAM("-------------------------------\n\n\n\n\nRecv message on private B\n\n\n\n\n----------------------------------------------------------------");            
    }


    /*PUBLIC MESSAGES*/
    void handleRefboxMessagePublic(boost::asio::ip::udp::endpoint &endpoint, uint16_t comp_id, uint16_t msg_type, std::shared_ptr<google::protobuf::Message> msg) {

        ROS_INFO_STREAM("------Test Message Received--------- ");

        //--------------------------------------------------------------RETURN HERE-----------------------------------------------------------------------

        switch (msg_type) {
            case 502://AGENT TASK / AGENT TASK
            {
                std::shared_ptr<AgentTask> agent_task = std::dynamic_pointer_cast<AgentTask>(msg);
                ROS_INFO_STREAM("------1 AGENT TASK / AGENT TASK--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< agent_task->ShortDebugString());
                ROS_INFO_STREAM("------2 AGENT TASK / AGENT TASK--------- ");
                
                break;
            }
            case 510://AGENT TASK / Workpiece Description
            {
                std::shared_ptr<WorkpieceDescription> workpiece_description = std::dynamic_pointer_cast<WorkpieceDescription>(msg);
                ROS_INFO_STREAM("------1 AGENT TASK / Workpiece Description--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< workpiece_description->ShortDebugString());
                ROS_INFO_STREAM("------2 AGENT TASK / Workpiece Description--------- ");
                
                break;
            }
            case 2://ATTENTION MESSAGE / ATTENTION MESSAGE
            {
                std::shared_ptr<AttentionMessage> attention_message = std::dynamic_pointer_cast<AttentionMessage>(msg);
                ROS_INFO_STREAM("------1 ATTENTION MESSAGE / ATTENTION MESSAGE--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< attention_message->ShortDebugString());
                ROS_INFO_STREAM("------2 ATTENTION MESSAGE / ATTENTION MESSAGE--------- ");
                
                break;
            }
            case 1://BEACON SIGNAL
            {
                std::shared_ptr<BeaconSignal> beacon_signal = std::dynamic_pointer_cast<BeaconSignal>(msg);
                ROS_INFO_STREAM("------1 BEACON SIGNAL--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< beacon_signal->ShortDebugString());
                ROS_INFO_STREAM("------2 BEACON SIGNAL--------- ");
                
                break;
            }
            case 70://EXPLORATION INFO / Exploration Signal
            {
                std::shared_ptr<ExplorationSignal> exploration_signal = std::dynamic_pointer_cast<ExplorationSignal>(msg);
                ROS_INFO_STREAM("------1 EXPLORATION INFO  / Exploration Signal--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< exploration_signal->ShortDebugString());
                ROS_INFO_STREAM("------2 EXPLORATION INFO  / Exploration Signal--------- ");
                
                break;
            }
            case 71://EXPLORATION INFO / Exploration Zone
            {
                std::shared_ptr<ExplorationZone> exploration_zone = std::dynamic_pointer_cast<ExplorationZone>(msg);
                ROS_INFO_STREAM("------1 EXPLORATION INFO / Exploration Zone--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< exploration_zone->ShortDebugString());
                ROS_INFO_STREAM("------2 EXPLORATION INFO / Exploration Zone--------- ");
                
                break;
            }
            case 72://EXPLORATION INFO / EXPLORATION INFO
            {
                std::shared_ptr<ExplorationInfo> exploration_info = std::dynamic_pointer_cast<ExplorationInfo>(msg);
                ROS_INFO_STREAM("------1 EXPLORATION INFO / EXPLORATION INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< exploration_info->ShortDebugString());
                ROS_INFO_STREAM("------2 EXPLORATION INFO / EXPLORATION INFO--------- ");
                
                break;
            }
            case 81://GAME INFO / GAME INFO
            {
                std::shared_ptr<GameInfo> game_info = std::dynamic_pointer_cast<GameInfo>(msg);
                ROS_INFO_STREAM("------1 GAME INFO / GAME INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< game_info->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME INFO / GAME INFO--------- ");
                
                break;
            }
            case 82://GAME INFO / Set Team Name
            {
                std::shared_ptr<SetTeamName> set_team_name = std::dynamic_pointer_cast<SetTeamName>(msg);
                ROS_INFO_STREAM("------1 GAME INFO / Set Team Name--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_team_name->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME INFO / Set Team Name--------- ");
                
                break;
            }
            case 20://GAME STATE / GAME STATE
            {
                std::shared_ptr<GameState> game_state = std::dynamic_pointer_cast<GameState>(msg);
                ROS_INFO_STREAM("------1 GAME STATE / GAME STATE--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< game_state->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME STATE / GAME STATE--------- ");
                
                
                if(!machines_rotations_sent && !can_send_machines && game_state->phase() == llsf_msgs::GameState::PRODUCTION && game_state->game_time().sec() > 180){
                    can_send_machines = true;
                    machines_rotations_sent = true;
                }
                
                if(game_state->phase() == llsf_msgs::GameState::PRODUCTION){
                    std::stringstream msg;
                    msg << "ola";
                    std_msgs::String send_plan_msg;
                    send_plan_msg.data = msg.str();
                    pub_send_plan_fake_refbox.publish(send_plan_msg);
                }

                auto cyan = game_state->team_cyan();
                m_team_name = TEAM_NAME;

                
                if (cyan == TEAM_NAME) {
                    m_is_cyan = true;   
                }                

                if(!crypto_setup){
                    ROS_INFO_STREAM("------          \n\n\n\n\nCRYPTO SETUP\n\n\n\n\n      --------- ");
                    crypto_setup = true;

                    if(m_is_cyan){
                        ROS_INFO_STREAM("------          \n\n\n\n\nCyan SETUP\n\n\n\n\n      --------- ");
                        m_private_peer =  std::make_shared<ProtobufBroadcastPeer>(m_host, CYAN_PORT_S, CYAN_PORT_R, m_mr,CRYPTO_KEY);
                    } else {
                        ROS_INFO_STREAM("------          \n\n\n\n\n Magenta SETUP\n\n\n\n\n      --------- ");
                        m_private_peer =  std::make_shared<ProtobufBroadcastPeer>(m_host, MAGENTA_PORT_S, MAGENTA_PORT_R, m_mr,CRYPTO_KEY);
                    }

                    ROS_INFO_STREAM("--Private--");
                    m_private_peer->signal_received().connect(
                        boost::bind(&Handler::handleRefboxMessagePrivate, this, _1, _2, _3, _4)
                    );

                }

                std::stringstream ss;

                if(m_is_cyan){
                    ROS_INFO_STREAM("------          \n\n\n\n\nCyan SETUP\n\n\n\n\n      --------- ");
                    ss << "team CYAN";
                } else {
                    ROS_INFO_STREAM("------          \n\n\n\n\n Magenta SETUP\n\n\n\n\n      --------- ");
                    ss << "team MAGENTA";
                }

                std_msgs::String team_msg;
                team_msg.data = ss.str();
                pub_refbox.publish(team_msg);

                break;
            }
            case 21://GAME STATE / Set Game State
            {
                std::shared_ptr<SetGameState> set_game_state = std::dynamic_pointer_cast<SetGameState>(msg);
                ROS_INFO_STREAM("------1 GAME STATE / Set Game State--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_game_state->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME STATE / Set Game State--------- ");
                
                break;
            }
            case 22://GAME STATE / Game Phase
            {
                std::shared_ptr<SetGamePhase> set_game_phase = std::dynamic_pointer_cast<SetGamePhase>(msg);
                ROS_INFO_STREAM("------1 GAME STATE / Game Phase--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_game_phase->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME STATE / Game Phase--------- ");
                
                break;
            }
            case 23://GAME STATE / Randomize Field
            {
                std::shared_ptr<RandomizeField> randomize_field = std::dynamic_pointer_cast<RandomizeField>(msg);
                ROS_INFO_STREAM("------1 GAME STATE / Randomize Field--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< randomize_field->ShortDebugString());
                ROS_INFO_STREAM("------2 GAME STATE / Randomize Field--------- ");
                
                break;
            }
            case 17://MACHINE COMMANDS / Set Machine State
            {
                std::shared_ptr<SetMachineState> set_machine_state = std::dynamic_pointer_cast<SetMachineState>(msg);
                ROS_INFO_STREAM("------1  MACHINE COMMANDS / Set Machine State--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_machine_state->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE COMMANDS / Set Machine State--------- ");
                
                break;
            }
            case 18://MACHINE COMMANDS / Machine Add Base
            {
                std::shared_ptr<MachineAddBase> machine_add_base = std::dynamic_pointer_cast<MachineAddBase>(msg);
                ROS_INFO_STREAM("------1  MACHINE COMMANDS / Machine Add Base--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_add_base->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE COMMANDS / Machine Add Base--------- ");
                
                break;
            }
            case 19://MACHINE COMMANDS / Set Machine Lights
            {
                std::shared_ptr<SetMachineLights> set_machine_lights = std::dynamic_pointer_cast<SetMachineLights>(msg);
                ROS_INFO_STREAM("------1  MACHINE COMMANDS / Set Machine Lights--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_machine_lights->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE COMMANDS / Set Machine Lights--------- ");
                
                break;
            }
            case 10://MACHINE INFO / Light Spec
            {
                std::shared_ptr<LightSpec> light_spec = std::dynamic_pointer_cast<LightSpec>(msg);
                ROS_INFO_STREAM("------1 MACHINE INFO / Light Spec--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< light_spec->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INFO / Light Spec--------- ");
                
                break;
            }
            case 121://MACHINE INFO / Shelf Slot Info
            {
                std::shared_ptr<ShelfSlotInfo> shelf_slot_info = std::dynamic_pointer_cast<ShelfSlotInfo>(msg);
                ROS_INFO_STREAM("------1 MACHINE INFO / Shelf Slot Info--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< shelf_slot_info->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INFO / Shelf Slot Info--------- ");
                
                break;
            }
            case 12://MACHINE INFO / Machine
            {
                std::shared_ptr<Machine> machine = std::dynamic_pointer_cast<Machine>(msg);
                ROS_INFO_STREAM("------1 MACHINE INFO / Machine--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INFO / Machine--------- ");
                
                break;
            }
            case 13://MACHINE INFO / MACHINE INFO
            {
                std::shared_ptr<MachineInfo> machine_info = std::dynamic_pointer_cast<MachineInfo>(msg);
                ROS_INFO_STREAM("------1 MACHINE INFO / MACHINE INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_info->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INFO / MACHINE INFO--------- ");
                
                break;
            }
            case 101://MACHINE INSTRUCTIONS / Prepare Machine
            {
                std::shared_ptr<PrepareMachine> prepare_machine = std::dynamic_pointer_cast<PrepareMachine>(msg);
                ROS_INFO_STREAM("------1 MACHINE INSTRUCTIONS / Prepare Machine--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< prepare_machine->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INSTRUCTIONS / Prepare Machine--------- ");
                
                break;
            }
            case 104://MACHINE INSTRUCTIONS / Reset Machine
            {
                std::shared_ptr<ResetMachine> reset_machine = std::dynamic_pointer_cast<ResetMachine>(msg);
                ROS_INFO_STREAM("------1 MACHINE INSTRUCTIONS / Reset Machine--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< reset_machine->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE INSTRUCTIONS / Reset Machine--------- ");
                
                break;
            }
            case 60://MACHINE REPORT / Machine Report Entry
            {
                std::shared_ptr<MachineReportEntry> machine_report_entry = std::dynamic_pointer_cast<MachineReportEntry>(msg);
                ROS_INFO_STREAM("------1 MACHINE REPORT / Machine Report Entry--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_report_entry->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE REPORT / Machine Report Entry--------- ");
                
                break;
            }
            case 61://MACHINE REPORT / MACHINE REPORT
            {
                std::shared_ptr<MachineReport> machine_report = std::dynamic_pointer_cast<MachineReport>(msg);
                ROS_INFO_STREAM("------1 MACHINE REPORT / MACHINE REPORT--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_report->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE REPORT / MACHINE REPORT--------- ");
                
                break;
            }
            case 62://MACHINE REPORT / Machine Report Info
            {
                std::shared_ptr<MachineReportInfo> machine_report_info = std::dynamic_pointer_cast<MachineReportInfo>(msg);
                ROS_INFO_STREAM("------1 MACHINE REPORT / Machine Report Info--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_report_info->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE REPORT / Machine Report Info--------- ");
                
                break;
            }
            case 63://MACHINE REPORT / Machine Type Feedback
            {
                std::shared_ptr<MachineTypeFeedback> machine_type_feedback = std::dynamic_pointer_cast<MachineTypeFeedback>(msg);
                ROS_INFO_STREAM("------1 MACHINE REPORT / Machine Type Feedback--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< machine_type_feedback->ShortDebugString());
                ROS_INFO_STREAM("------2 MACHINE REPORT / Machine Type Feedback--------- ");
                
                break;
            }
            case 250://NAVIGATION CHALLENGE / Navigation Routes
            {
                std::shared_ptr<NavigationRoutes> navigation_routes = std::dynamic_pointer_cast<NavigationRoutes>(msg);
                ROS_INFO_STREAM("------1 NAVIGATION CHALLENGE / Route--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< navigation_routes->ShortDebugString());
                ROS_INFO_STREAM("------2 NAVIGATION CHALLENGE / Route--------- ");
                
                break;
            }
            case 45://ORDER INFO / Unconfirmed Delivery
            {
                std::shared_ptr<UnconfirmedDelivery> unconfirmed_delivery = std::dynamic_pointer_cast<UnconfirmedDelivery>(msg);
                ROS_INFO_STREAM("------1 ORDER INFO / Unconfirmed Delivery--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< unconfirmed_delivery->ShortDebugString());
                ROS_INFO_STREAM("------2 ORDER INFO / Unconfirmed Delivery--------- ");
                
                break;
            }
            case 42://ORDER INFO / ORDER
            {
                std::shared_ptr<Order> order = std::dynamic_pointer_cast<Order>(msg);
                ROS_INFO_STREAM("------1 ORDER INFO / ORDER--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< order->ShortDebugString());
                ROS_INFO_STREAM("------2 ORDER INFO / ORDER--------- ");
                
                break;
            }
            case 41://ORDER INFO / ORDER INFO
            {
                std::shared_ptr<OrderInfo> order_info = std::dynamic_pointer_cast<OrderInfo>(msg);
                ROS_INFO_STREAM("------1 ORDER INFO / ORDER INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< order_info->ShortDebugString());
                ROS_INFO_STREAM("------2 ORDER INFO / ORDER INFO--------- ");
                can_send_orders = true;
                /* Poduction challenge*/
                if(can_send_orders){
                    std::vector<string> orders;
                    for(int i = 0; i < order_info->orders().size(); i++){
                        ROS_INFO_STREAM("------NEW ORDER No --------- " << i);

                        std::stringstream ss;
                        ss << "orders { " << order_info->orders().Get(i).ShortDebugString() << " }";
                        std_msgs::String order_msg;
                        order_msg.data = ss.str();
                    
                        pub_refbox.publish(order_msg);                        
                        orders_sent[order_info->orders().Get(i).id()] = true;
                    }
                }

                break;
            }
            case 43://ORDER INFO / Set Order Delivered
            {
                std::shared_ptr<SetOrderDelivered> set_order_delivered = std::dynamic_pointer_cast<SetOrderDelivered>(msg);
                ROS_INFO_STREAM("------1 ORDER INFO / Set Order Delivered--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_order_delivered->ShortDebugString());
                ROS_INFO_STREAM("------2 ORDER INFO / Set Order Delivered--------- ");
                
                break;
            }
            case 46://ORDER INFO / Confirm Delivery
            {
                std::shared_ptr<ConfirmDelivery> confirm_delivery = std::dynamic_pointer_cast<ConfirmDelivery>(msg);
                ROS_INFO_STREAM("------1 ORDER INFO / Confirm Delivery--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< confirm_delivery->ShortDebugString());
                ROS_INFO_STREAM("------2 ORDER INFO / Confirm Delivery--------- ");
                
                break;
            }
            case 110://RING INFO / RING INFO
            {
                std::shared_ptr<RingInfo> ring_info = std::dynamic_pointer_cast<RingInfo>(msg);
                ROS_INFO_STREAM("------1 RING INFO / RING INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< ring_info->ShortDebugString());
                ROS_INFO_STREAM("------2 RING INFO / RING INFO--------- ");
                
                break;
            }
            case 91://ROBOT COMMANDS / Set Robot Maintenance
            {
                std::shared_ptr<SetRobotMaintenance> set_robot_maintenance = std::dynamic_pointer_cast<SetRobotMaintenance>(msg);
                ROS_INFO_STREAM("------1 ROBOT COMMANDS / Set Robot Maintenance--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< set_robot_maintenance->ShortDebugString());
                ROS_INFO_STREAM("------2 ROBOT COMMANDS / Set Robot Maintenance--------- ");
                
                break;
            }
            case 31://ROBOT INFO / Robot
            {
                std::shared_ptr<Robot> robot = std::dynamic_pointer_cast<Robot>(msg);
                ROS_INFO_STREAM("------1 ROBOT INFO / Robot--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< robot->ShortDebugString());
                ROS_INFO_STREAM("------2 ROBOT INFO / Robot--------- ");
                
                break;
            }
            case 30://ROBOT INFO / ROBOT INFO
            {
                std::shared_ptr<RobotInfo> robot_info = std::dynamic_pointer_cast<RobotInfo>(msg);
                ROS_INFO_STREAM("------1 ROBOT INFO / ROBOT INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< robot_info->ShortDebugString());
                ROS_INFO_STREAM("------2 ROBOT INFO / ROBOT INFO--------- ");
                
                break;
            }
            case 327://SIM TIME SYNC / SIM TIME SYNC
            {
                std::shared_ptr<SimTimeSync> sim_time_sync = std::dynamic_pointer_cast<SimTimeSync>(msg);
                ROS_INFO_STREAM("------1 SIM TIME SYNC / SIM TIME SYNC--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< sim_time_sync->ShortDebugString());
                ROS_INFO_STREAM("------2 SIM TIME SYNC / SIM TIME SYNC--------- ");
                
                break;
            }
            case 3://VERSION INFO
            {
                std::shared_ptr<VersionInfo> version_info = std::dynamic_pointer_cast<VersionInfo>(msg);
                ROS_INFO_STREAM("------1 VERSION INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< version_info->ShortDebugString());
                ROS_INFO_STREAM("------2 VERSION INFO--------- ");
                
                break;
            }
            case 55://WORKPIECE INFO / Workpiece
            {
                std::shared_ptr<WorkPiece> workpiece = std::dynamic_pointer_cast<WorkPiece>(msg);
                ROS_INFO_STREAM("------1 WORKPIECE INFO / Workpiece--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< workpiece->ShortDebugString());
                ROS_INFO_STREAM("------2 WORKPIECE INFO / Workpiece--------- ");
                
                break;
            }
            case 56://WORKPIECE INFO / WORKPIECE INFO
            {
                std::shared_ptr<WorkpieceInfo> workpiece_info = std::dynamic_pointer_cast<WorkpieceInfo>(msg);
                ROS_INFO_STREAM("------1 WORKPIECE INFO / WORKPIECE INFO--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< workpiece_info->ShortDebugString());
                ROS_INFO_STREAM("------2 WORKPIECE INFO / WORKPIECE INFO--------- ");
                
                break;
            }
            case 57://WORKPIECE INFO / Workpiece Add Ring
            {
                std::shared_ptr<WorkpieceAddRing> workpiece_add_ring = std::dynamic_pointer_cast<WorkpieceAddRing>(msg);
                ROS_INFO_STREAM("------1 WORKPIECE INFO / Workpiece Add Ring--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< workpiece_add_ring->ShortDebugString());
                ROS_INFO_STREAM("------2 WORKPIECE INFO / Workpiece Add Ring--------- ");
                
                break;
            }
            default:
            {
                ROS_INFO_STREAM("------MESSAGE NOT PROCESSED--------- " << comp_id << " : " << msg_type);
                ROS_INFO_STREAM(""<< msg->ShortDebugString());
                ROS_INFO_STREAM("------MESSAGE NOT PROCESSED--------- ");
                break;
            }
        }
    }

    void handleRecvErrorPrivate(boost::asio::ip::udp::endpoint &endpoint, std::string msg)
    {
        ROS_ERROR_STREAM("Error receiving on private port : " << msg);
    }

    void handleSendErrorPrivate(std::string msg)
    {
        ROS_ERROR_STREAM("Error sending on private port : " << msg);
    }

};

Handler* p;

int main(int argc, char** argv) 
{

    ros::init(argc, argv, "refbox_comm_node");
    ros::NodeHandle n;

    pub_refbox = n.advertise<std_msgs::String>("/refbox_msgs", 1000);
    pub_send_plan_fake_refbox = n.advertise<std_msgs::String>("/send_plan_msg", 1000);

    /*production challenge*/
    std::stringstream ss2;
    ss2 << "challenge C0";
    std_msgs::String challenge_msg;
    challenge_msg.data = ss2.str();
    pub_refbox.publish(challenge_msg);
    /*production challenge*/

    p = new Handler(HOST, PUBLIC_PORT_S, PUBLIC_PORT_R);

    ros::Rate r(10);
    while (ros::ok()) {

        // pub_refbox.publish(challenge_msg);
        ros::spinOnce();
        r.sleep();
    }
    return 0;
}