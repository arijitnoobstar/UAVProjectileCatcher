// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PositionTarget = require('./PositionTarget.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.point_1 = null;
      this.point_2 = null;
      this.point_3 = null;
      this.point_4 = null;
      this.point_5 = null;
      this.point_valid = null;
      this.command = null;
      this.time_horizon = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('point_1')) {
        this.point_1 = initObj.point_1
      }
      else {
        this.point_1 = new PositionTarget();
      }
      if (initObj.hasOwnProperty('point_2')) {
        this.point_2 = initObj.point_2
      }
      else {
        this.point_2 = new PositionTarget();
      }
      if (initObj.hasOwnProperty('point_3')) {
        this.point_3 = initObj.point_3
      }
      else {
        this.point_3 = new PositionTarget();
      }
      if (initObj.hasOwnProperty('point_4')) {
        this.point_4 = initObj.point_4
      }
      else {
        this.point_4 = new PositionTarget();
      }
      if (initObj.hasOwnProperty('point_5')) {
        this.point_5 = initObj.point_5
      }
      else {
        this.point_5 = new PositionTarget();
      }
      if (initObj.hasOwnProperty('point_valid')) {
        this.point_valid = initObj.point_valid
      }
      else {
        this.point_valid = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new Array(5).fill(0);
      }
      if (initObj.hasOwnProperty('time_horizon')) {
        this.time_horizon = initObj.time_horizon
      }
      else {
        this.time_horizon = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [point_1]
    bufferOffset = PositionTarget.serialize(obj.point_1, buffer, bufferOffset);
    // Serialize message field [point_2]
    bufferOffset = PositionTarget.serialize(obj.point_2, buffer, bufferOffset);
    // Serialize message field [point_3]
    bufferOffset = PositionTarget.serialize(obj.point_3, buffer, bufferOffset);
    // Serialize message field [point_4]
    bufferOffset = PositionTarget.serialize(obj.point_4, buffer, bufferOffset);
    // Serialize message field [point_5]
    bufferOffset = PositionTarget.serialize(obj.point_5, buffer, bufferOffset);
    // Check that the constant length array field [point_valid] has the right length
    if (obj.point_valid.length !== 5) {
      throw new Error('Unable to serialize array field point_valid - length must be 5')
    }
    // Serialize message field [point_valid]
    bufferOffset = _arraySerializer.uint8(obj.point_valid, buffer, bufferOffset, 5);
    // Check that the constant length array field [command] has the right length
    if (obj.command.length !== 5) {
      throw new Error('Unable to serialize array field command - length must be 5')
    }
    // Serialize message field [command]
    bufferOffset = _arraySerializer.uint16(obj.command, buffer, bufferOffset, 5);
    // Check that the constant length array field [time_horizon] has the right length
    if (obj.time_horizon.length !== 5) {
      throw new Error('Unable to serialize array field time_horizon - length must be 5')
    }
    // Serialize message field [time_horizon]
    bufferOffset = _arraySerializer.float32(obj.time_horizon, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory
    let len;
    let data = new Trajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [point_1]
    data.point_1 = PositionTarget.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_2]
    data.point_2 = PositionTarget.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_3]
    data.point_3 = PositionTarget.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_4]
    data.point_4 = PositionTarget.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_5]
    data.point_5 = PositionTarget.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_valid]
    data.point_valid = _arrayDeserializer.uint8(buffer, bufferOffset, 5)
    // Deserialize message field [command]
    data.command = _arrayDeserializer.uint16(buffer, bufferOffset, 5)
    // Deserialize message field [time_horizon]
    data.time_horizon = _arrayDeserializer.float32(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PositionTarget.getMessageSize(object.point_1);
    length += PositionTarget.getMessageSize(object.point_2);
    length += PositionTarget.getMessageSize(object.point_3);
    length += PositionTarget.getMessageSize(object.point_4);
    length += PositionTarget.getMessageSize(object.point_5);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/Trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '477b47a103394ad6be940e5705f338e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MAVLink message: TRAJECTORY
    # https://mavlink.io/en/messages/common.html#TRAJECTORY
    
    std_msgs/Header header
    
    uint8 type # See enum MAV_TRAJECTORY_REPRESENTATION.
    uint8 MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS = 0
    uint8 MAV_TRAJECTORY_REPRESENTATION_BEZIER = 1
    
    mavros_msgs/PositionTarget point_1
    mavros_msgs/PositionTarget point_2
    mavros_msgs/PositionTarget point_3
    mavros_msgs/PositionTarget point_4
    mavros_msgs/PositionTarget point_5
    
    uint8[5] point_valid # States if respective point is valid.
    uint16[5] command # MAV_CMD associated with each point. UINT16_MAX if unused.
    
    float32[5] time_horizon # if type MAV_TRAJECTORY_REPRESENTATION_BEZIER, it represents the time horizon for each point, otherwise set to NaN
    
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
    
    ================================================================================
    MSG: mavros_msgs/PositionTarget
    # Message for SET_POSITION_TARGET_LOCAL_NED
    #
    # Some complex system requires all feautures that mavlink
    # message provide. See issue #402.
    
    std_msgs/Header header
    
    uint8 coordinate_frame
    uint8 FRAME_LOCAL_NED = 1
    uint8 FRAME_LOCAL_OFFSET_NED = 7
    uint8 FRAME_BODY_NED = 8
    uint8 FRAME_BODY_OFFSET_NED = 9
    
    uint16 type_mask
    uint16 IGNORE_PX = 1	# Position ignore flags
    uint16 IGNORE_PY = 2
    uint16 IGNORE_PZ = 4
    uint16 IGNORE_VX = 8	# Velocity vector ignore flags
    uint16 IGNORE_VY = 16
    uint16 IGNORE_VZ = 32
    uint16 IGNORE_AFX = 64	# Acceleration/Force vector ignore flags
    uint16 IGNORE_AFY = 128
    uint16 IGNORE_AFZ = 256
    uint16 FORCE = 512	# Force in af vector flag
    uint16 IGNORE_YAW = 1024
    uint16 IGNORE_YAW_RATE = 2048
    
    geometry_msgs/Point position
    geometry_msgs/Vector3 velocity
    geometry_msgs/Vector3 acceleration_or_force
    float32 yaw
    float32 yaw_rate
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Trajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.point_1 !== undefined) {
      resolved.point_1 = PositionTarget.Resolve(msg.point_1)
    }
    else {
      resolved.point_1 = new PositionTarget()
    }

    if (msg.point_2 !== undefined) {
      resolved.point_2 = PositionTarget.Resolve(msg.point_2)
    }
    else {
      resolved.point_2 = new PositionTarget()
    }

    if (msg.point_3 !== undefined) {
      resolved.point_3 = PositionTarget.Resolve(msg.point_3)
    }
    else {
      resolved.point_3 = new PositionTarget()
    }

    if (msg.point_4 !== undefined) {
      resolved.point_4 = PositionTarget.Resolve(msg.point_4)
    }
    else {
      resolved.point_4 = new PositionTarget()
    }

    if (msg.point_5 !== undefined) {
      resolved.point_5 = PositionTarget.Resolve(msg.point_5)
    }
    else {
      resolved.point_5 = new PositionTarget()
    }

    if (msg.point_valid !== undefined) {
      resolved.point_valid = msg.point_valid;
    }
    else {
      resolved.point_valid = new Array(5).fill(0)
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = new Array(5).fill(0)
    }

    if (msg.time_horizon !== undefined) {
      resolved.time_horizon = msg.time_horizon;
    }
    else {
      resolved.time_horizon = new Array(5).fill(0)
    }

    return resolved;
    }
};

// Constants for message
Trajectory.Constants = {
  MAV_TRAJECTORY_REPRESENTATION_WAYPOINTS: 0,
  MAV_TRAJECTORY_REPRESENTATION_BEZIER: 1,
}

module.exports = Trajectory;
