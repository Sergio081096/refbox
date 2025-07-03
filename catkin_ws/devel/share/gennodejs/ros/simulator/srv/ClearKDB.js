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

class ClearKDBRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clear = null;
    }
    else {
      if (initObj.hasOwnProperty('clear')) {
        this.clear = initObj.clear
      }
      else {
        this.clear = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClearKDBRequest
    // Serialize message field [clear]
    bufferOffset = _serializer.bool(obj.clear, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClearKDBRequest
    let len;
    let data = new ClearKDBRequest(null);
    // Deserialize message field [clear]
    data.clear = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/ClearKDBRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f13874ec47789a29a9f87f75379435d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool clear
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClearKDBRequest(null);
    if (msg.clear !== undefined) {
      resolved.clear = msg.clear;
    }
    else {
      resolved.clear = false
    }

    return resolved;
    }
};

class ClearKDBResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cleared = null;
    }
    else {
      if (initObj.hasOwnProperty('cleared')) {
        this.cleared = initObj.cleared
      }
      else {
        this.cleared = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClearKDBResponse
    // Serialize message field [cleared]
    bufferOffset = _serializer.bool(obj.cleared, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClearKDBResponse
    let len;
    let data = new ClearKDBResponse(null);
    // Deserialize message field [cleared]
    data.cleared = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/ClearKDBResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e19ee16a20ef206251e0359e9ec07ab5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool cleared
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClearKDBResponse(null);
    if (msg.cleared !== undefined) {
      resolved.cleared = msg.cleared;
    }
    else {
      resolved.cleared = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ClearKDBRequest,
  Response: ClearKDBResponse,
  md5sum() { return 'c0cba2f76fe2be4cac55cc053705feaa'; },
  datatype() { return 'simulator/ClearKDB'; }
};
