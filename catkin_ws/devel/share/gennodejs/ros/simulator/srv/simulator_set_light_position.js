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

class simulator_set_light_positionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.light_x = null;
      this.light_y = null;
    }
    else {
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_set_light_positionRequest
    // Serialize message field [light_x]
    bufferOffset = _serializer.float32(obj.light_x, buffer, bufferOffset);
    // Serialize message field [light_y]
    bufferOffset = _serializer.float32(obj.light_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_set_light_positionRequest
    let len;
    let data = new simulator_set_light_positionRequest(null);
    // Deserialize message field [light_x]
    data.light_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [light_y]
    data.light_y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_set_light_positionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0928589eca381ffd96f6bd262e71266';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 light_x
    float32 light_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_set_light_positionRequest(null);
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

    return resolved;
    }
};

class simulator_set_light_positionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_set_light_positionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_set_light_positionResponse
    let len;
    let data = new simulator_set_light_positionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_set_light_positionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_set_light_positionResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: simulator_set_light_positionRequest,
  Response: simulator_set_light_positionResponse,
  md5sum() { return 'd56d73ee632c8aa7c9431df2ebbb2712'; },
  datatype() { return 'simulator/simulator_set_light_position'; }
};
