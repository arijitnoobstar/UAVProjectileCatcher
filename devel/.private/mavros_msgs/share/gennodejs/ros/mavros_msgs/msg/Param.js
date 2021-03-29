// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParamValue = require('./ParamValue.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Param {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.param_id = null;
      this.value = null;
      this.param_index = null;
      this.param_count = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
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
      if (initObj.hasOwnProperty('param_index')) {
        this.param_index = initObj.param_index
      }
      else {
        this.param_index = 0;
      }
      if (initObj.hasOwnProperty('param_count')) {
        this.param_count = initObj.param_count
      }
      else {
        this.param_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Param
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [param_id]
    bufferOffset = _serializer.string(obj.param_id, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = ParamValue.serialize(obj.value, buffer, bufferOffset);
    // Serialize message field [param_index]
    bufferOffset = _serializer.uint16(obj.param_index, buffer, bufferOffset);
    // Serialize message field [param_count]
    bufferOffset = _serializer.uint16(obj.param_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Param
    let len;
    let data = new Param(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [param_id]
    data.param_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = ParamValue.deserialize(buffer, bufferOffset);
    // Deserialize message field [param_index]
    data.param_index = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [param_count]
    data.param_count = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.param_id.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/Param';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62165a8f212050223dda9583b0f22c3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Parameter msg.
    
    std_msgs/Header header
    
    string param_id
    mavros_msgs/ParamValue value
    
    uint16 param_index
    uint16 param_count
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new Param(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

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

    if (msg.param_index !== undefined) {
      resolved.param_index = msg.param_index;
    }
    else {
      resolved.param_index = 0
    }

    if (msg.param_count !== undefined) {
      resolved.param_count = msg.param_count;
    }
    else {
      resolved.param_count = 0
    }

    return resolved;
    }
};

module.exports = Param;
