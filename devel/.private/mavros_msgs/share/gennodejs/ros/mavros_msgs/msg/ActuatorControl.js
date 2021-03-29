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

class ActuatorControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.group_mix = null;
      this.controls = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('group_mix')) {
        this.group_mix = initObj.group_mix
      }
      else {
        this.group_mix = 0;
      }
      if (initObj.hasOwnProperty('controls')) {
        this.controls = initObj.controls
      }
      else {
        this.controls = new Array(8).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActuatorControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [group_mix]
    bufferOffset = _serializer.uint8(obj.group_mix, buffer, bufferOffset);
    // Check that the constant length array field [controls] has the right length
    if (obj.controls.length !== 8) {
      throw new Error('Unable to serialize array field controls - length must be 8')
    }
    // Serialize message field [controls]
    bufferOffset = _arraySerializer.float32(obj.controls, buffer, bufferOffset, 8);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActuatorControl
    let len;
    let data = new ActuatorControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [group_mix]
    data.group_mix = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [controls]
    data.controls = _arrayDeserializer.float32(buffer, bufferOffset, 8)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/ActuatorControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9eea0a80c88944fe2fb67f3b3768854b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # raw servo values for direct actuator controls
    #
    # about groups, mixing and channels:
    # https://pixhawk.org/dev/mixing
    
    # constant for mixer group
    uint8 PX4_MIX_FLIGHT_CONTROL = 0
    uint8 PX4_MIX_FLIGHT_CONTROL_VTOL_ALT = 1
    uint8 PX4_MIX_PAYLOAD = 2
    uint8 PX4_MIX_MANUAL_PASSTHROUGH = 3
    #uint8 PX4_MIX_FC_MC_VIRT = 4
    #uint8 PX4_MIX_FC_FW_VIRT = 5
    
    std_msgs/Header header
    uint8 group_mix
    float32[8] controls
    
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
    const resolved = new ActuatorControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.group_mix !== undefined) {
      resolved.group_mix = msg.group_mix;
    }
    else {
      resolved.group_mix = 0
    }

    if (msg.controls !== undefined) {
      resolved.controls = msg.controls;
    }
    else {
      resolved.controls = new Array(8).fill(0)
    }

    return resolved;
    }
};

// Constants for message
ActuatorControl.Constants = {
  PX4_MIX_FLIGHT_CONTROL: 0,
  PX4_MIX_FLIGHT_CONTROL_VTOL_ALT: 1,
  PX4_MIX_PAYLOAD: 2,
  PX4_MIX_MANUAL_PASSTHROUGH: 3,
}

module.exports = ActuatorControl;
