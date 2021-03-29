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

class RTKBaseline {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_last_baseline_ms = null;
      this.rtk_receiver_id = null;
      this.wn = null;
      this.tow = null;
      this.rtk_health = null;
      this.rtk_rate = null;
      this.nsats = null;
      this.baseline_coords_type = null;
      this.baseline_a_mm = null;
      this.baseline_b_mm = null;
      this.baseline_c_mm = null;
      this.accuracy = null;
      this.iar_num_hypotheses = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time_last_baseline_ms')) {
        this.time_last_baseline_ms = initObj.time_last_baseline_ms
      }
      else {
        this.time_last_baseline_ms = 0;
      }
      if (initObj.hasOwnProperty('rtk_receiver_id')) {
        this.rtk_receiver_id = initObj.rtk_receiver_id
      }
      else {
        this.rtk_receiver_id = 0;
      }
      if (initObj.hasOwnProperty('wn')) {
        this.wn = initObj.wn
      }
      else {
        this.wn = 0;
      }
      if (initObj.hasOwnProperty('tow')) {
        this.tow = initObj.tow
      }
      else {
        this.tow = 0;
      }
      if (initObj.hasOwnProperty('rtk_health')) {
        this.rtk_health = initObj.rtk_health
      }
      else {
        this.rtk_health = 0;
      }
      if (initObj.hasOwnProperty('rtk_rate')) {
        this.rtk_rate = initObj.rtk_rate
      }
      else {
        this.rtk_rate = 0;
      }
      if (initObj.hasOwnProperty('nsats')) {
        this.nsats = initObj.nsats
      }
      else {
        this.nsats = 0;
      }
      if (initObj.hasOwnProperty('baseline_coords_type')) {
        this.baseline_coords_type = initObj.baseline_coords_type
      }
      else {
        this.baseline_coords_type = 0;
      }
      if (initObj.hasOwnProperty('baseline_a_mm')) {
        this.baseline_a_mm = initObj.baseline_a_mm
      }
      else {
        this.baseline_a_mm = 0;
      }
      if (initObj.hasOwnProperty('baseline_b_mm')) {
        this.baseline_b_mm = initObj.baseline_b_mm
      }
      else {
        this.baseline_b_mm = 0;
      }
      if (initObj.hasOwnProperty('baseline_c_mm')) {
        this.baseline_c_mm = initObj.baseline_c_mm
      }
      else {
        this.baseline_c_mm = 0;
      }
      if (initObj.hasOwnProperty('accuracy')) {
        this.accuracy = initObj.accuracy
      }
      else {
        this.accuracy = 0;
      }
      if (initObj.hasOwnProperty('iar_num_hypotheses')) {
        this.iar_num_hypotheses = initObj.iar_num_hypotheses
      }
      else {
        this.iar_num_hypotheses = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RTKBaseline
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_last_baseline_ms]
    bufferOffset = _serializer.uint32(obj.time_last_baseline_ms, buffer, bufferOffset);
    // Serialize message field [rtk_receiver_id]
    bufferOffset = _serializer.uint8(obj.rtk_receiver_id, buffer, bufferOffset);
    // Serialize message field [wn]
    bufferOffset = _serializer.uint16(obj.wn, buffer, bufferOffset);
    // Serialize message field [tow]
    bufferOffset = _serializer.uint32(obj.tow, buffer, bufferOffset);
    // Serialize message field [rtk_health]
    bufferOffset = _serializer.uint8(obj.rtk_health, buffer, bufferOffset);
    // Serialize message field [rtk_rate]
    bufferOffset = _serializer.uint8(obj.rtk_rate, buffer, bufferOffset);
    // Serialize message field [nsats]
    bufferOffset = _serializer.uint8(obj.nsats, buffer, bufferOffset);
    // Serialize message field [baseline_coords_type]
    bufferOffset = _serializer.uint8(obj.baseline_coords_type, buffer, bufferOffset);
    // Serialize message field [baseline_a_mm]
    bufferOffset = _serializer.int32(obj.baseline_a_mm, buffer, bufferOffset);
    // Serialize message field [baseline_b_mm]
    bufferOffset = _serializer.int32(obj.baseline_b_mm, buffer, bufferOffset);
    // Serialize message field [baseline_c_mm]
    bufferOffset = _serializer.int32(obj.baseline_c_mm, buffer, bufferOffset);
    // Serialize message field [accuracy]
    bufferOffset = _serializer.uint32(obj.accuracy, buffer, bufferOffset);
    // Serialize message field [iar_num_hypotheses]
    bufferOffset = _serializer.int32(obj.iar_num_hypotheses, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTKBaseline
    let len;
    let data = new RTKBaseline(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_last_baseline_ms]
    data.time_last_baseline_ms = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rtk_receiver_id]
    data.rtk_receiver_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wn]
    data.wn = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [tow]
    data.tow = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rtk_health]
    data.rtk_health = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rtk_rate]
    data.rtk_rate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nsats]
    data.nsats = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [baseline_coords_type]
    data.baseline_coords_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [baseline_a_mm]
    data.baseline_a_mm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [baseline_b_mm]
    data.baseline_b_mm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [baseline_c_mm]
    data.baseline_c_mm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [accuracy]
    data.accuracy = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [iar_num_hypotheses]
    data.iar_num_hypotheses = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/RTKBaseline';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd5852b76aa13136cec34a65089dfdb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RTKBaseline received from the FCU.
    # Full description: https://mavlink.io/en/messages/common.html#GPS_RTK
    # Mavlink Common, #127and #128
    
    std_msgs/Header header
    
    uint32 time_last_baseline_ms
    uint8 rtk_receiver_id
    uint16 wn
    uint32 tow
    uint8 rtk_health
    uint8 rtk_rate
    uint8 nsats
    
    uint8 baseline_coords_type 
    uint8 RTK_BASELINE_COORDINATE_SYSTEM_ECEF = 0   # Earth-centered, earth-fixed
    uint8 RTK_BASELINE_COORDINATE_SYSTEM_NED = 1    # RTK basestation centered, north, east, down
    
    int32 baseline_a_mm
    int32 baseline_b_mm
    int32 baseline_c_mm
    uint32 accuracy
    int32 iar_num_hypotheses
    
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
    const resolved = new RTKBaseline(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_last_baseline_ms !== undefined) {
      resolved.time_last_baseline_ms = msg.time_last_baseline_ms;
    }
    else {
      resolved.time_last_baseline_ms = 0
    }

    if (msg.rtk_receiver_id !== undefined) {
      resolved.rtk_receiver_id = msg.rtk_receiver_id;
    }
    else {
      resolved.rtk_receiver_id = 0
    }

    if (msg.wn !== undefined) {
      resolved.wn = msg.wn;
    }
    else {
      resolved.wn = 0
    }

    if (msg.tow !== undefined) {
      resolved.tow = msg.tow;
    }
    else {
      resolved.tow = 0
    }

    if (msg.rtk_health !== undefined) {
      resolved.rtk_health = msg.rtk_health;
    }
    else {
      resolved.rtk_health = 0
    }

    if (msg.rtk_rate !== undefined) {
      resolved.rtk_rate = msg.rtk_rate;
    }
    else {
      resolved.rtk_rate = 0
    }

    if (msg.nsats !== undefined) {
      resolved.nsats = msg.nsats;
    }
    else {
      resolved.nsats = 0
    }

    if (msg.baseline_coords_type !== undefined) {
      resolved.baseline_coords_type = msg.baseline_coords_type;
    }
    else {
      resolved.baseline_coords_type = 0
    }

    if (msg.baseline_a_mm !== undefined) {
      resolved.baseline_a_mm = msg.baseline_a_mm;
    }
    else {
      resolved.baseline_a_mm = 0
    }

    if (msg.baseline_b_mm !== undefined) {
      resolved.baseline_b_mm = msg.baseline_b_mm;
    }
    else {
      resolved.baseline_b_mm = 0
    }

    if (msg.baseline_c_mm !== undefined) {
      resolved.baseline_c_mm = msg.baseline_c_mm;
    }
    else {
      resolved.baseline_c_mm = 0
    }

    if (msg.accuracy !== undefined) {
      resolved.accuracy = msg.accuracy;
    }
    else {
      resolved.accuracy = 0
    }

    if (msg.iar_num_hypotheses !== undefined) {
      resolved.iar_num_hypotheses = msg.iar_num_hypotheses;
    }
    else {
      resolved.iar_num_hypotheses = 0
    }

    return resolved;
    }
};

// Constants for message
RTKBaseline.Constants = {
  RTK_BASELINE_COORDINATE_SYSTEM_ECEF: 0,
  RTK_BASELINE_COORDINATE_SYSTEM_NED: 1,
}

module.exports = RTKBaseline;
