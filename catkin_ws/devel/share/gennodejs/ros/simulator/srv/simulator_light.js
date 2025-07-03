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

class simulator_lightRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.req = null;
    }
    else {
      if (initObj.hasOwnProperty('req')) {
        this.req = initObj.req
      }
      else {
        this.req = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_lightRequest
    // Serialize message field [req]
    bufferOffset = _serializer.int32(obj.req, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_lightRequest
    let len;
    let data = new simulator_lightRequest(null);
    // Deserialize message field [req]
    data.req = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_lightRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '688ec893d5ff2cccc11b9bc8bc41109b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 req
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_lightRequest(null);
    if (msg.req !== undefined) {
      resolved.req = msg.req;
    }
    else {
      resolved.req = 0
    }

    return resolved;
    }
};

class simulator_lightResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = new Array(8).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_lightResponse
    // Check that the constant length array field [values] has the right length
    if (obj.values.length !== 8) {
      throw new Error('Unable to serialize array field values - length must be 8')
    }
    // Serialize message field [values]
    bufferOffset = _arraySerializer.float32(obj.values, buffer, bufferOffset, 8);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_lightResponse
    let len;
    let data = new simulator_lightResponse(null);
    // Deserialize message field [values]
    data.values = _arrayDeserializer.float32(buffer, bufferOffset, 8)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_lightResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14066f48a82f2883da023bd184c3f4ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[8] values
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_lightResponse(null);
    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = new Array(8).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: simulator_lightRequest,
  Response: simulator_lightResponse,
  md5sum() { return 'f0a363bdf6e9db5ed005776d88d3f68d'; },
  datatype() { return 'simulator/simulator_light'; }
};
