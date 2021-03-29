// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MountConfigureRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.stabilize_roll = null;
      this.stabilize_pitch = null;
      this.stabilize_yaw = null;
      this.roll_input = null;
      this.pitch_input = null;
      this.yaw_input = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('stabilize_roll')) {
        this.stabilize_roll = initObj.stabilize_roll
      }
      else {
        this.stabilize_roll = false;
      }
      if (initObj.hasOwnProperty('stabilize_pitch')) {
        this.stabilize_pitch = initObj.stabilize_pitch
      }
      else {
        this.stabilize_pitch = false;
      }
      if (initObj.hasOwnProperty('stabilize_yaw')) {
        this.stabilize_yaw = initObj.stabilize_yaw
      }
      else {
        this.stabilize_yaw = false;
      }
      if (initObj.hasOwnProperty('roll_input')) {
        this.roll_input = initObj.roll_input
      }
      else {
        this.roll_input = 0;
      }
      if (initObj.hasOwnProperty('pitch_input')) {
        this.pitch_input = initObj.pitch_input
      }
      else {
        this.pitch_input = 0;
      }
      if (initObj.hasOwnProperty('yaw_input')) {
        this.yaw_input = initObj.yaw_input
      }
      else {
        this.yaw_input = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MountConfigureRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [stabilize_roll]
    bufferOffset = _serializer.bool(obj.stabilize_roll, buffer, bufferOffset);
    // Serialize message field [stabilize_pitch]
    bufferOffset = _serializer.bool(obj.stabilize_pitch, buffer, bufferOffset);
    // Serialize message field [stabilize_yaw]
    bufferOffset = _serializer.bool(obj.stabilize_yaw, buffer, bufferOffset);
    // Serialize message field [roll_input]
    bufferOffset = _serializer.uint8(obj.roll_input, buffer, bufferOffset);
    // Serialize message field [pitch_input]
    bufferOffset = _serializer.uint8(obj.pitch_input, buffer, bufferOffset);
    // Serialize message field [yaw_input]
    bufferOffset = _serializer.uint8(obj.yaw_input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MountConfigureRequest
    let len;
    let data = new MountConfigureRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stabilize_roll]
    data.stabilize_roll = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stabilize_pitch]
    data.stabilize_pitch = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stabilize_yaw]
    data.stabilize_yaw = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [roll_input]
    data.roll_input = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pitch_input]
    data.pitch_input = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yaw_input]
    data.yaw_input = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/MountConfigureRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6abfbffc4f7b14d5b05955b1813ae50e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MAVLink message: DO_MOUNT_CONTROL
    # https://mavlink.io/en/messages/common.html#MAV_CMD_DO_MOUNT_CONFIGURE
    
    std_msgs/Header header
    
    uint8 mode              # See enum MAV_MOUNT_MODE.
    #MAV_MOUNT_MODE
    uint8 MODE_RETRACT = 0
    uint8 MODE_NEUTRAL = 1
    uint8 MODE_MAVLINK_TARGETING = 2
    uint8 MODE_RC_TARGETING = 3
    uint8 MODE_GPS_POINT = 4
    
    bool stabilize_roll     # stabilize roll? (1 = yes, 0 = no)
    bool stabilize_pitch    # stabilize pitch? (1 = yes, 0 = no)
    bool stabilize_yaw      # stabilize yaw? (1 = yes, 0 = no)
    uint8 roll_input        # roll input (See enum MOUNT_INPUT)
    uint8 pitch_input       # pitch input (See enum MOUNT_INPUT)
    uint8 yaw_input         # yaw input (See enum MOUNT_INPUT)
    
    #MOUNT_INPUT
    uint8 INPUT_ANGLE_BODY_FRAME = 0
    uint8 INPUT_ANGULAR_RATE = 1
    uint8 INPUT_ANGLE_ABSOLUTE_FRAME = 2
    
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
    const resolved = new MountConfigureRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.stabilize_roll !== undefined) {
      resolved.stabilize_roll = msg.stabilize_roll;
    }
    else {
      resolved.stabilize_roll = false
    }

    if (msg.stabilize_pitch !== undefined) {
      resolved.stabilize_pitch = msg.stabilize_pitch;
    }
    else {
      resolved.stabilize_pitch = false
    }

    if (msg.stabilize_yaw !== undefined) {
      resolved.stabilize_yaw = msg.stabilize_yaw;
    }
    else {
      resolved.stabilize_yaw = false
    }

    if (msg.roll_input !== undefined) {
      resolved.roll_input = msg.roll_input;
    }
    else {
      resolved.roll_input = 0
    }

    if (msg.pitch_input !== undefined) {
      resolved.pitch_input = msg.pitch_input;
    }
    else {
      resolved.pitch_input = 0
    }

    if (msg.yaw_input !== undefined) {
      resolved.yaw_input = msg.yaw_input;
    }
    else {
      resolved.yaw_input = 0
    }

    return resolved;
    }
};

// Constants for message
MountConfigureRequest.Constants = {
  MODE_RETRACT: 0,
  MODE_NEUTRAL: 1,
  MODE_MAVLINK_TARGETING: 2,
  MODE_RC_TARGETING: 3,
  MODE_GPS_POINT: 4,
  INPUT_ANGLE_BODY_FRAME: 0,
  INPUT_ANGULAR_RATE: 1,
  INPUT_ANGLE_ABSOLUTE_FRAME: 2,
}

class MountConfigureResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MountConfigureResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MountConfigureResponse
    let len;
    let data = new MountConfigureResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/MountConfigureResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cd894375e4e3d2861d2222772894fdb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    # raw result returned by COMMAND_ACK
    uint8 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MountConfigureResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MountConfigureRequest,
  Response: MountConfigureResponse,
  md5sum() { return '8d724be18b06cd8e10d8c97c487c546a'; },
  datatype() { return 'mavros_msgs/MountConfigure'; }
};
