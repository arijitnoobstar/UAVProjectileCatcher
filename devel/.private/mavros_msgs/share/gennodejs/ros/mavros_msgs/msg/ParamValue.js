// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ParamValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.integer = null;
      this.real = null;
    }
    else {
      if (initObj.hasOwnProperty('integer')) {
        this.integer = initObj.integer
      }
      else {
        this.integer = 0;
      }
      if (initObj.hasOwnProperty('real')) {
        this.real = initObj.real
      }
      else {
        this.real = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamValue
    // Serialize message field [integer]
    bufferOffset = _serializer.int64(obj.integer, buffer, bufferOffset);
    // Serialize message field [real]
    bufferOffset = _serializer.float64(obj.real, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamValue
    let len;
    let data = new ParamValue(null);
    // Deserialize message field [integer]
    data.integer = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [real]
    data.real = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/ParamValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2cb1c7a0f6ef0c62d450cd9362c980d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Parameter value storage type.
    #
    # Integer and float fields:
    #
    # if integer != 0: it is integer value
    # else if real != 0.0: it is float value
    # else: it is zero.
    
    int64 integer
    float64 real
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamValue(null);
    if (msg.integer !== undefined) {
      resolved.integer = msg.integer;
    }
    else {
      resolved.integer = 0
    }

    if (msg.real !== undefined) {
      resolved.real = msg.real;
    }
    else {
      resolved.real = 0.0
    }

    return resolved;
    }
};

module.exports = ParamValue;
