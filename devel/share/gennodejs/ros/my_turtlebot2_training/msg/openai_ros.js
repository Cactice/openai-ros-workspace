// Auto-generated. Do not edit!

// (in-package my_turtlebot2_training.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class openai_ros {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rosds = null;
    }
    else {
      if (initObj.hasOwnProperty('rosds')) {
        this.rosds = initObj.rosds
      }
      else {
        this.rosds = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type openai_ros
    // Serialize message field [rosds]
    bufferOffset = _serializer.float32(obj.rosds, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type openai_ros
    let len;
    let data = new openai_ros(null);
    // Deserialize message field [rosds]
    data.rosds = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_turtlebot2_training/openai_ros';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5eb6bf66b5eaa87e0e6f64597c745a4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 rosds
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new openai_ros(null);
    if (msg.rosds !== undefined) {
      resolved.rosds = msg.rosds;
    }
    else {
      resolved.rosds = 0.0
    }

    return resolved;
    }
};

module.exports = openai_ros;
