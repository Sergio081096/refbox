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

class simulator_algorithm_resultRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nodes_algorithm = null;
      this.num_nodos = null;
    }
    else {
      if (initObj.hasOwnProperty('nodes_algorithm')) {
        this.nodes_algorithm = initObj.nodes_algorithm
      }
      else {
        this.nodes_algorithm = new Array(200).fill(0);
      }
      if (initObj.hasOwnProperty('num_nodos')) {
        this.num_nodos = initObj.num_nodos
      }
      else {
        this.num_nodos = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type simulator_algorithm_resultRequest
    // Check that the constant length array field [nodes_algorithm] has the right length
    if (obj.nodes_algorithm.length !== 200) {
      throw new Error('Unable to serialize array field nodes_algorithm - length must be 200')
    }
    // Serialize message field [nodes_algorithm]
    bufferOffset = _arraySerializer.int32(obj.nodes_algorithm, buffer, bufferOffset, 200);
    // Serialize message field [num_nodos]
    bufferOffset = _serializer.int32(obj.num_nodos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_algorithm_resultRequest
    let len;
    let data = new simulator_algorithm_resultRequest(null);
    // Deserialize message field [nodes_algorithm]
    data.nodes_algorithm = _arrayDeserializer.int32(buffer, bufferOffset, 200)
    // Deserialize message field [num_nodos]
    data.num_nodos = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 804;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_algorithm_resultRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f9bf1c621c94a08bbe9f7fd16b22915';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[200] nodes_algorithm
    int32 num_nodos 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_algorithm_resultRequest(null);
    if (msg.nodes_algorithm !== undefined) {
      resolved.nodes_algorithm = msg.nodes_algorithm;
    }
    else {
      resolved.nodes_algorithm = new Array(200).fill(0)
    }

    if (msg.num_nodos !== undefined) {
      resolved.num_nodos = msg.num_nodos;
    }
    else {
      resolved.num_nodos = 0
    }

    return resolved;
    }
};

class simulator_algorithm_resultResponse {
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
    // Serializes a message object of type simulator_algorithm_resultResponse
    // Serialize message field [success]
    bufferOffset = _serializer.int32(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type simulator_algorithm_resultResponse
    let len;
    let data = new simulator_algorithm_resultResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'simulator/simulator_algorithm_resultResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c2bcf2ff0894cb3058b1bf4c8c4175a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new simulator_algorithm_resultResponse(null);
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
  Request: simulator_algorithm_resultRequest,
  Response: simulator_algorithm_resultResponse,
  md5sum() { return 'd56e85175467db2ddcdf7fd7b9140749'; },
  datatype() { return 'simulator/simulator_algorithm_result'; }
};
