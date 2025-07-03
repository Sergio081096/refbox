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

class InitKDBRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filePath = null;
      this.run = null;
    }
    else {
      if (initObj.hasOwnProperty('filePath')) {
        this.filePath = initObj.filePath
      }
      else {
        this.filePath = '';
      }
      if (initObj.hasOwnProperty('run')) {
        this.run = initObj.run
      }
      else {
        this.run = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitKDBRequest
    // Serialize message field [filePath]
    bufferOffset = _serializer.string(obj.filePath, buffer, bufferOffset);
    // Serialize message field [run]
    bufferOffset = _serializer.bool(obj.run, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitKDBRequest
    let len;
    let data = new InitKDBRequest(null);
    // Deserialize message field [filePath]
    data.filePath = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [run]
    data.run = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.filePath);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/InitKDBRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d40ee22877bfab4f2e1de8cb2e7b970';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string filePath
    bool run
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InitKDBRequest(null);
    if (msg.filePath !== undefined) {
      resolved.filePath = msg.filePath;
    }
    else {
      resolved.filePath = ''
    }

    if (msg.run !== undefined) {
      resolved.run = msg.run;
    }
    else {
      resolved.run = false
    }

    return resolved;
    }
};

class InitKDBResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitKDBResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitKDBResponse
    let len;
    let data = new InitKDBResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/InitKDBResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InitKDBResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: InitKDBRequest,
  Response: InitKDBResponse,
  md5sum() { return 'a472717e40f2402632296f64bb78ba8e'; },
  datatype() { return 'simulator/InitKDB'; }
};
