// Auto-generated. Do not edit!

// (in-package turtlesim_cleaner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class string_message {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.custom_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('custom_msg')) {
        this.custom_msg = initObj.custom_msg
      }
      else {
        this.custom_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type string_message
    // Serialize message field [custom_msg]
    bufferOffset = _serializer.string(obj.custom_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type string_message
    let len;
    let data = new string_message(null);
    // Deserialize message field [custom_msg]
    data.custom_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.custom_msg.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtlesim_cleaner/string_message';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34bc0b7b6938cfa2480828862cdaf1a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string custom_msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new string_message(null);
    if (msg.custom_msg !== undefined) {
      resolved.custom_msg = msg.custom_msg;
    }
    else {
      resolved.custom_msg = ''
    }

    return resolved;
    }
};

module.exports = string_message;
