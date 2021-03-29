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

class ExtendedState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vtol_state = null;
      this.landed_state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vtol_state')) {
        this.vtol_state = initObj.vtol_state
      }
      else {
        this.vtol_state = 0;
      }
      if (initObj.hasOwnProperty('landed_state')) {
        this.landed_state = initObj.landed_state
      }
      else {
        this.landed_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExtendedState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vtol_state]
    bufferOffset = _serializer.uint8(obj.vtol_state, buffer, bufferOffset);
    // Serialize message field [landed_state]
    bufferOffset = _serializer.uint8(obj.landed_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExtendedState
    let len;
    let data = new ExtendedState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vtol_state]
    data.vtol_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [landed_state]
    data.landed_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/ExtendedState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae780b1800fe17b917369d21b90058bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Extended autopilot state
    #
    # https://mavlink.io/en/messages/common.html#EXTENDED_SYS_STATE
    
    uint8 VTOL_STATE_UNDEFINED = 0
    uint8 VTOL_STATE_TRANSITION_TO_FW = 1
    uint8 VTOL_STATE_TRANSITION_TO_MC = 2
    uint8 VTOL_STATE_MC = 3
    uint8 VTOL_STATE_FW = 4
    
    uint8 LANDED_STATE_UNDEFINED = 0
    uint8 LANDED_STATE_ON_GROUND = 1
    uint8 LANDED_STATE_IN_AIR = 2
    uint8 LANDED_STATE_TAKEOFF = 3
    uint8 LANDED_STATE_LANDING = 4
    
    std_msgs/Header header
    uint8 vtol_state
    uint8 landed_state
    
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
    const resolved = new ExtendedState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vtol_state !== undefined) {
      resolved.vtol_state = msg.vtol_state;
    }
    else {
      resolved.vtol_state = 0
    }

    if (msg.landed_state !== undefined) {
      resolved.landed_state = msg.landed_state;
    }
    else {
      resolved.landed_state = 0
    }

    return resolved;
    }
};

// Constants for message
ExtendedState.Constants = {
  VTOL_STATE_UNDEFINED: 0,
  VTOL_STATE_TRANSITION_TO_FW: 1,
  VTOL_STATE_TRANSITION_TO_MC: 2,
  VTOL_STATE_MC: 3,
  VTOL_STATE_FW: 4,
  LANDED_STATE_UNDEFINED: 0,
  LANDED_STATE_ON_GROUND: 1,
  LANDED_STATE_IN_AIR: 2,
  LANDED_STATE_TAKEOFF: 3,
  LANDED_STATE_LANDING: 4,
}

module.exports = ExtendedState;
