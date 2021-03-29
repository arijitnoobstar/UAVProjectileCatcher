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

class LogEntry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.num_logs = null;
      this.last_log_num = null;
      this.time_utc = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('num_logs')) {
        this.num_logs = initObj.num_logs
      }
      else {
        this.num_logs = 0;
      }
      if (initObj.hasOwnProperty('last_log_num')) {
        this.last_log_num = initObj.last_log_num
      }
      else {
        this.last_log_num = 0;
      }
      if (initObj.hasOwnProperty('time_utc')) {
        this.time_utc = initObj.time_utc
      }
      else {
        this.time_utc = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LogEntry
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    // Serialize message field [num_logs]
    bufferOffset = _serializer.uint16(obj.num_logs, buffer, bufferOffset);
    // Serialize message field [last_log_num]
    bufferOffset = _serializer.uint16(obj.last_log_num, buffer, bufferOffset);
    // Serialize message field [time_utc]
    bufferOffset = _serializer.time(obj.time_utc, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.uint32(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LogEntry
    let len;
    let data = new LogEntry(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [num_logs]
    data.num_logs = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [last_log_num]
    data.last_log_num = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [time_utc]
    data.time_utc = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/LogEntry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1428fc1ec4b2bfc8ab0c0ead7cce571';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Information about a single log
    #
    #  :id: - log id
    #  :num_logs: - total number of logs
    #  :last_log_num: - id of last log
    #  :time_utc: - UTC timestamp of log (ros::Time(0) if not available)
    #  :size: - size of log in bytes (may be approximate)
    
    std_msgs/Header header
    
    uint16 id
    uint16 num_logs
    uint16 last_log_num
    time time_utc
    uint32 size
    
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
    const resolved = new LogEntry(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.num_logs !== undefined) {
      resolved.num_logs = msg.num_logs;
    }
    else {
      resolved.num_logs = 0
    }

    if (msg.last_log_num !== undefined) {
      resolved.last_log_num = msg.last_log_num;
    }
    else {
      resolved.last_log_num = 0
    }

    if (msg.time_utc !== undefined) {
      resolved.time_utc = msg.time_utc;
    }
    else {
      resolved.time_utc = {secs: 0, nsecs: 0}
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    return resolved;
    }
};

module.exports = LogEntry;
