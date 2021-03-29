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

class HilControls {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.roll_ailerons = null;
      this.pitch_elevator = null;
      this.yaw_rudder = null;
      this.throttle = null;
      this.aux1 = null;
      this.aux2 = null;
      this.aux3 = null;
      this.aux4 = null;
      this.mode = null;
      this.nav_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('roll_ailerons')) {
        this.roll_ailerons = initObj.roll_ailerons
      }
      else {
        this.roll_ailerons = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_elevator')) {
        this.pitch_elevator = initObj.pitch_elevator
      }
      else {
        this.pitch_elevator = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rudder')) {
        this.yaw_rudder = initObj.yaw_rudder
      }
      else {
        this.yaw_rudder = 0.0;
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('aux1')) {
        this.aux1 = initObj.aux1
      }
      else {
        this.aux1 = 0.0;
      }
      if (initObj.hasOwnProperty('aux2')) {
        this.aux2 = initObj.aux2
      }
      else {
        this.aux2 = 0.0;
      }
      if (initObj.hasOwnProperty('aux3')) {
        this.aux3 = initObj.aux3
      }
      else {
        this.aux3 = 0.0;
      }
      if (initObj.hasOwnProperty('aux4')) {
        this.aux4 = initObj.aux4
      }
      else {
        this.aux4 = 0.0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('nav_mode')) {
        this.nav_mode = initObj.nav_mode
      }
      else {
        this.nav_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HilControls
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [roll_ailerons]
    bufferOffset = _serializer.float32(obj.roll_ailerons, buffer, bufferOffset);
    // Serialize message field [pitch_elevator]
    bufferOffset = _serializer.float32(obj.pitch_elevator, buffer, bufferOffset);
    // Serialize message field [yaw_rudder]
    bufferOffset = _serializer.float32(obj.yaw_rudder, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float32(obj.throttle, buffer, bufferOffset);
    // Serialize message field [aux1]
    bufferOffset = _serializer.float32(obj.aux1, buffer, bufferOffset);
    // Serialize message field [aux2]
    bufferOffset = _serializer.float32(obj.aux2, buffer, bufferOffset);
    // Serialize message field [aux3]
    bufferOffset = _serializer.float32(obj.aux3, buffer, bufferOffset);
    // Serialize message field [aux4]
    bufferOffset = _serializer.float32(obj.aux4, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [nav_mode]
    bufferOffset = _serializer.uint8(obj.nav_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HilControls
    let len;
    let data = new HilControls(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [roll_ailerons]
    data.roll_ailerons = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_elevator]
    data.pitch_elevator = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_rudder]
    data.yaw_rudder = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [aux1]
    data.aux1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [aux2]
    data.aux2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [aux3]
    data.aux3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [aux4]
    data.aux4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nav_mode]
    data.nav_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/HilControls';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '698148349c3a2e5720afcae2d934acca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # HilControls.msg
    #
    # ROS representation of MAVLink HIL_CONTROLS
    # (deprecated, use HIL_ACTUATOR_CONTROLS instead)
    # See mavlink message documentation here:
    # https://mavlink.io/en/messages/common.html#HIL_CONTROLS
    
    std_msgs/Header header
    float32 roll_ailerons
    float32 pitch_elevator
    float32 yaw_rudder
    float32 throttle
    float32 aux1
    float32 aux2
    float32 aux3
    float32 aux4
    uint8 mode
    uint8 nav_mode
    
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
    const resolved = new HilControls(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.roll_ailerons !== undefined) {
      resolved.roll_ailerons = msg.roll_ailerons;
    }
    else {
      resolved.roll_ailerons = 0.0
    }

    if (msg.pitch_elevator !== undefined) {
      resolved.pitch_elevator = msg.pitch_elevator;
    }
    else {
      resolved.pitch_elevator = 0.0
    }

    if (msg.yaw_rudder !== undefined) {
      resolved.yaw_rudder = msg.yaw_rudder;
    }
    else {
      resolved.yaw_rudder = 0.0
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.aux1 !== undefined) {
      resolved.aux1 = msg.aux1;
    }
    else {
      resolved.aux1 = 0.0
    }

    if (msg.aux2 !== undefined) {
      resolved.aux2 = msg.aux2;
    }
    else {
      resolved.aux2 = 0.0
    }

    if (msg.aux3 !== undefined) {
      resolved.aux3 = msg.aux3;
    }
    else {
      resolved.aux3 = 0.0
    }

    if (msg.aux4 !== undefined) {
      resolved.aux4 = msg.aux4;
    }
    else {
      resolved.aux4 = 0.0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.nav_mode !== undefined) {
      resolved.nav_mode = msg.nav_mode;
    }
    else {
      resolved.nav_mode = 0
    }

    return resolved;
    }
};

module.exports = HilControls;
