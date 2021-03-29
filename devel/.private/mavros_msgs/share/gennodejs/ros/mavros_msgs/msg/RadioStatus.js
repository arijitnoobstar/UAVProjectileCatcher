// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RadioStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rssi = null;
      this.remrssi = null;
      this.txbuf = null;
      this.noise = null;
      this.remnoise = null;
      this.rxerrors = null;
      this.fixed = null;
      this.rssi_dbm = null;
      this.remrssi_dbm = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = 0;
      }
      if (initObj.hasOwnProperty('remrssi')) {
        this.remrssi = initObj.remrssi
      }
      else {
        this.remrssi = 0;
      }
      if (initObj.hasOwnProperty('txbuf')) {
        this.txbuf = initObj.txbuf
      }
      else {
        this.txbuf = 0;
      }
      if (initObj.hasOwnProperty('noise')) {
        this.noise = initObj.noise
      }
      else {
        this.noise = 0;
      }
      if (initObj.hasOwnProperty('remnoise')) {
        this.remnoise = initObj.remnoise
      }
      else {
        this.remnoise = 0;
      }
      if (initObj.hasOwnProperty('rxerrors')) {
        this.rxerrors = initObj.rxerrors
      }
      else {
        this.rxerrors = 0;
      }
      if (initObj.hasOwnProperty('fixed')) {
        this.fixed = initObj.fixed
      }
      else {
        this.fixed = 0;
      }
      if (initObj.hasOwnProperty('rssi_dbm')) {
        this.rssi_dbm = initObj.rssi_dbm
      }
      else {
        this.rssi_dbm = 0.0;
      }
      if (initObj.hasOwnProperty('remrssi_dbm')) {
        this.remrssi_dbm = initObj.remrssi_dbm
      }
      else {
        this.remrssi_dbm = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadioStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rssi]
    bufferOffset = _serializer.uint8(obj.rssi, buffer, bufferOffset);
    // Serialize message field [remrssi]
    bufferOffset = _serializer.uint8(obj.remrssi, buffer, bufferOffset);
    // Serialize message field [txbuf]
    bufferOffset = _serializer.uint8(obj.txbuf, buffer, bufferOffset);
    // Serialize message field [noise]
    bufferOffset = _serializer.uint8(obj.noise, buffer, bufferOffset);
    // Serialize message field [remnoise]
    bufferOffset = _serializer.uint8(obj.remnoise, buffer, bufferOffset);
    // Serialize message field [rxerrors]
    bufferOffset = _serializer.uint16(obj.rxerrors, buffer, bufferOffset);
    // Serialize message field [fixed]
    bufferOffset = _serializer.uint16(obj.fixed, buffer, bufferOffset);
    // Serialize message field [rssi_dbm]
    bufferOffset = _serializer.float32(obj.rssi_dbm, buffer, bufferOffset);
    // Serialize message field [remrssi_dbm]
    bufferOffset = _serializer.float32(obj.remrssi_dbm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadioStatus
    let len;
    let data = new RadioStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rssi]
    data.rssi = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [remrssi]
    data.remrssi = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [txbuf]
    data.txbuf = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [noise]
    data.noise = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [remnoise]
    data.remnoise = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rxerrors]
    data.rxerrors = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [fixed]
    data.fixed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rssi_dbm]
    data.rssi_dbm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [remrssi_dbm]
    data.remrssi_dbm = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/RadioStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04e4a879bb2687140da50a1a821e2190';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RADIO_STATUS message
    
    std_msgs/Header header
    
    # message data
    uint8 rssi
    uint8 remrssi
    uint8 txbuf
    uint8 noise
    uint8 remnoise
    uint16 rxerrors
    uint16 fixed
    
    # calculated
    float32 rssi_dbm
    float32 remrssi_dbm
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadioStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = 0
    }

    if (msg.remrssi !== undefined) {
      resolved.remrssi = msg.remrssi;
    }
    else {
      resolved.remrssi = 0
    }

    if (msg.txbuf !== undefined) {
      resolved.txbuf = msg.txbuf;
    }
    else {
      resolved.txbuf = 0
    }

    if (msg.noise !== undefined) {
      resolved.noise = msg.noise;
    }
    else {
      resolved.noise = 0
    }

    if (msg.remnoise !== undefined) {
      resolved.remnoise = msg.remnoise;
    }
    else {
      resolved.remnoise = 0
    }

    if (msg.rxerrors !== undefined) {
      resolved.rxerrors = msg.rxerrors;
    }
    else {
      resolved.rxerrors = 0
    }

    if (msg.fixed !== undefined) {
      resolved.fixed = msg.fixed;
    }
    else {
      resolved.fixed = 0
    }

    if (msg.rssi_dbm !== undefined) {
      resolved.rssi_dbm = msg.rssi_dbm;
    }
    else {
      resolved.rssi_dbm = 0.0
    }

    if (msg.remrssi_dbm !== undefined) {
      resolved.remrssi_dbm = msg.remrssi_dbm;
    }
    else {
      resolved.remrssi_dbm = 0.0
    }

    return resolved;
    }
};

module.exports = RadioStatus;
