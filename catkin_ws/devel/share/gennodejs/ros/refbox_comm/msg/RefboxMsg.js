// Auto-generated. Do not edit!

// (in-package refbox_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RefboxData = require('./RefboxData.js');

//-----------------------------------------------------------

class RefboxMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new RefboxData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RefboxMsg
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = RefboxData.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RefboxMsg
    let len;
    let data = new RefboxMsg(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = RefboxData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    length += RefboxData.getMessageSize(object.data);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'refbox_comm/RefboxMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e2f71e32076dc9993c4774056b8b2e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type
    refbox_comm/RefboxData data
    ================================================================================
    MSG: refbox_comm/RefboxData
    string[] data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RefboxMsg(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.data !== undefined) {
      resolved.data = RefboxData.Resolve(msg.data)
    }
    else {
      resolved.data = new RefboxData()
    }

    return resolved;
    }
};

module.exports = RefboxMsg;
