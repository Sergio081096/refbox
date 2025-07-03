// Auto-generated. Do not edit!

// (in-package simulator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let poseCustom = require('./poseCustom.js');

//-----------------------------------------------------------

class PosesArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posesArray = null;
    }
    else {
      if (initObj.hasOwnProperty('posesArray')) {
        this.posesArray = initObj.posesArray
      }
      else {
        this.posesArray = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PosesArray
    // Serialize message field [posesArray]
    // Serialize the length for message field [posesArray]
    bufferOffset = _serializer.uint32(obj.posesArray.length, buffer, bufferOffset);
    obj.posesArray.forEach((val) => {
      bufferOffset = poseCustom.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PosesArray
    let len;
    let data = new PosesArray(null);
    // Deserialize message field [posesArray]
    // Deserialize array length for message field [posesArray]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.posesArray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.posesArray[i] = poseCustom.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.posesArray.forEach((val) => {
      length += poseCustom.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator/PosesArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a0583a49d80d1c90ba8a84a5a9bd6d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    poseCustom[] posesArray
    ================================================================================
    MSG: simulator/poseCustom
    string name
    float32 x
    float32 y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PosesArray(null);
    if (msg.posesArray !== undefined) {
      resolved.posesArray = new Array(msg.posesArray.length);
      for (let i = 0; i < resolved.posesArray.length; ++i) {
        resolved.posesArray[i] = poseCustom.Resolve(msg.posesArray[i]);
      }
    }
    else {
      resolved.posesArray = []
    }

    return resolved;
    }
};

module.exports = PosesArray;
