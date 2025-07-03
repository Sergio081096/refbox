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

class simulator_robot_laser_valuesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensors = null;
    }
    else {
      if (initObj.hasOwnProperty('sensors')) {
        this.sensors = initObj.sensors
      }
      else {
        this.sensors = new Array(100).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_robot_laser_valuesRequest
    // Check that the constant length array field [sensors] has the right length
    if (obj.sensors.length !== 100) {
      throw new Error('Unable to serialize array field sensors - length must be 100')
    }
    // Serialize message field [sensors]
    bufferOffset = _arraySerializer.float32(obj.sensors, buffer, bufferOffset, 100);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_robot_laser_valuesRequest
    let len;
    let data = new simulator_robot_laser_valuesRequest(null);
    // Deserialize message field [sensors]
    data.sensors = _arrayDeserializer.float32(buffer, bufferOffset, 100)
    return data;
  }

  static getMessageSize(object) {
    return 400;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_robot_laser_valuesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e419bb63c59113a3a33a33958511350f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[100] sensors
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_robot_laser_valuesRequest(null);
    if (msg.sensors !== undefined) {
      resolved.sensors = msg.sensors;
    }
    else {
      resolved.sensors = new Array(100).fill(0)
    }

    return resolved;
    }
};

class simulator_robot_laser_valuesResponse {
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
        this.success = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_robot_laser_valuesResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int64(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_robot_laser_valuesResponse
    let len;
    let data = new simulator_robot_laser_valuesResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_robot_laser_valuesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f26af2399fbfbc8170d9a60ed7b9846';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_robot_laser_valuesResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: simulator_robot_laser_valuesRequest,
  Response: simulator_robot_laser_valuesResponse,
  md5sum() { return 'fed2e1160fc2ee00e074cbac3dfb8139'; },
  datatype() { return 'simulator/simulator_robot_laser_values'; }
};
