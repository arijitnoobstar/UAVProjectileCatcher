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

class GPSRTK {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rtk_receiver_id = null;
      this.wn = null;
      this.tow = null;
      this.rtk_health = null;
      this.rtk_rate = null;
      this.nsats = null;
      this.baseline_a = null;
      this.baseline_b = null;
      this.baseline_c = null;
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
      if (initObj.hasOwnProperty('baseline_a')) {
        this.baseline_a = initObj.baseline_a
      }
      else {
        this.baseline_a = 0;
      }
      if (initObj.hasOwnProperty('baseline_b')) {
        this.baseline_b = initObj.baseline_b
      }
      else {
        this.baseline_b = 0;
      }
      if (initObj.hasOwnProperty('baseline_c')) {
        this.baseline_c = initObj.baseline_c
      }
      else {
        this.baseline_c = 0;
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
    // Serializes a message object of type GPSRTK
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rtk_receiver_id]
    bufferOffset = _serializer.uint8(obj.rtk_receiver_id, buffer, bufferOffset);
    // Serialize message field [wn]
    bufferOffset = _serializer.int16(obj.wn, buffer, bufferOffset);
    // Serialize message field [tow]
    bufferOffset = _serializer.uint32(obj.tow, buffer, bufferOffset);
    // Serialize message field [rtk_health]
    bufferOffset = _serializer.uint8(obj.rtk_health, buffer, bufferOffset);
    // Serialize message field [rtk_rate]
    bufferOffset = _serializer.uint8(obj.rtk_rate, buffer, bufferOffset);
    // Serialize message field [nsats]
    bufferOffset = _serializer.uint8(obj.nsats, buffer, bufferOffset);
    // Serialize message field [baseline_a]
    bufferOffset = _serializer.int32(obj.baseline_a, buffer, bufferOffset);
    // Serialize message field [baseline_b]
    bufferOffset = _serializer.int32(obj.baseline_b, buffer, bufferOffset);
    // Serialize message field [baseline_c]
    bufferOffset = _serializer.int32(obj.baseline_c, buffer, bufferOffset);
    // Serialize message field [accuracy]
    bufferOffset = _serializer.uint32(obj.accuracy, buffer, bufferOffset);
    // Serialize message field [iar_num_hypotheses]
    bufferOffset = _serializer.int32(obj.iar_num_hypotheses, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPSRTK
    let len;
    let data = new GPSRTK(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rtk_receiver_id]
    data.rtk_receiver_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wn]
    data.wn = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [tow]
    data.tow = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rtk_health]
    data.rtk_health = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rtk_rate]
    data.rtk_rate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nsats]
    data.nsats = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [baseline_a]
    data.baseline_a = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [baseline_b]
    data.baseline_b = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [baseline_c]
    data.baseline_c = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [accuracy]
    data.accuracy = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [iar_num_hypotheses]
    data.iar_num_hypotheses = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/GPSRTK';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab2651768aa6464b60b7bc8ae031e017';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # FCU GPS RTK message for the gps_status plugin
    # A copy of <a href="https://mavlink.io/en/messages/common.html#GPS_RTK">mavlink GPS_RTK message</a>
    
    std_msgs/Header header
    
    uint8 rtk_receiver_id      # Identification of connected RTK receiver.
    int16 wn                   # GPS Week Number of last baseline.
    uint32 tow                 # [ms] GPS Time of Week of last baseline.
    uint8 rtk_health           # GPS-specific health report for RTK data.
    uint8 rtk_rate             # [Hz] Rate of baseline messages being received by GPS.
    uint8 nsats                # Current number of sats used for RTK calculation.
    int32 baseline_a           # [mm] Current baseline in ECEF x or NED north component, depends on header.frame_id.
    int32 baseline_b           # [mm] Current baseline in ECEF y or NED east component, depends on header.frame_id.
    int32 baseline_c           # [mm] Current baseline in ECEF z or NED down component, depends on header.frame_id.
    uint32 accuracy            # Current estimate of baseline accuracy.
    int32 iar_num_hypotheses   # Current number of integer ambiguity hypotheses.
    
    
    
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
    const resolved = new GPSRTK(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

    if (msg.baseline_a !== undefined) {
      resolved.baseline_a = msg.baseline_a;
    }
    else {
      resolved.baseline_a = 0
    }

    if (msg.baseline_b !== undefined) {
      resolved.baseline_b = msg.baseline_b;
    }
    else {
      resolved.baseline_b = 0
    }

    if (msg.baseline_c !== undefined) {
      resolved.baseline_c = msg.baseline_c;
    }
    else {
      resolved.baseline_c = 0
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

module.exports = GPSRTK;
