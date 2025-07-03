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

class simulator_laserRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_x = null;
      this.robot_y = null;
      this.robot_theta = null;
      this.new_simulation = null;
    }
    else {
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
      if (initObj.hasOwnProperty('robot_theta')) {
        this.robot_theta = initObj.robot_theta
      }
      else {
        this.robot_theta = 0.0;
      }
      if (initObj.hasOwnProperty('new_simulation')) {
        this.new_simulation = initObj.new_simulation
      }
      else {
        this.new_simulation = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_laserRequest
    // Serialize message field [robot_x]
    bufferOffset = _serializer.float32(obj.robot_x, buffer, bufferOffset);
    // Serialize message field [robot_y]
    bufferOffset = _serializer.float32(obj.robot_y, buffer, bufferOffset);
    // Serialize message field [robot_theta]
    bufferOffset = _serializer.float32(obj.robot_theta, buffer, bufferOffset);
    // Serialize message field [new_simulation]
    bufferOffset = _serializer.int32(obj.new_simulation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_laserRequest
    let len;
    let data = new simulator_laserRequest(null);
    // Deserialize message field [robot_x]
    data.robot_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_y]
    data.robot_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [robot_theta]
    data.robot_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [new_simulation]
    data.new_simulation = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_laserRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9121e8f7eca3a126128d3865e9b6a1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 robot_x
    float32 robot_y
    float32 robot_theta
    int32 new_simulation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_laserRequest(null);
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

    if (msg.robot_theta !== undefined) {
      resolved.robot_theta = msg.robot_theta;
    }
    else {
      resolved.robot_theta = 0.0
    }

    if (msg.new_simulation !== undefined) {
      resolved.new_simulation = msg.new_simulation;
    }
    else {
      resolved.new_simulation = 0
    }

    return resolved;
    }
};

class simulator_laserResponse {
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
        this.sensors = new Array(512).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_laserResponse
    // Check that the constant length array field [sensors] has the right length
    if (obj.sensors.length !== 512) {
      throw new Error('Unable to serialize array field sensors - length must be 512')
    }
    // Serialize message field [sensors]
    bufferOffset = _arraySerializer.float32(obj.sensors, buffer, bufferOffset, 512);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_laserResponse
    let len;
    let data = new simulator_laserResponse(null);
    // Deserialize message field [sensors]
    data.sensors = _arrayDeserializer.float32(buffer, bufferOffset, 512)
    return data;
  }

  static getMessageSize(object) {
    return 2048;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_laserResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8603e386fc4f503ff79022b9055ceccc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[512] sensors
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_laserResponse(null);
    if (msg.sensors !== undefined) {
      resolved.sensors = msg.sensors;
    }
    else {
      resolved.sensors = new Array(512).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: simulator_laserRequest,
  Response: simulator_laserResponse,
  md5sum() { return 'd1e42417fddd5b94b1b79a5297e533e5'; },
  datatype() { return 'simulator/simulator_laser'; }
};
