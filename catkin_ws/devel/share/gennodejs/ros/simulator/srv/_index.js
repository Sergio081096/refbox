
"use strict";

let simulator_light = require('./simulator_light.js')
let simulator_base = require('./simulator_base.js')
let ClearKDB = require('./ClearKDB.js')
let simulator_find_obj = require('./simulator_find_obj.js')
let planning_cmd = require('./planning_cmd.js')
let simulator_action_planner = require('./simulator_action_planner.js')
let simulator_object_interaction = require('./simulator_object_interaction.js')
let simulator_algorithm_result = require('./simulator_algorithm_result.js')
let InitKDB = require('./InitKDB.js')
let simulator_robot_laser_values = require('./simulator_robot_laser_values.js')
let ResetKDB = require('./ResetKDB.js')
let simulator_robot_step = require('./simulator_robot_step.js')
let simulator_parameters = require('./simulator_parameters.js')
let simulator_MoveRealRobot = require('./simulator_MoveRealRobot.js')
let simulator_manipulator = require('./simulator_manipulator.js')
let simulator_set_light_position = require('./simulator_set_light_position.js')
let simulator_laser = require('./simulator_laser.js')
let QueryKDB = require('./QueryKDB.js')
let simulator_stop = require('./simulator_stop.js')

module.exports = {
  simulator_light: simulator_light,
  simulator_base: simulator_base,
  ClearKDB: ClearKDB,
  simulator_find_obj: simulator_find_obj,
  planning_cmd: planning_cmd,
  simulator_action_planner: simulator_action_planner,
  simulator_object_interaction: simulator_object_interaction,
  simulator_algorithm_result: simulator_algorithm_result,
  InitKDB: InitKDB,
  simulator_robot_laser_values: simulator_robot_laser_values,
  ResetKDB: ResetKDB,
  simulator_robot_step: simulator_robot_step,
  simulator_parameters: simulator_parameters,
  simulator_MoveRealRobot: simulator_MoveRealRobot,
  simulator_manipulator: simulator_manipulator,
  simulator_set_light_position: simulator_set_light_position,
  simulator_laser: simulator_laser,
  QueryKDB: QueryKDB,
  simulator_stop: simulator_stop,
};
