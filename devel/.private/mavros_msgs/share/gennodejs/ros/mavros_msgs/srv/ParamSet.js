// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParamValue = require('../msg/ParamValue.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ParamSetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.param_id = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('param_id')) {
        this.param_id = initObj.param_id
      }
      else {
        this.param_id = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = new ParamValue();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamSetRequest
    // Serialize message field [param_id]
    bufferOffset = _serializer.string(obj.param_id, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = ParamValue.serialize(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamSetRequest
    let len;
    let data = new ParamSetRequest(null);
    // Deserialize message field [param_id]
    data.param_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = ParamValue.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.param_id.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/ParamSetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a17f346bc27984b348c799c674a04d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request set parameter value
    
    string param_id
    mavros_msgs/ParamValue value
    
    ================================================================================
    MSG: mavros_msgs/ParamValue
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
    const resolved = new ParamSetRequest(null);
    if (msg.param_id !== undefined) {
      resolved.param_id = msg.param_id;
    }
    else {
      resolved.param_id = ''
    }

    if (msg.value !== undefined) {
      resolved.value = ParamValue.Resolve(msg.value)
    }
    else {
      resolved.value = new ParamValue()
    }

    return resolved;
    }
};

class ParamSetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = new ParamValue();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamSetResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = ParamValue.serialize(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamSetResponse
    let len;
    let data = new ParamSetResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = ParamValue.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/ParamSetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '790d22b22b9dbf32a8e8d55578e25477';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    mavros_msgs/ParamValue value
    
    
    ================================================================================
    MSG: mavros_msgs/ParamValue
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
    const resolved = new ParamSetResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.value !== undefined) {
      resolved.value = ParamValue.Resolve(msg.value)
    }
    else {
      resolved.value = new ParamValue()
    }

    return resolved;
    }
};

module.exports = {
  Request: ParamSetRequest,
  Response: ParamSetResponse,
  md5sum() { return 'c423cafb898fff374cbe8530ecd4d285'; },
  datatype() { return 'mavros_msgs/ParamSet'; }
};
