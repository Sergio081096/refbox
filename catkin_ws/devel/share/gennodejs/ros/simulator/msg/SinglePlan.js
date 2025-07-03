// Auto-generated. Do not edit!

// (in-package simulator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SinglePlan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plan_steps = null;
    }
    else {
      if (initObj.hasOwnProperty('plan_steps')) {
        this.plan_steps = initObj.plan_steps
      }
      else {
        this.plan_steps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SinglePlan
    // Serialize message field [plan_steps]
    bufferOffset = _arraySerializer.string(obj.plan_steps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SinglePlan
    let len;
    let data = new SinglePlan(null);
    // Deserialize message field [plan_steps]
    data.plan_steps = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.plan_steps.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator/SinglePlan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e74db1782ceaae358fee14c8e79172c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] plan_steps
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SinglePlan(null);
    if (msg.plan_steps !== undefined) {
      resolved.plan_steps = msg.plan_steps;
    }
    else {
      resolved.plan_steps = []
    }

    return resolved;
    }
};

module.exports = SinglePlan;
