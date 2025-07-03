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

class simulator_stopRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stop = null;
    }
    else {
      if (initObj.hasOwnProperty('stop')) {
        this.stop = initObj.stop
      }
      else {
        this.stop = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_stopRequest
    // Serialize message field [stop]
    bufferOffset = _serializer.bool(obj.stop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_stopRequest
    let len;
    let data = new simulator_stopRequest(null);
    // Deserialize message field [stop]
    data.stop = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_stopRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71f1172402e56b82716ca71681cded6b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool stop 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_stopRequest(null);
    if (msg.stop !== undefined) {
      resolved.stop = msg.stop;
    }
    else {
      resolved.stop = false
    }

    return resolved;
    }
};

class simulator_stopResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resp = null;
    }
    else {
      if (initObj.hasOwnProperty('resp')) {
        this.resp = initObj.resp
      }
      else {
        this.resp = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_stopResponse
    // Serialize message field [resp]
    bufferOffset = _serializer.bool(obj.resp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_stopResponse
    let len;
    let data = new simulator_stopResponse(null);
    // Deserialize message field [resp]
    data.resp = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_stopResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3a98d806e1c4fee01a17d597e27ea8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool resp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_stopResponse(null);
    if (msg.resp !== undefined) {
      resolved.resp = msg.resp;
    }
    else {
      resolved.resp = false
    }

    return resolved;
    }
};

module.exports = {
  Request: simulator_stopRequest,
  Response: simulator_stopResponse,
  md5sum() { return '095e4397fe01973ad978411bb58eda37'; },
  datatype() { return 'simulator/simulator_stop'; }
};
