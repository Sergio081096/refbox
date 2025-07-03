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

class simulator_MoveRealRobotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.theta = null;
      this.distance = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_MoveRealRobotRequest
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_MoveRealRobotRequest
    let len;
    let data = new simulator_MoveRealRobotRequest(null);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_MoveRealRobotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '428ccb9659c7d3f0c6c3a803af59d6ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 theta
    float32 distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_MoveRealRobotRequest(null);
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

    return resolved;
    }
};

class simulator_MoveRealRobotResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.done = null;
    }
    else {
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_MoveRealRobotResponse
    // Serialize message field [done]
    bufferOffset = _serializer.float32(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_MoveRealRobotResponse
    let len;
    let data = new simulator_MoveRealRobotResponse(null);
    // Deserialize message field [done]
    data.done = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_MoveRealRobotResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c6a688b7fb35639b2b6480a10592731';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 done
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_MoveRealRobotResponse(null);
    if (msg.done !== undefined) {
      resolved.done = msg.done;
    }
    else {
      resolved.done = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: simulator_MoveRealRobotRequest,
  Response: simulator_MoveRealRobotResponse,
  md5sum() { return 'f6c91c9ac3aa81fb2b1334bdb82aee4d'; },
  datatype() { return 'simulator/simulator_MoveRealRobot'; }
};
