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

class MotionPlanner {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.data = null;
      this.motion = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0;
      }
      if (initObj.hasOwnProperty('motion')) {
        this.motion = initObj.motion
      }
      else {
        this.motion = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotionPlanner
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.int32(obj.data, buffer, bufferOffset);
    // Serialize message field [motion]
    bufferOffset = _serializer.string(obj.motion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotionPlanner
    let len;
    let data = new MotionPlanner(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motion]
    data.motion = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.motion);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator/MotionPlanner';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43593cc1ed124c563298623832f83c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    int32 data
    string motion
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotionPlanner(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    if (msg.motion !== undefined) {
      resolved.motion = msg.motion;
    }
    else {
      resolved.motion = ''
    }

    return resolved;
    }
};

module.exports = MotionPlanner;
