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

class Laser_values {
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
    // Serializes a message object of type Laser_values
    // Check that the constant length array field [sensors] has the right length
    if (obj.sensors.length !== 100) {
      throw new Error('Unable to serialize array field sensors - length must be 100')
    }
    // Serialize message field [sensors]
    bufferOffset = _arraySerializer.float32(obj.sensors, buffer, bufferOffset, 100);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Laser_values
    let len;
    let data = new Laser_values(null);
    // Deserialize message field [sensors]
    data.sensors = _arrayDeserializer.float32(buffer, bufferOffset, 100)
    return data;
  }

  static getMessageSize(object) {
    return 400;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator/Laser_values';
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
    const resolved = new Laser_values(null);
    if (msg.sensors !== undefined) {
      resolved.sensors = msg.sensors;
    }
    else {
      resolved.sensors = new Array(100).fill(0)
    }

    return resolved;
    }
};

module.exports = Laser_values;
