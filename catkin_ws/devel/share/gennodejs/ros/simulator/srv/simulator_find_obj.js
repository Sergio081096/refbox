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

class simulator_find_objRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ROS_System = null;
      this.action = null;
      this.object = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.arm = null;
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
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('arm')) {
        this.arm = initObj.arm
      }
      else {
        this.arm = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_find_objRequest
    // Serialize message field [ROS_System]
    bufferOffset = _serializer.string(obj.ROS_System, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [object]
    bufferOffset = _serializer.string(obj.object, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [arm]
    bufferOffset = _serializer.string(obj.arm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_find_objRequest
    let len;
    let data = new simulator_find_objRequest(null);
    // Deserialize message field [ROS_System]
    data.ROS_System = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [object]
    data.object = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm]
    data.arm = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.ROS_System);
    length += _getByteLength(object.action);
    length += _getByteLength(object.object);
    length += _getByteLength(object.arm);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_find_objRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e420a2b65a244089da5f3e7ddb162c8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ROS_System
    string action
    string object
    float32 x
    float32 y
    float32 z
    string arm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_find_objRequest(null);
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

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.arm !== undefined) {
      resolved.arm = msg.arm;
    }
    else {
      resolved.arm = ''
    }

    return resolved;
    }
};

class simulator_find_objResponse {
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
    // Serializes a message object of type simulator_find_objResponse
    // Serialize message field [answer]
    bufferOffset = _serializer.string(obj.answer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_find_objResponse
    let len;
    let data = new simulator_find_objResponse(null);
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
    return 'simulator/simulator_find_objResponse';
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
    const resolved = new simulator_find_objResponse(null);
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
  Request: simulator_find_objRequest,
  Response: simulator_find_objResponse,
  md5sum() { return '5d4b465f13d9abdf0754aeb1704ce89b'; },
  datatype() { return 'simulator/simulator_find_obj'; }
};
