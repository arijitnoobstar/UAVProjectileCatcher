// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame = null;
      this.command = null;
      this.is_current = null;
      this.autocontinue = null;
      this.param1 = null;
      this.param2 = null;
      this.param3 = null;
      this.param4 = null;
      this.x_lat = null;
      this.y_long = null;
      this.z_alt = null;
    }
    else {
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('is_current')) {
        this.is_current = initObj.is_current
      }
      else {
        this.is_current = false;
      }
      if (initObj.hasOwnProperty('autocontinue')) {
        this.autocontinue = initObj.autocontinue
      }
      else {
        this.autocontinue = false;
      }
      if (initObj.hasOwnProperty('param1')) {
        this.param1 = initObj.param1
      }
      else {
        this.param1 = 0.0;
      }
      if (initObj.hasOwnProperty('param2')) {
        this.param2 = initObj.param2
      }
      else {
        this.param2 = 0.0;
      }
      if (initObj.hasOwnProperty('param3')) {
        this.param3 = initObj.param3
      }
      else {
        this.param3 = 0.0;
      }
      if (initObj.hasOwnProperty('param4')) {
        this.param4 = initObj.param4
      }
      else {
        this.param4 = 0.0;
      }
      if (initObj.hasOwnProperty('x_lat')) {
        this.x_lat = initObj.x_lat
      }
      else {
        this.x_lat = 0.0;
      }
      if (initObj.hasOwnProperty('y_long')) {
        this.y_long = initObj.y_long
      }
      else {
        this.y_long = 0.0;
      }
      if (initObj.hasOwnProperty('z_alt')) {
        this.z_alt = initObj.z_alt
      }
      else {
        this.z_alt = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Waypoint
    // Serialize message field [frame]
    bufferOffset = _serializer.uint8(obj.frame, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint16(obj.command, buffer, bufferOffset);
    // Serialize message field [is_current]
    bufferOffset = _serializer.bool(obj.is_current, buffer, bufferOffset);
    // Serialize message field [autocontinue]
    bufferOffset = _serializer.bool(obj.autocontinue, buffer, bufferOffset);
    // Serialize message field [param1]
    bufferOffset = _serializer.float32(obj.param1, buffer, bufferOffset);
    // Serialize message field [param2]
    bufferOffset = _serializer.float32(obj.param2, buffer, bufferOffset);
    // Serialize message field [param3]
    bufferOffset = _serializer.float32(obj.param3, buffer, bufferOffset);
    // Serialize message field [param4]
    bufferOffset = _serializer.float32(obj.param4, buffer, bufferOffset);
    // Serialize message field [x_lat]
    bufferOffset = _serializer.float64(obj.x_lat, buffer, bufferOffset);
    // Serialize message field [y_long]
    bufferOffset = _serializer.float64(obj.y_long, buffer, bufferOffset);
    // Serialize message field [z_alt]
    bufferOffset = _serializer.float64(obj.z_alt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoint
    let len;
    let data = new Waypoint(null);
    // Deserialize message field [frame]
    data.frame = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [is_current]
    data.is_current = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [autocontinue]
    data.autocontinue = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [param1]
    data.param1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param2]
    data.param2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param3]
    data.param3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param4]
    data.param4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_lat]
    data.x_lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_long]
    data.y_long = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_alt]
    data.z_alt = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a0d2b53dcd6b7aff0aa748703e85e92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Waypoint.msg
    #
    # ROS representation of MAVLink MISSION_ITEM
    # See mavlink documentation
    
    
    
    # see enum MAV_FRAME
    uint8 frame
    uint8 FRAME_GLOBAL = 0
    uint8 FRAME_LOCAL_NED = 1
    uint8 FRAME_MISSION = 2
    uint8 FRAME_GLOBAL_REL_ALT = 3
    uint8 FRAME_LOCAL_ENU = 4
    
    # see enum MAV_CMD and CommandCode.msg
    uint16 command
    
    bool is_current
    bool autocontinue
    # meaning of this params described in enum MAV_CMD
    float32 param1
    float32 param2
    float32 param3
    float32 param4
    float64 x_lat
    float64 y_long
    float64 z_alt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Waypoint(null);
    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.is_current !== undefined) {
      resolved.is_current = msg.is_current;
    }
    else {
      resolved.is_current = false
    }

    if (msg.autocontinue !== undefined) {
      resolved.autocontinue = msg.autocontinue;
    }
    else {
      resolved.autocontinue = false
    }

    if (msg.param1 !== undefined) {
      resolved.param1 = msg.param1;
    }
    else {
      resolved.param1 = 0.0
    }

    if (msg.param2 !== undefined) {
      resolved.param2 = msg.param2;
    }
    else {
      resolved.param2 = 0.0
    }

    if (msg.param3 !== undefined) {
      resolved.param3 = msg.param3;
    }
    else {
      resolved.param3 = 0.0
    }

    if (msg.param4 !== undefined) {
      resolved.param4 = msg.param4;
    }
    else {
      resolved.param4 = 0.0
    }

    if (msg.x_lat !== undefined) {
      resolved.x_lat = msg.x_lat;
    }
    else {
      resolved.x_lat = 0.0
    }

    if (msg.y_long !== undefined) {
      resolved.y_long = msg.y_long;
    }
    else {
      resolved.y_long = 0.0
    }

    if (msg.z_alt !== undefined) {
      resolved.z_alt = msg.z_alt;
    }
    else {
      resolved.z_alt = 0.0
    }

    return resolved;
    }
};

// Constants for message
Waypoint.Constants = {
  FRAME_GLOBAL: 0,
  FRAME_LOCAL_NED: 1,
  FRAME_MISSION: 2,
  FRAME_GLOBAL_REL_ALT: 3,
  FRAME_LOCAL_ENU: 4,
}

module.exports = Waypoint;
