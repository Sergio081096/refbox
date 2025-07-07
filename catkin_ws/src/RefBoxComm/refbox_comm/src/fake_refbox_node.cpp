#include <ros/ros.h>
#include "refbox_comm/RefboxMsg.h"

#include "std_msgs/String.h"

#include "simulator/SinglePlan.h"

using namespace std;

#define INSTRUCTIONS_NO 24

vector<std::string> debug_instructions_1 = {
    "ACT_PLN 1 1 Festino goto CS C_Z45 0 platform",
    "ACT_PLN 1 3 Festino takep CAP_GREY",
    "ACT_PLN 1 4 Festino goto CS C_Z45 0 entrance",
    "ACT_PLN 1 5 Festino drop CAP_GREY",
    "ACT_PLN 1 6 Festino ask take CAP_GREY",
    "ACT_PLN 1 7 Festino goto CS C_Z45 0 output",
    "ACT_PLN 1 9 Festino take base_translucid",
    "ACT_PLN 1 10 Festino goto CS C_Z45 0 platform",
    "ACT_PLN 1 11 Festino dropp base_translucid",
    "ACT_PLN 1 12 Festino goto BS C_Z57 315 output",
    "ACT_PLN 1 13 Festino ask base BASE_SILVER",
    "ACT_PLN 1 15 Festino take BASE_SILVER",
    "ACT_PLN 1 16 Festino goto CS C_Z53 225 entrance",
    "ACT_PLN 1 17 Festino drop BASE_SILVER",
    "ACT_PLN 1 18 Festino ask put cap",
    "ACT_PLN 1 19 Festino goto CS C_Z53 225 output",
    "ACT_PLN 1 21 Festino take BASE_SILVER",
    "ACT_PLN 1 22 Festino goto DS C_Z32 270 entrance",
    "ACT_PLN 1 23 Festino drop BASE_SILVER",
    "ACT_PLN 1 24 Festino ask moveto 2"
    };

vector<std::string> debug_instructions_2 = {
    "ACT_PLN 1 1 Festina goto CS M_Z17 225 platform",
    "ACT_PLN 1 3 Festina takep CAP_BLACK",
    "ACT_PLN 1 4 Festina goto CS M_Z17 225 entrance",
    "ACT_PLN 1 5 Festina drop CAP_BLACK",
    "ACT_PLN 1 6 Festina ask take CAP_BLACK",
    "ACT_PLN 1 7 Festina goto CS M_Z17 225 output",
    "ACT_PLN 1 9 Festina take base_translucid",
    "ACT_PLN 1 10 Festina goto CS M_Z17 225 platform",
    "ACT_PLN 1 11 Festina dropp base_translucid",
    "ACT_PLN 1 12 Festina goto BS C_Z37 90 output",
    "ACT_PLN 1 13 Festina ask base BASE_RED",
    "ACT_PLN 1 15 Festina take BASE_RED",
    "ACT_PLN 1 16 Festina goto CS M_Z17 225 entrance",
    "ACT_PLN 1 17 Festina drop BASE_RED",
    "ACT_PLN 1 18 Festina ask put cap",
    "ACT_PLN 1 19 Festina goto CS M_Z17 225 output",
    "ACT_PLN 1 21 Festina take BASE_RED",
    "ACT_PLN 1 22 Festina goto DS C_Z67 45 entrance",
    "ACT_PLN 1 23 Festina drop BASE_RED",
    "ACT_PLN 1 24 Festina ask moveto 3"
    };

vector<std::string> debug_instructions_3 = {
    "ACT_PLN 1 1 Festina goto CS M_Z45 0 platform",
    "ACT_PLN 1 3 Festina takep CAP_BLACK",
    "ACT_PLN 1 4 Festina goto CS M_Z45 0 entrance",
    "ACT_PLN 1 5 Festina drop CAP_BLACK",
    "ACT_PLN 1 6 Festina ask take CAP_BLACK",
    "ACT_PLN 1 7 Festina goto CS M_Z45 0 output",
    "ACT_PLN 1 9 Festina take base_translucid",
    "ACT_PLN 1 10 Festina goto CS M_Z45 0 platform",
    "ACT_PLN 1 11 Festina dropp base_translucid",
    "ACT_PLN 1 12 Festina goto BS C_Z53 180 output",
    "ACT_PLN 1 13 Festina ask base BASE_RED",
    "ACT_PLN 1 15 Festina take BASE_RED",
    "ACT_PLN 1 16 Festina goto CS C_Z47 0 entrance",
    "ACT_PLN 1 17 Festina drop BASE_RED",
    "ACT_PLN 1 18 Festina ask put cap",
    "ACT_PLN 1 19 Festina goto CS C_Z47 output",
    "ACT_PLN 1 21 Festina take BASE_RED",
    "ACT_PLN 1 22 Festina goto DS M_Z22 90 entrance",
    "ACT_PLN 1 23 Festina drop BASE_RED",
    "ACT_PLN 1 24 Festina ask moveto 3"
};

vector<std::string> debug_instructions_4 = {
    "ACT_PLN 1 1 Festino goto CS M_Z40 180 platform",
    "ACT_PLN 1 3 Festino takep CAP_BLACK",
    "ACT_PLN 1 4 Festino goto CS M_Z40 180 entrance",
    "ACT_PLN 1 5 Festino dropp CAP_BLACK",
    "ACT_PLN 1 6 Festino ask take CAP_BLACK",
    "ACT_PLN 1 7 Festino goto CS M_Z40 180 output",
    "ACT_PLN 1 9 Festino take base_translucid",
    "ACT_PLN 1 10 Festino goto CS M_Z40 180 platform",
    "ACT_PLN 1 11 Festino drop base_translucid",
    "ACT_PLN 1 12 Festino goto BS M_Z30 0 output",
    "ACT_PLN 1 13 Festino ask base BASE_BLACK",
    "ACT_PLN 1 15 Festino take BASE_BLACK",
    "ACT_PLN 1 16 Festino goto CS M_Z42 0 entrance",
    "ACT_PLN 1 17 Festino drop BASE_BLACK",
    "ACT_PLN 1 18 Festino ask put cap",
    "ACT_PLN 1 19 Festino goto CS M_Z42 0 output",
    "ACT_PLN 1 21 Festino take BASE_BLACK",
    "ACT_PLN 1 22 Festino goto DS M_Z63 180 entrance",
    "ACT_PLN 1 23 Festino drop BASE_BLACK",
    "ACT_PLN 1 24 Festino ask moveto 1"
    };

vector<std::string> debug_instructions_grasping_1 = {
    "ACT_PLN 1 1 Festino goto CS M_Z53 90 output",
    "ACT_PLN 1 3 Festino take CAP_GREY",
    "ACT_PLN 1 4 Festino goto CS M_Z53 90 entrance",
    "ACT_PLN 1 5 Festino drop CAP_GREY",
    "ACT_PLN 1 6 Festino goto CS M_Z53 90 output",
    "ACT_PLN 1 7 Festino take CAP_GREY",
    "ACT_PLN 1 8 Festino goto CS M_Z53 90 entrance",
    "ACT_PLN 1 9 Festino drop CAP_GREY",
    "ACT_PLN 1 10 Festino goto CS M_Z53 90 output",
    "ACT_PLN 1 11 Festino take CAP_GREY",
    "ACT_PLN 1 12 Festino goto CS M_Z53 90 entrance",
    "ACT_PLN 1 13 Festino drop CAP_GREY",
    "ACT_PLN 1 14 Festino goto CS M_Z53 90 output"
    };

vector<std::string> debug_instructions_grasping_test = {
    "ACT_PLN 1 1 Festino goto RS C_Z27 0 output",
    "ACT_PLN 1 3 Festino take CAP_GREY",
    "ACT_PLN 1 4 Festino goto RS C_Z27 0 entrance",
    "ACT_PLN 1 5 Festino drop CAP_GREY",
    "ACT_PLN 1 6 Festino goto RS C_Z27 0 output",
    "ACT_PLN 1 7 Festino take CAP_GREY",
    "ACT_PLN 1 8 Festino goto RS C_Z27 0 entrance",
    "ACT_PLN 1 9 Festino drop CAP_GREY",
    "ACT_PLN 1 10 Festino goto RS C_Z27 0 output",
    "ACT_PLN 1 11 Festino take CAP_GREY",
    "ACT_PLN 1 12 Festino goto RS C_Z27 0 entrance",
    "ACT_PLN 1 13 Festino drop CAP_GREY",
    "ACT_PLN 1 14 Festino goto RS C_Z27 0 output"
    };

vector<std::string> debug_instructions_grasping_2 = {
    //First machine
    "ACT_PLN 1 1 Festina goto RS M_Z45 0 output",
    "ACT_PLN 1 3 Festina take CAP_GREY",
    "ACT_PLN 1 4 Festina goto RS M_Z45 0 entrance",
    "ACT_PLN 1 5 Festina drop CAP_GREY",
    "ACT_PLN 1 6 Festina goto RS M_Z45 0 output",
    "ACT_PLN 1 7 Festina take CAP_GREY",
    "ACT_PLN 1 8 Festina goto RS M_Z45 0 entrance",
    "ACT_PLN 1 9 Festina drop CAP_GREY",
    "ACT_PLN 1 10 Festina goto RS M_Z45 0 output",
    "ACT_PLN 1 11 Festina take CAP_GREY",
    "ACT_PLN 1 12 Festina goto RS M_Z45 0 entrance",
    "ACT_PLN 1 13 Festina drop CAP_GREY",
    "ACT_PLN 1 14 Festina goto RS M_Z45 0 output",
    //Second machine
    "ACT_PLN 1 1 Festina goto BS M_Z12 90 output",
    "ACT_PLN 1 3 Festina take CAP_GREY",
    "ACT_PLN 1 4 Festina goto BS M_Z12 90 entrance",
    "ACT_PLN 1 5 Festina drop CAP_GREY",
    "ACT_PLN 1 6 Festina goto BS M_Z12 90 output",
    "ACT_PLN 1 7 Festina take CAP_GREY",
    "ACT_PLN 1 8 Festina goto BS M_Z12 90 entrance",
    "ACT_PLN 1 9 Festina drop CAP_GREY",
    "ACT_PLN 1 10 Festina goto BS M_Z12 90 output",
    "ACT_PLN 1 11 Festina take CAP_GREY",
    "ACT_PLN 1 12 Festina goto BS M_Z12 90 entrance",
    "ACT_PLN 1 13 Festina drop CAP_GREY",
    "ACT_PLN 1 14 Festina goto BS M_Z12 90 output"
};

vector<std::string> debug_instructions_5 = {
    "ACT-PLN 1 1 Festino goto CS M_Z12 45 platform",
    "ACT-PLN 1 2 Festino takep CAP_GREY",
    "ACT-PLN 1 3 Festino goto CS M_Z12 45 entrance",
    "ACT-PLN 1 4 Festino drop CAP_GREY",
    "ACT-PLN 1 5 Festino ask take CAP_GREY",
    "ACT-PLN 1 6 Festino goto CS M_Z12 45 output",
    "ACT-PLN 1 7 Festino take base_translucid",
    "ACT-PLN 1 8 Festino goto CS M_Z12 45 platform",
    "ACT-PLN 1 9 Festino dropp base_translucid",
    "ACT-PLN 1 10 Festino goto BS M_Z24 135 output",
    "ACT-PLN 1 11 Festino ask base BASE_RED",
    "ACT-PLN 1 12 Festino take BASE_RED",
    "ACT-PLN 1 13 Festino goto CS M_Z12 45 entrance",
    "ACT-PLN 1 14 Festino drop BASE_RED",
    "ACT-PLN 1 15 Festino ask put cap",
    "ACT-PLN 1 16 Festino goto CS M_Z12 45 output",
    "ACT-PLN 1 17 Festino take BASE_RED",
    "ACT-PLN 1 18 Festino goto ES M_Z51 0 entrance",
    "ACT-PLN 1 19 Festino drop BASE_RED"
};

vector<vector<std::string>> debug_vector;


vector<std::string> debug_refbox_msgs = {
    ":p",
    "team MAGENTA",
    "machines { name: \"M-BS\" type: \"BS\" state: \"IDLE\" team_color: MAGENTA 5: 222 6: 221 }",
    "machines { name: \"M-DS\" type: \"DS\" state: \"IDLE\" team_color: MAGENTA 5: 232 6: 231 }",
    "machines { name: \"M-SS\" type: \"SS\" state: \"IDLE\" team_color: MAGENTA status_ss { shelf: 0 slot: 1 is_filled: true description: \"BASE_RED CAP_GREY\" } status_ss { shelf: 1 slot: 1 is_filled: true description: \"BASE_RED CAP_BLACK\" } status_ss { shelf: 2 slot: 1 is_filled: true description: \"BASE_SILVER CAP_GREY\" } status_ss { shelf: 3 slot: 1 is_filled: true description: \"BASE_SILVER CAP_BLACK\" } status_ss { shelf: 4 slot: 1 is_filled: true description: \"BASE_BLACK CAP_GREY\" } status_ss { shelf: 5 slot: 1 is_filled: true description: \"BASE_BLACK CAP_BLACK\" } status_ss { shelf: 0 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 7 is_filled: false description: \"\" } 5: 242 6: 241 }",
    "machines { name: \"M-RS2\" type: \"RS\" state: \"IDLE\" team_color: MAGENTA ring_colors: RING_BLUE ring_colors: RING_YELLOW 5: 214 6: 213 }",
    "machines { name: \"M-CS1\" type: \"CS\" state: \"IDLE\" team_color: MAGENTA 5: 202 6: 201 }",
    "machines { name: \"M-RS1\" type: \"RS\" state: \"IDLE\" team_color: MAGENTA ring_colors: RING_ORANGE ring_colors: RING_GREEN 5: 212 6: 211 }",
    "machines { name: \"M-CS2\" type: \"CS\" state: \"IDLE\" team_color: MAGENTA 5: 204 6: 203 }",
    
    "machines { name: \"M-BS\" type: \"BS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z73 rotation: 270 5: 222 6: 221 }",
    "machines { name: \"M-DS\" type: \"DS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z45 rotation: 90 5: 232 6: 231 }",
    "machines { name: \"M-SS\" type: \"SS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z35 rotation: 270 status_ss { shelf: 0 slot: 1 is_filled: true description: \"BASE_RED CAP_GREY\" } status_ss { shelf: 1 slot: 1 is_filled: true description: \"BASE_RED CAP_BLACK\" } status_ss { shelf: 2 slot: 1 is_filled: true description: \"BASE_SILVER CAP_GREY\" } status_ss { shelf: 3 slot: 1 is_filled: true description: \"BASE_SILVER CAP_BLACK\" } status_ss { shelf: 4 slot: 1 is_filled: true description: \"BASE_BLACK CAP_GREY\" } status_ss { shelf: 5 slot: 1 is_filled: true description: \"BASE_BLACK CAP_BLACK\" } status_ss { shelf: 0 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 7 is_filled: false description: \"\" } 5: 242 6: 241 }",
    "machines { name: \"M-RS2\" type: \"RS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z67 rotation: 45 ring_colors: RING_BLUE ring_colors: RING_YELLOW 5: 214 6: 213 }",
    "machines { name: \"M-CS1\" type: \"CS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z65 rotation: 180 5: 202 6: 201 }",
    "machines { name: \"M-RS1\" type: \"RS\" state: \"IDLE\" team_color: MAGENTA zone: C_Z53 rotation: 90 ring_colors: RING_ORANGE ring_colors: RING_GREEN 5: 212 6: 211 }",
    "machines { name: \"M-CS2\" type: \"CS\" state: \"IDLE\" team_color: MAGENTA zone: C_Z21 rotation: 0 5: 204 6: 203 }",
    
    "orders { id: 1 complexity: C0 base_color: BASE_BLACK cap_color: CAP_BLACK quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 0 delivery_period_end: 1200 delivery_gate: 2 competitive: false }",
    "orders { id: 2 complexity: C2 base_color: BASE_RED ring_colors: RING_BLUE ring_colors: RING_ORANGE cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 0 delivery_period_end: 1200 delivery_gate: 2 competitive: false }",
    "orders { id: 3 complexity: C0 base_color: BASE_SILVER cap_color: CAP_BLACK quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 278 delivery_period_end: 454 delivery_gate: 1 competitive: false }",
    "orders { id: 4 complexity: C0 base_color: BASE_SILVER cap_color: CAP_BLACK quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 304 delivery_period_end: 470 delivery_gate: 2 competitive: false }",
    "orders { id: 5 complexity: C3 base_color: BASE_SILVER ring_colors: RING_BLUE ring_colors: RING_GREEN ring_colors: RING_BLUE cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 593 delivery_period_end: 780 delivery_gate: 2 competitive: false }",
    "orders { id: 6 complexity: C3 base_color: BASE_RED ring_colors: RING_YELLOW ring_colors: RING_ORANGE ring_colors: RING_GREEN cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 649 delivery_period_end: 837 delivery_gate: 1 competitive: false }",
    "orders { id: 7 complexity: C1 base_color: BASE_SILVER ring_colors: RING_ORANGE cap_color: CAP_BLACK quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 0 delivery_period_end: 1200 delivery_gate: 1 competitive: false }",
    "orders { id: 8 complexity: C3 base_color: BASE_BLACK ring_colors: RING_GREEN ring_colors: RING_YELLOW ring_colors: RING_GREEN cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 0 delivery_period_end: 1200 delivery_gate: 3 competitive: false }"
    };

vector<std::string> debug_refbox_msgs_2 = {
"team MAGENTA",
"machines { name: \"M-BS\" type: \"BS\" state: \"IDLE\" team_color: MAGENTA 5: 222 6: 221 }",
"machines { name: \"M-DS\" type: \"DS\" state: \"IDLE\" team_color: MAGENTA 5: 232 6: 231 }",
//"machines { name: \"M-SS\" type: \"SS\" state: \"IDLE\" team_color: MAGENTA status_ss { shelf: 0 slot: 1 is_filled: true description: \"BASE_RED CAP_GREY\" } status_ss { shelf: 1 slot: 1 is_filled: true description: \"BASE_RED CAP_BLACK\" } status_ss { shelf: 2 slot: 1 is_filled: true description: \"BASE_SILVER CAP_GREY\" } status_ss { shelf: 3 slot: 1 is_filled: true description:\"BASE_SILVER CAP_BLACK\" } status_ss { shelf: 4 slot: 1 is_filled: true description: \"BASE_BLACK CAP_GREY\" } status_ss { shelf: 5 slot: 1 is_filled: true description: \"BASE_BLACK CAP_BLACK\" } status_ss { shelf: 0 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 0 is_filled: false description: "" } status_ss { shelf: 1 slot: 2 is_filled: false description: "" } status_ss { shelf: 1 slot: 3 is_filled: false description: "" } status_ss { shelf: 1 slot: 4 is_filled: false description: "" } status_ss { shelf: 1 slot: 5 is_filled: false description: "" } status_ss { shelf: 1 slot: 6 is_filled: false description: "" } status_ss { shelf: 1 slot: 7 is_filled: false description: "" } status_ss { shelf: 2 slot: 0 is_filled: false description: "" } status_ss { shelf: 2 slot: 2 is_filled: false description: "" } status_ss { shelf: 2 slot: 3 is_filled: false description: "" } status_ss { shelf: 2 slot: 4 is_filled: false description: "" } status_ss { shelf: 2 slot: 5 is_filled: false description: "" } status_ss { shelf: 2 slot: 6 is_filled: false description: "" } status_ss { shelf: 2 slot: 7 is_filled: false description: "" } status_ss { shelf: 3 slot: 0 is_filled: false description: "" } status_ss { shelf: 3 slot: 2 is_filled: false description: "" } status_ss { shelf: 3 slot: 3 is_filled: false description: "" } status_ss { shelf: 3 slot: 4 is_filled: false description: "" } status_ss { shelf: 3 slot: 5 is_filled: false description: "" } status_ss { shelf: 3 slot: 6 is_filled: false description: "" } status_ss { shelf: 3 slot: 7 is_filled: false description: "" } status_ss { shelf: 4 slot: 0 is_filled: false description: "" } status_ss { shelf: 4 slot: 2 is_filled: false description: "" } status_ss { shelf: 4 slot: 3 is_filled: false description: "" } status_ss { shelf: 4 slot: 4 is_filled: false description: "" } status_ss { shelf: 4 slot: 5 is_filled: false description: "" } status_ss { shelf: 4 slot: 6 is_filled: false description: "" } status_ss { shelf: 4 slot: 7 is_filled: false description: "" } status_ss { shelf: 5 slot: 0 is_filled: false description: "" } status_ss { shelf: 5 slot: 2 is_filled: false description: "" } status_ss { shelf: 5 slot: 3 is_filled: false description: "" } status_ss { shelf: 5 slot: 4 is_filled: false description: "" } status_ss { shelf: 5 slot: 5 is_filled: false description: "" } status_ss { shelf: 5 slot: 6 is_filled: false description: "" } status_ss { shelf: 5 slot: 7 is_filled: false description: "" } 5: 242 6:241 }",
"machines { name: \"M-RS1\" type: \"RS\" state: \"IDLE\" team_color: MAGENTA ring_colors: RING_ORANGE ring_colors: RING_GREEN 5: 212 6: 211 }",
"machines { name: \"M-CS2\" type: \"CS\" state: \"IDLE\" team_color: MAGENTA 5: 204 6: 203 }",
"machines { name: \"M-RS2\" type: \"RS\" state: \"IDLE\" team_color: MAGENTA ring_colors: RING_BLUE ring_colors: RING_YELLOW 5: 214 6: 213 }",
"machines { name: \"M-CS1\" type: \"CS\" state: \"IDLE\" team_color: MAGENTA 5: 202 6: 201 }",
"rings { ring_color: RING_GREEN raw_material: 1 }",
"rings { ring_color: RING_BLUE raw_material: 2 }",
"rings { ring_color: RING_ORANGE raw_material: 0 }",
"rings { ring_color: RING_YELLOW raw_material: 0 }", 

"orders { id: 1 complexity: C1 base_color: BASE_SILVER ring_colors: RING_YELLOW cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 0 delivery_period_end: 1200 delivery_gate: 3 competitive: false }",

"orders { id: 2 complexity: C2 base_color: BASE_SILVER ring_colors: RING_ORANGE ring_colors: RING_GREEN cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 0 delivery_period_end: 1200 delivery_gate: 3 competitive: false }",

"orders { id: 3 complexity: C3 base_color: BASE_BLACK ring_colors: RING_YELLOW ring_colors: RING_ORANGE ring_colors: RING_GREEN cap_color: CAP_BLACK quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 368 delivery_period_end: 518 delivery_gate: 2 competitive: false }",

"orders { id: 4 complexity: C1 base_color: BASE_SILVER ring_colors: RING_BLUE cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 400 delivery_period_end: 573 delivery_gate: 1 competitive: false }",

"orders { id: 5 complexity: C3 base_color: BASE_RED ring_colors: RING_ORANGE ring_colors: RING_BLUE ring_colors: RING_GREEN cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 545 delivery_period_end: 730 delivery_gate: 3 competitive: false }"
 };


vector<std::string> debug_refbox_msgs_3 = {
"team MAGENTA",
"machines { name: \"M-BS\" type: \"BS\" state: \"IDLE\" team_color: MAGENTA 5: 222 6: 221 }",
"machines { name: \"M-DS\" type: \"DS\" state: \"IDLE\" team_color: MAGENTA 5: 232 6: 231 }",
"machines { name: \"M-SS\" type: \"SS\" state: \"IDLE\" team_color: MAGENTA status_ss { shelf: 0 slot: 1 is_filled: true description: \"BASE_RED CAP_GREY\" } status_ss { shelf: 1 slot: 1 is_filled: true description: \"BASE_RED CAP_BLACK\" } status_ss { shelf: 2 slot: 1 is_filled: true description: \"BASE_SILVER CAP_GREY\" } status_ss { shelf: 3 slot: 1 is_filled: true description: \"BASE_SILVER CAP_BLACK\" } status_ss { shelf: 4 slot: 1 is_filled: true description: \"BASE_BLACK CAP_GREY\" } status_ss { shelf: 5 slot: 1 is_filled: true description: \"BASE_BLACK CAP_BLACK\" } status_ss { shelf: 0 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 7 is_filled: false description: \"\" } 5: 242 6: 241 }",
"machines { name: \"M-RS1\" type: \"RS\" state: \"IDLE\" team_color: MAGENTA ring_colors: RING_YELLOW ring_colors: RING_GREEN 5: 212 6: 211 }",
"machines { name: \"M-CS2\" type: \"CS\" state: \"IDLE\" team_color: MAGENTA 5: 204 6: 203 }",
"machines { name: \"M-RS2\" type: \"RS\" state: \"IDLE\" team_color: MAGENTA ring_colors: RING_BLUE ring_colors: RING_ORANGE 5: 214 6: 213 }",
"machines { name: \"M-CS1\" type: \"CS\" state: \"IDLE\" team_color: MAGENTA 5: 202 6: 201 }",
"rings { ring_color: RING_GREEN raw_material: 0 }",
"rings { ring_color: RING_BLUE raw_material: 0 }",
"rings { ring_color: RING_ORANGE raw_material: 2 }",
"rings { ring_color: RING_YELLOW raw_material: 1 }", 

"machines { name: \"M-BS\" type: \"BS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z53 rotation: 180 5: 222 6: 221 }",
"machines { name: \"M-DS\" type: \"DS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z57 rotation: 270 5: 232 6: 231 }",
"machines { name: \"M-SS\" type: \"SS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z77 rotation: 90 status_ss { shelf: 0 slot: 1 is_filled: true description: \"BASE_RED CAP_GREY\" } status_ss { shelf: 1 slot: 1 is_filled: true description: \"BASE_RED CAP_BLACK\" } status_ss { shelf: 2 slot: 1 is_filled: true description: \"BASE_SILVER CAP_GREY\" } status_ss { shelf: 3 slot: 1 is_filled: true description: \"BASE_SILVER CAP_BLACK\" } status_ss { shelf: 4 slot: 1 is_filled: true description: \"BASE_BLACK CAP_GREY\" } status_ss { shelf: 5 slot: 1 is_filled: true description: \"BASE_BLACK CAP_BLACK\" } status_ss { shelf: 0 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 0 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 1 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 2 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 3 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 4 slot: 7 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 0 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 2 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 3 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 4 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 5 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 6 is_filled: false description: \"\" } status_ss { shelf: 5 slot: 7 is_filled: false description: \"\" } 5: 242 6: 241 }",
"machines { name: \"M-RS2\" type: \"RS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z55 rotation: 180 ring_colors: RING_BLUE ring_colors: RING_ORANGE 5: 214 6: 213 }",
"machines { name: \"M-CS1\" type: \"CS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z65 rotation: 180 5: 202 6: 201 }",
"machines { name: \"M-RS1\" type: \"RS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z33 rotation: 270 ring_colors: RING_YELLOW ring_colors: RING_GREEN 5: 212 6: 211 }",
"machines { name: \"M-CS2\" type: \"CS\" state: \"IDLE\" team_color: MAGENTA zone: M_Z24 rotation: 0 5: 204 6: 203 }",

"orders { id: 1 complexity: C0 base_color: BASE_SILVER cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 0 delivery_period_end: 1200 delivery_gate: 2 competitive: false }",

"orders { id: 2 complexity: C1 base_color: BASE_RED ring_colors: RING_BLUE cap_color: CAP_BLACK quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 0 delivery_period_end: 1200 delivery_gate: 1 competitive: false }",

"orders { id: 3 complexity: C2 base_color: BASE_SILVER ring_colors: RING_ORANGE ring_colors: RING_GREEN cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 0 delivery_period_end: 1200 delivery_gate: 3 competitive: false }",

"orders { id: 4 complexity: C3 base_color: BASE_BLACK ring_colors: RING_YELLOW ring_colors: RING_ORANGE ring_colors: RING_GREEN cap_color: CAP_BLACK quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 368 delivery_period_end: 518 delivery_gate: 2 competitive: false }",
/*
"orders { id: 5 complexity: C1 base_color: BASE_SILVER ring_colors: RING_BLUE cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 400 delivery_period_end: 573 delivery_gate: 1 competitive: false }",

"orders { id: 6 complexity: C3 base_color: BASE_RED ring_colors: RING_ORANGE ring_colors: RING_BLUE ring_colors: RING_GREEN cap_color: CAP_GREY quantity_requested: 1 quantity_delivered_cyan: 0 quantity_delivered_magenta: 0 delivery_period_begin: 545 delivery_period_end: 730 delivery_gate: 3 competitive: false }"*/
 };

    ros::Publisher pub_refbox;
    ros::Publisher pub_plans;

int refbox_debug(){

    vector<std::string> debug_array_r = debug_refbox_msgs_3;

    int message_no = 0;

    ros::Rate r(1);

    r.sleep();

    while (ros::ok()) {

        
        if(message_no < debug_array_r.size()){
            
            std::stringstream ss;
            ss << debug_array_r[message_no];
            std_msgs::String refbox_msg;
            refbox_msg.data = ss.str();
            std::cout << "publishing: " << ss.str() << std::endl;
            pub_refbox.publish(refbox_msg);
            
            message_no++;
        } /*else {
            message_no = 0;
        }*/


        ros::spinOnce();
        r.sleep();
    }

 return 0;   
}

int plans_debug(){

    /*debug_vector.push_back(debug_instructions_1);
    debug_vector.push_back(debug_instructions_2);
    debug_vector.push_back(debug_instructions_3);
    debug_vector.push_back(debug_instructions_4);
    debug_vector.push_back(debug_instructions_grasping_1);
    debug_vector.push_back(debug_instructions_grasping_2);*/
    debug_vector.push_back(debug_instructions_grasping_test);
    

    //debug_vector.push_back(debug_instructions_5);

    int message_no = 0;

    ros::Rate r(1);

//std::cout << "debug size " << debug_vector.size() << std::endl;

    r.sleep();

    while (ros::ok()) {
//std::cout << "message no " << message_no << std::endl;
        if(message_no < debug_vector.size()){
            simulator::SinglePlan plan_msg;
            plan_msg.plan_steps = debug_vector[message_no];

            std::cout << "publishing: " << plan_msg << std::endl;


            pub_plans.publish(plan_msg);

            message_no++;
        }

        ros::spinOnce();
        r.sleep();
    }
 return 0;   
}


void sendPlanCallback(const std_msgs::String::ConstPtr& send_plan_msg){
    std::string content = send_plan_msg->data;
    int debug_type = std::stoi(content);
    switch (debug_type) {
        case 0:
            ROS_INFO_STREAM("------refbox_debug--------- ");
            refbox_debug();
            break;
        case 1:
            ROS_INFO_STREAM("------plans_debug--------- ");
            plans_debug();
            break;
        default:
            std::cout << "no debug selected" << std::endl;
            break;
    }
}


    /*
        0-refbox_msgs
        1-plan_msgs
    */
    int debug_type = 1;

/*used to send plans when the real refbox sends the production/start signal */
ros::Subscriber send_plan_signal_sub;

int main(int argc, char** argv) {

    ros::init(argc, argv, "refbox_comm_node");
    ros::NodeHandle n;


    pub_refbox = n.advertise<std_msgs::String>("/refbox_msgs", 1000);
    pub_plans = n.advertise<simulator::SinglePlan>("/plan_msg", 1000);

    /*When using this callback, the switch should not be used*/
    send_plan_signal_sub = n.subscribe("/send_plan_msg",100, sendPlanCallback);
    //if not using the subscriber, the next line should be deleted
    ros::Rate r(1);r.sleep();while (ros::ok()) {ros::spinOnce();r.sleep();}
    

    switch (debug_type) {
    case 0:
        refbox_debug();
        break;
        case 1:
        plans_debug();
        break;
    default:
    std::cout << "no debug selected" << std::endl;
        break;
    }

    return 0;
}