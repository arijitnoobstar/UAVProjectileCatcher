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

class TimesyncStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.remote_timestamp_ns = null;
      this.observed_offset_ns = null;
      this.estimated_offset_ns = null;
      this.round_trip_time_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('remote_timestamp_ns')) {
        this.remote_timestamp_ns = initObj.remote_timestamp_ns
      }
      else {
        this.remote_timestamp_ns = 0;
      }
      if (initObj.hasOwnProperty('observed_offset_ns')) {
        this.observed_offset_ns = initObj.observed_offset_ns
      }
      else {
        this.observed_offset_ns = 0;
      }
      if (initObj.hasOwnProperty('estimated_offset_ns')) {
        this.estimated_offset_ns = initObj.estimated_offset_ns
      }
      else {
        this.estimated_offset_ns = 0;
      }
      if (initObj.hasOwnProperty('round_trip_time_ms')) {
        this.round_trip_time_ms = initObj.round_trip_time_ms
      }
      else {
        this.round_trip_time_ms = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimesyncStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [remote_timestamp_ns]
    bufferOffset = _serializer.uint64(obj.remote_timestamp_ns, buffer, bufferOffset);
    // Serialize message field [observed_offset_ns]
    bufferOffset = _serializer.int64(obj.observed_offset_ns, buffer, bufferOffset);
    // Serialize message field [estimated_offset_ns]
    bufferOffset = _serializer.int64(obj.estimated_offset_ns, buffer, bufferOffset);
    // Serialize message field [round_trip_time_ms]
    bufferOffset = _serializer.float32(obj.round_trip_time_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimesyncStatus
    let len;
    let data = new TimesyncStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [remote_timestamp_ns]
    data.remote_timestamp_ns = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [observed_offset_ns]
    data.observed_offset_ns = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [estimated_offset_ns]
    data.estimated_offset_ns = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [round_trip_time_ms]
    data.round_trip_time_ms = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/TimesyncStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '021ec8044e747bea518b441f374ba64b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Status of the MAVLink time synchroniser
    
    std_msgs/Header header
    uint64 remote_timestamp_ns		# remote system timestamp (nanoseconds)
    int64 observed_offset_ns		# raw time offset directly observed from this timesync packet (nanoseconds)
    int64 estimated_offset_ns		# smoothed time offset between companion system and Mavros (nanoseconds)
    float32 round_trip_time_ms		# round trip time of this timesync packet (milliseconds)
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
    const resolved = new TimesyncStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.remote_timestamp_ns !== undefined) {
      resolved.remote_timestamp_ns = msg.remote_timestamp_ns;
    }
    else {
      resolved.remote_timestamp_ns = 0
    }

    if (msg.observed_offset_ns !== undefined) {
      resolved.observed_offset_ns = msg.observed_offset_ns;
    }
    else {
      resolved.observed_offset_ns = 0
    }

    if (msg.estimated_offset_ns !== undefined) {
      resolved.estimated_offset_ns = msg.estimated_offset_ns;
    }
    else {
      resolved.estimated_offset_ns = 0
    }

    if (msg.round_trip_time_ms !== undefined) {
      resolved.round_trip_time_ms = msg.round_trip_time_ms;
    }
    else {
      resolved.round_trip_time_ms = 0.0
    }

    return resolved;
    }
};

module.exports = TimesyncStatus;
