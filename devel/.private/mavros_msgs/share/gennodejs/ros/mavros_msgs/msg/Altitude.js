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

class Altitude {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.monotonic = null;
      this.amsl = null;
      this.local = null;
      this.relative = null;
      this.terrain = null;
      this.bottom_clearance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('monotonic')) {
        this.monotonic = initObj.monotonic
      }
      else {
        this.monotonic = 0.0;
      }
      if (initObj.hasOwnProperty('amsl')) {
        this.amsl = initObj.amsl
      }
      else {
        this.amsl = 0.0;
      }
      if (initObj.hasOwnProperty('local')) {
        this.local = initObj.local
      }
      else {
        this.local = 0.0;
      }
      if (initObj.hasOwnProperty('relative')) {
        this.relative = initObj.relative
      }
      else {
        this.relative = 0.0;
      }
      if (initObj.hasOwnProperty('terrain')) {
        this.terrain = initObj.terrain
      }
      else {
        this.terrain = 0.0;
      }
      if (initObj.hasOwnProperty('bottom_clearance')) {
        this.bottom_clearance = initObj.bottom_clearance
      }
      else {
        this.bottom_clearance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Altitude
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [monotonic]
    bufferOffset = _serializer.float32(obj.monotonic, buffer, bufferOffset);
    // Serialize message field [amsl]
    bufferOffset = _serializer.float32(obj.amsl, buffer, bufferOffset);
    // Serialize message field [local]
    bufferOffset = _serializer.float32(obj.local, buffer, bufferOffset);
    // Serialize message field [relative]
    bufferOffset = _serializer.float32(obj.relative, buffer, bufferOffset);
    // Serialize message field [terrain]
    bufferOffset = _serializer.float32(obj.terrain, buffer, bufferOffset);
    // Serialize message field [bottom_clearance]
    bufferOffset = _serializer.float32(obj.bottom_clearance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Altitude
    let len;
    let data = new Altitude(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [monotonic]
    data.monotonic = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [amsl]
    data.amsl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [local]
    data.local = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative]
    data.relative = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [terrain]
    data.terrain = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bottom_clearance]
    data.bottom_clearance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/Altitude';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1296a05dc5b6160be0ae04ba9ed3a3fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Altitude information
    #
    # https://mavlink.io/en/messages/common.html#ALTITUDE
    
    std_msgs/Header header
    
    float32 monotonic
    float32 amsl
    float32 local
    float32 relative
    float32 terrain
    float32 bottom_clearance
    
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
    const resolved = new Altitude(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.monotonic !== undefined) {
      resolved.monotonic = msg.monotonic;
    }
    else {
      resolved.monotonic = 0.0
    }

    if (msg.amsl !== undefined) {
      resolved.amsl = msg.amsl;
    }
    else {
      resolved.amsl = 0.0
    }

    if (msg.local !== undefined) {
      resolved.local = msg.local;
    }
    else {
      resolved.local = 0.0
    }

    if (msg.relative !== undefined) {
      resolved.relative = msg.relative;
    }
    else {
      resolved.relative = 0.0
    }

    if (msg.terrain !== undefined) {
      resolved.terrain = msg.terrain;
    }
    else {
      resolved.terrain = 0.0
    }

    if (msg.bottom_clearance !== undefined) {
      resolved.bottom_clearance = msg.bottom_clearance;
    }
    else {
      resolved.bottom_clearance = 0.0
    }

    return resolved;
    }
};

module.exports = Altitude;
