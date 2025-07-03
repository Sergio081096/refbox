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

class simulator_manipulatorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ROS_System = null;
      this.action = null;
      this.object = null;
    }
    else {
      if (initObj.hasOwnProperty('ROS_System')) {
        this.ROS_System = initObj.ROS_System
      }
      else {
        this.ROS_System = '';
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
      if (initObj.hasOwnProperty('object')) {
        this.object = initObj.object
      }
      else {
        this.object = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_manipulatorRequest
    // Serialize message field [ROS_System]
    bufferOffset = _serializer.string(obj.ROS_System, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [object]
    bufferOffset = _serializer.string(obj.object, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_manipulatorRequest
    let len;
    let data = new simulator_manipulatorRequest(null);
    // Deserialize message field [ROS_System]
    data.ROS_System = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [object]
    data.object = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.ROS_System);
    length += _getByteLength(object.action);
    length += _getByteLength(object.object);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_manipulatorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00f6e6e66008fca607f1a83213936525';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ROS_System
    string action
    string object
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_manipulatorRequest(null);
    if (msg.ROS_System !== undefined) {
      resolved.ROS_System = msg.ROS_System;
    }
    else {
      resolved.ROS_System = ''
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    if (msg.object !== undefined) {
      resolved.object = msg.object;
    }
    else {
      resolved.object = ''
    }

    return resolved;
    }
};

class simulator_manipulatorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.answer = null;
    }
    else {
      if (initObj.hasOwnProperty('answer')) {
        this.answer = initObj.answer
      }
      else {
        this.answer = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_manipulatorResponse
    // Serialize message field [answer]
    bufferOffset = _serializer.string(obj.answer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_manipulatorResponse
    let len;
    let data = new simulator_manipulatorResponse(null);
    // Deserialize message field [answer]
    data.answer = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.answer);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_manipulatorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7e708f879c94bb931716d8f4f130f30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string answer
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_manipulatorResponse(null);
    if (msg.answer !== undefined) {
      resolved.answer = msg.answer;
    }
    else {
      resolved.answer = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: simulator_manipulatorRequest,
  Response: simulator_manipulatorResponse,
  md5sum() { return '79bc46f7abed5f24dda02ac0e109caf4'; },
  datatype() { return 'simulator/simulator_manipulator'; }
};
