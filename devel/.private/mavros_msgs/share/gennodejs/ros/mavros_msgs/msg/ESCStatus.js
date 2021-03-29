// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ESCStatusItem = require('./ESCStatusItem.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ESCStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.esc_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('esc_status')) {
        this.esc_status = initObj.esc_status
      }
      else {
        this.esc_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ESCStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [esc_status]
    // Serialize the length for message field [esc_status]
    bufferOffset = _serializer.uint32(obj.esc_status.length, buffer, bufferOffset);
    obj.esc_status.forEach((val) => {
      bufferOffset = ESCStatusItem.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ESCStatus
    let len;
    let data = new ESCStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [esc_status]
    // Deserialize array length for message field [esc_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.esc_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.esc_status[i] = ESCStatusItem.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.esc_status.forEach((val) => {
      length += ESCStatusItem.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/ESCStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '145d49eaf5cfecbdfd50ae4a22fe82d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ESCStatus.msg
    #
    #
    # See mavlink message documentation here:
    # https://mavlink.io/en/messages/common.html#ESC_STATUS
    
    std_msgs/Header header
    
    mavros_msgs/ESCStatusItem[] esc_status
    
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
    MSG: mavros_msgs/ESCStatusItem
    # ESCStatusItem.msg
    #
    #
    # See mavlink message documentation here:
    # https://mavlink.io/en/messages/common.html#ESC_STATUS
    
    std_msgs/Header header
    
    int32 rpm
    float32 voltage
    float32 current
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ESCStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.esc_status !== undefined) {
      resolved.esc_status = new Array(msg.esc_status.length);
      for (let i = 0; i < resolved.esc_status.length; ++i) {
        resolved.esc_status[i] = ESCStatusItem.Resolve(msg.esc_status[i]);
      }
    }
    else {
      resolved.esc_status = []
    }

    return resolved;
    }
};

module.exports = ESCStatus;
