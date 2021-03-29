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

class VFR_HUD {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.airspeed = null;
      this.groundspeed = null;
      this.heading = null;
      this.throttle = null;
      this.altitude = null;
      this.climb = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('airspeed')) {
        this.airspeed = initObj.airspeed
      }
      else {
        this.airspeed = 0.0;
      }
      if (initObj.hasOwnProperty('groundspeed')) {
        this.groundspeed = initObj.groundspeed
      }
      else {
        this.groundspeed = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0;
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('climb')) {
        this.climb = initObj.climb
      }
      else {
        this.climb = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VFR_HUD
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [airspeed]
    bufferOffset = _serializer.float32(obj.airspeed, buffer, bufferOffset);
    // Serialize message field [groundspeed]
    bufferOffset = _serializer.float32(obj.groundspeed, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.int16(obj.heading, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float32(obj.throttle, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float32(obj.altitude, buffer, bufferOffset);
    // Serialize message field [climb]
    bufferOffset = _serializer.float32(obj.climb, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VFR_HUD
    let len;
    let data = new VFR_HUD(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [airspeed]
    data.airspeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [groundspeed]
    data.groundspeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [climb]
    data.climb = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/VFR_HUD';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f55e210c3d39fe105d44d8dc963655f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Metrics typically displayed on a HUD for fixed wing aircraft
    #
    # VFR_HUD message
    
    std_msgs/Header header
    float32 airspeed	# m/s
    float32 groundspeed	# m/s
    int16 heading		# degrees 0..360
    float32 throttle		# normalized to 0.0..1.0
    float32 altitude		# MSL
    float32 climb		# current climb rate m/s
    
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
    const resolved = new VFR_HUD(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.airspeed !== undefined) {
      resolved.airspeed = msg.airspeed;
    }
    else {
      resolved.airspeed = 0.0
    }

    if (msg.groundspeed !== undefined) {
      resolved.groundspeed = msg.groundspeed;
    }
    else {
      resolved.groundspeed = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.climb !== undefined) {
      resolved.climb = msg.climb;
    }
    else {
      resolved.climb = 0.0
    }

    return resolved;
    }
};

module.exports = VFR_HUD;
