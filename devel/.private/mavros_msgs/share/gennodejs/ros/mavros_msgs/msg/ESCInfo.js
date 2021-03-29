// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ESCInfoItem = require('./ESCInfoItem.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ESCInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.counter = null;
      this.count = null;
      this.connection_type = null;
      this.info = null;
      this.esc_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('counter')) {
        this.counter = initObj.counter
      }
      else {
        this.counter = 0;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('connection_type')) {
        this.connection_type = initObj.connection_type
      }
      else {
        this.connection_type = 0;
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = 0;
      }
      if (initObj.hasOwnProperty('esc_info')) {
        this.esc_info = initObj.esc_info
      }
      else {
        this.esc_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ESCInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [counter]
    bufferOffset = _serializer.uint16(obj.counter, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint8(obj.count, buffer, bufferOffset);
    // Serialize message field [connection_type]
    bufferOffset = _serializer.uint8(obj.connection_type, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.uint8(obj.info, buffer, bufferOffset);
    // Serialize message field [esc_info]
    // Serialize the length for message field [esc_info]
    bufferOffset = _serializer.uint32(obj.esc_info.length, buffer, bufferOffset);
    obj.esc_info.forEach((val) => {
      bufferOffset = ESCInfoItem.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ESCInfo
    let len;
    let data = new ESCInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [counter]
    data.counter = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [connection_type]
    data.connection_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [esc_info]
    // Deserialize array length for message field [esc_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.esc_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.esc_info[i] = ESCInfoItem.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.esc_info.forEach((val) => {
      length += ESCInfoItem.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/ESCInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0dadbe17da7077cfe645928710920e5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ESCInfo.msg
    #
    #
    # See mavlink message documentation here:
    # https://mavlink.io/en/messages/common.html#ESC_INFO
    
    std_msgs/Header header
    
    uint16 counter
    uint8 count
    uint8 connection_type
    uint8 info
    mavros_msgs/ESCInfoItem[] esc_info
    
    
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
    MSG: mavros_msgs/ESCInfoItem
    # ESCInfoItem.msg
    #
    #
    # See mavlink message documentation here:
    # https://mavlink.io/en/messages/common.html#ESC_INFO
    
    std_msgs/Header header
    
    uint16 failure_flags
    uint32 error_count
    uint8 temperature
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ESCInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.counter !== undefined) {
      resolved.counter = msg.counter;
    }
    else {
      resolved.counter = 0
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.connection_type !== undefined) {
      resolved.connection_type = msg.connection_type;
    }
    else {
      resolved.connection_type = 0
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = 0
    }

    if (msg.esc_info !== undefined) {
      resolved.esc_info = new Array(msg.esc_info.length);
      for (let i = 0; i < resolved.esc_info.length; ++i) {
        resolved.esc_info[i] = ESCInfoItem.Resolve(msg.esc_info[i]);
      }
    }
    else {
      resolved.esc_info = []
    }

    return resolved;
    }
};

module.exports = ESCInfo;
