// Auto-generated. Do not edit!

// (in-package simulator.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class simulator_parametersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request = null;
    }
    else {
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_parametersRequest
    // Serialize message field [request]
    bufferOffset = _serializer.bool(obj.request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_parametersRequest
    let len;
    let data = new simulator_parametersRequest(null);
    // Deserialize message field [request]
    data.request = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_parametersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f7e5ad6ab0ddf42c5727a195315a470';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool request
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_parametersRequest(null);
    if (msg.request !== undefined) {
      resolved.request = msg.request;
    }
    else {
      resolved.request = false
    }

    return resolved;
    }
};

class simulator_parametersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_x = null;
      this.robot_y = null;
      this.robot_theta = null;
      this.robot_radio = null;
      this.robot_max_advance = null;
      this.robot_turn_angle = null;
      this.laser_num_sensors = null;
      this.laser_origin = null;
      this.laser_range = null;
      this.laser_value = null;
      this.world_name = null;
      this.noise = null;
      this.run = null;
      this.light_x = null;
      this.light_y = null;
      this.behavior = null;
      this.steps = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_x')) {
        this.robot_x = initObj.robot_x
      }
      else {
        this.robot_x = 0.0;
      }
      if (initObj.hasOwnProperty('robot_y')) {
        this.robot_y = initObj.robot_y
      }
      else {
        this.robot_y = 0.0;
      }
      if (initObj.hasOwnProperty('robot_theta')) {
        this.robot_theta = initObj.robot_theta
      }
      else {
        this.robot_theta = 0.0;
      }
      if (initObj.hasOwnProperty('robot_radio')) {
        this.robot_radio = initObj.robot_radio
      }
      else {
        this.robot_radio = 0.0;
      }
      if (initObj.hasOwnProperty('robot_max_advance')) {
        this.robot_max_advance = initObj.robot_max_advance
      }
      else {
        this.robot_max_advance = 0.0;
      }
      if (initObj.hasOwnProperty('robot_turn_angle')) {
        this.robot_turn_angle = initObj.robot_turn_angle
      }
      else {
        this.robot_turn_angle = 0.0;
      }
      if (initObj.hasOwnProperty('laser_num_sensors')) {
        this.laser_num_sensors = initObj.laser_num_sensors
      }
      else {
        this.laser_num_sensors = 0;
      }
      if (initObj.hasOwnProperty('laser_origin')) {
        this.laser_origin = initObj.laser_origin
      }
      else {
        this.laser_origin = 0.0;
      }
      if (initObj.hasOwnProperty('laser_range')) {
        this.laser_range = initObj.laser_range
      }
      else {
        this.laser_range = 0.0;
      }
      if (initObj.hasOwnProperty('laser_value')) {
        this.laser_value = initObj.laser_value
      }
      else {
        this.laser_value = 0.0;
      }
      if (initObj.hasOwnProperty('world_name')) {
        this.world_name = initObj.world_name
      }
      else {
        this.world_name = '';
      }
      if (initObj.hasOwnProperty('noise')) {
        this.noise = initObj.noise
      }
      else {
        this.noise = false;
      }
      if (initObj.hasOwnProperty('run')) {
        this.run = initObj.run
      }
      else {
        this.run = false;
      }
      if (initObj.hasOwnProperty('light_x')) {
        this.light_x = initObj.light_x
      }
      else {
        this.light_x = 0.0;
      }
      if (initObj.hasOwnProperty('light_y')) {
        this.light_y = initObj.light_y
      }
      else {
        this.light_y = 0.0;
      }
      if (initObj.hasOwnProperty('behavior')) {
        this.behavior = initObj.behavior
      }
      else {
        this.behavior = 0;
      }
      if (initObj.hasOwnProperty('steps')) {
        this.steps = initObj.steps
      }
      else {
        this.steps = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_parametersResponse
    // Serialize message field [robot_x]
    bufferOffset = _serializer.float32(obj.robot_x, buffer, bufferOffset);
    // Serialize message field [robot_y]
    bufferOffset = _serializer.float32(obj.robot_y, buffer, bufferOffset);
    // Serialize message field [robot_theta]
    bufferOffset = _serializer.float32(obj.robot_theta, buffer, bufferOffset);
    // Serialize message field [robot_radio]
    bufferOffset = _serializer.float32(obj.robot_radio, buffer, bufferOffset);
    // Serialize message field [robot_max_advance]
    bufferOffset = _serializer.float32(obj.robot_max_advance, buffer, bufferOffset);
    // Serialize message field [robot_turn_angle]
    bufferOffset = _serializer.float32(obj.robot_turn_angle, buffer, bufferOffset);
    // Serialize message field [laser_num_sensors]
    bufferOffset = _serializer.int32(obj.laser_num_sensors, buffer, bufferOffset);
    // Serialize message field [laser_origin]
    bufferOffset = _serializer.float32(obj.laser_origin, buffer, bufferOffset);
    // Serialize message field [laser_range]
    bufferOffset = _serializer.float32(obj.laser_range, buffer, bufferOffset);
    // Serialize message field [laser_value]
    bufferOffset = _serializer.float32(obj.laser_value, buffer, bufferOffset);
    // Serialize message field [world_name]
    bufferOffset = _serializer.string(obj.world_name, buffer, bufferOffset);
    // Serialize message field [noise]
    bufferOffset = _serializer.bool(obj.noise, buffer, bufferOffset);
    // Serialize message field [run]
    bufferOffset = _serializer.bool(obj.run, buffer, bufferOffset);
    // Serialize message field [light_x]
    bufferOffset = _serializer.float32(obj.light_x, buffer, bufferOffset);
    // Serialize message field [light_y]
    bufferOffset = _serializer.float32(obj.light_y, buffer, bufferOffset);
    // Serialize message field [behavior]
    bufferOffset = _serializer.int32(obj.behavior, buffer, bufferOffset);
    // Serialize message field [steps]
    bufferOffset = _serializer.int32(obj.steps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_parametersResponse
    let len;
    let data = new simulator_parametersResponse(null);
    // Deserialize message field [robot_x]
    data.robot_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_y]
    data.robot_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_theta]
    data.robot_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_radio]
    data.robot_radio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_max_advance]
    data.robot_max_advance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_turn_angle]
    data.robot_turn_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [laser_num_sensors]
    data.laser_num_sensors = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [laser_origin]
    data.laser_origin = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [laser_range]
    data.laser_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [laser_value]
    data.laser_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [world_name]
    data.world_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [noise]
    data.noise = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run]
    data.run = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [light_x]
    data.light_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [light_y]
    data.light_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [behavior]
    data.behavior = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steps]
    data.steps = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.world_name);
    return length + 62;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_parametersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3a3242b503b35f6fa2f7b2245605401';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 robot_x
    float32 robot_y
    float32 robot_theta
    float32 robot_radio
    float32 robot_max_advance
    float32 robot_turn_angle
    int32 laser_num_sensors
    float32 laser_origin
    float32 laser_range
    float32 laser_value
    string world_name
    bool noise
    bool run
    float32 light_x
    float32 light_y
    int32 behavior
    int32 steps
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_parametersResponse(null);
    if (msg.robot_x !== undefined) {
      resolved.robot_x = msg.robot_x;
    }
    else {
      resolved.robot_x = 0.0
    }

    if (msg.robot_y !== undefined) {
      resolved.robot_y = msg.robot_y;
    }
    else {
      resolved.robot_y = 0.0
    }

    if (msg.robot_theta !== undefined) {
      resolved.robot_theta = msg.robot_theta;
    }
    else {
      resolved.robot_theta = 0.0
    }

    if (msg.robot_radio !== undefined) {
      resolved.robot_radio = msg.robot_radio;
    }
    else {
      resolved.robot_radio = 0.0
    }

    if (msg.robot_max_advance !== undefined) {
      resolved.robot_max_advance = msg.robot_max_advance;
    }
    else {
      resolved.robot_max_advance = 0.0
    }

    if (msg.robot_turn_angle !== undefined) {
      resolved.robot_turn_angle = msg.robot_turn_angle;
    }
    else {
      resolved.robot_turn_angle = 0.0
    }

    if (msg.laser_num_sensors !== undefined) {
      resolved.laser_num_sensors = msg.laser_num_sensors;
    }
    else {
      resolved.laser_num_sensors = 0
    }

    if (msg.laser_origin !== undefined) {
      resolved.laser_origin = msg.laser_origin;
    }
    else {
      resolved.laser_origin = 0.0
    }

    if (msg.laser_range !== undefined) {
      resolved.laser_range = msg.laser_range;
    }
    else {
      resolved.laser_range = 0.0
    }

    if (msg.laser_value !== undefined) {
      resolved.laser_value = msg.laser_value;
    }
    else {
      resolved.laser_value = 0.0
    }

    if (msg.world_name !== undefined) {
      resolved.world_name = msg.world_name;
    }
    else {
      resolved.world_name = ''
    }

    if (msg.noise !== undefined) {
      resolved.noise = msg.noise;
    }
    else {
      resolved.noise = false
    }

    if (msg.run !== undefined) {
      resolved.run = msg.run;
    }
    else {
      resolved.run = false
    }

    if (msg.light_x !== undefined) {
      resolved.light_x = msg.light_x;
    }
    else {
      resolved.light_x = 0.0
    }

    if (msg.light_y !== undefined) {
      resolved.light_y = msg.light_y;
    }
    else {
      resolved.light_y = 0.0
    }

    if (msg.behavior !== undefined) {
      resolved.behavior = msg.behavior;
    }
    else {
      resolved.behavior = 0
    }

    if (msg.steps !== undefined) {
      resolved.steps = msg.steps;
    }
    else {
      resolved.steps = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simulator_parametersRequest,
  Response: simulator_parametersResponse,
  md5sum() { return '666381c29fe97dd3096923cea005a173'; },
  datatype() { return 'simulator/simulator_parameters'; }
};
