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

class CompanionProcessStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.component = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('component')) {
        this.component = initObj.component
      }
      else {
        this.component = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CompanionProcessStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [component]
    bufferOffset = _serializer.uint8(obj.component, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CompanionProcessStatus
    let len;
    let data = new CompanionProcessStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [component]
    data.component = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/CompanionProcessStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6dd787fcd873e87778987b1845f4cb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Mavros message: COMPANIONPROCESSSTATUS
    
    std_msgs/Header header
    
    uint8 state			# See enum COMPANION_PROCESS_STATE
    uint8 component		# See enum MAV_COMPONENT
    
    uint8 MAV_STATE_UNINIT = 0
    uint8 MAV_STATE_BOOT = 1
    uint8 MAV_STATE_CALIBRATING = 2
    uint8 MAV_STATE_STANDBY = 3
    uint8 MAV_STATE_ACTIVE = 4
    uint8 MAV_STATE_CRITICAL = 5
    uint8 MAV_STATE_EMERGENCY = 6
    uint8 MAV_STATE_POWEROFF = 7
    uint8 MAV_STATE_FLIGHT_TERMINATION = 8
    
    uint8 MAV_COMP_ID_OBSTACLE_AVOIDANCE = 196
    uint8 MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY = 197
    
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
    const resolved = new CompanionProcessStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.component !== undefined) {
      resolved.component = msg.component;
    }
    else {
      resolved.component = 0
    }

    return resolved;
    }
};

// Constants for message
CompanionProcessStatus.Constants = {
  MAV_STATE_UNINIT: 0,
  MAV_STATE_BOOT: 1,
  MAV_STATE_CALIBRATING: 2,
  MAV_STATE_STANDBY: 3,
  MAV_STATE_ACTIVE: 4,
  MAV_STATE_CRITICAL: 5,
  MAV_STATE_EMERGENCY: 6,
  MAV_STATE_POWEROFF: 7,
  MAV_STATE_FLIGHT_TERMINATION: 8,
  MAV_COMP_ID_OBSTACLE_AVOIDANCE: 196,
  MAV_COMP_ID_VISUAL_INERTIAL_ODOMETRY: 197,
}

module.exports = CompanionProcessStatus;
