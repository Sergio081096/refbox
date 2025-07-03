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

class simulator_robot_stepRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.theta = null;
      this.distance = null;
      this.sensors = null;
      this.stop = null;
    }
    else {
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('sensors')) {
        this.sensors = initObj.sensors
      }
      else {
        this.sensors = new Array(512).fill(0);
      }
      if (initObj.hasOwnProperty('stop')) {
        this.stop = initObj.stop
      }
      else {
        this.stop = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_robot_stepRequest
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Check that the constant length array field [sensors] has the right length
    if (obj.sensors.length !== 512) {
      throw new Error('Unable to serialize array field sensors - length must be 512')
    }
    // Serialize message field [sensors]
    bufferOffset = _arraySerializer.float32(obj.sensors, buffer, bufferOffset, 512);
    // Serialize message field [stop]
    bufferOffset = _serializer.bool(obj.stop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_robot_stepRequest
    let len;
    let data = new simulator_robot_stepRequest(null);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sensors]
    data.sensors = _arrayDeserializer.float32(buffer, bufferOffset, 512)
    // Deserialize message field [stop]
    data.stop = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2057;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_robot_stepRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55fcd6c1882b7be6df8bd89be472cdeb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 theta
    float32 distance
    float32[512] sensors
    bool stop
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_robot_stepRequest(null);
    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.sensors !== undefined) {
      resolved.sensors = msg.sensors;
    }
    else {
      resolved.sensors = new Array(512).fill(0)
    }

    if (msg.stop !== undefined) {
      resolved.stop = msg.stop;
    }
    else {
      resolved.stop = false
    }

    return resolved;
    }
};

class simulator_robot_stepResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.robot_x = null;
      this.robot_y = null;
      this.theta = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = 0;
      }
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
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_robot_stepResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int64(obj.success, buffer, bufferOffset);
    // Serialize message field [robot_x]
    bufferOffset = _serializer.float32(obj.robot_x, buffer, bufferOffset);
    // Serialize message field [robot_y]
    bufferOffset = _serializer.float32(obj.robot_y, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_robot_stepResponse
    let len;
    let data = new simulator_robot_stepResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [robot_x]
    data.robot_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_y]
    data.robot_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_robot_stepResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b14c95024f78daedb38b11b4fec62303';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 success
    float32 robot_x
    float32 robot_y
    float32 theta
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_robot_stepResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = 0
    }

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

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: simulator_robot_stepRequest,
  Response: simulator_robot_stepResponse,
  md5sum() { return '61c07095849b4725350f87062a0db530'; },
  datatype() { return 'simulator/simulator_robot_step'; }
};
