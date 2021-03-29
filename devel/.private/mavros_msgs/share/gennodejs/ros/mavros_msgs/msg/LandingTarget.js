// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LandingTarget {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.target_num = null;
      this.frame = null;
      this.angle = null;
      this.distance = null;
      this.size = null;
      this.pose = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('target_num')) {
        this.target_num = initObj.target_num
      }
      else {
        this.target_num = 0;
      }
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = 0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LandingTarget
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [target_num]
    bufferOffset = _serializer.uint8(obj.target_num, buffer, bufferOffset);
    // Serialize message field [frame]
    bufferOffset = _serializer.uint8(obj.frame, buffer, bufferOffset);
    // Check that the constant length array field [angle] has the right length
    if (obj.angle.length !== 2) {
      throw new Error('Unable to serialize array field angle - length must be 2')
    }
    // Serialize message field [angle]
    bufferOffset = _arraySerializer.float32(obj.angle, buffer, bufferOffset, 2);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Check that the constant length array field [size] has the right length
    if (obj.size.length !== 2) {
      throw new Error('Unable to serialize array field size - length must be 2')
    }
    // Serialize message field [size]
    bufferOffset = _arraySerializer.float32(obj.size, buffer, bufferOffset, 2);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LandingTarget
    let len;
    let data = new LandingTarget(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_num]
    data.target_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [frame]
    data.frame = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 79;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/LandingTarget';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76548ee08437914830bb7319d04d5490';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MAVLink message: LANDING_TARGET
    # https://mavlink.io/en/messages/common.html
    
    std_msgs/Header header
    
    ## MAV_FRAME enum
    uint8 GLOBAL = 0                   # Global coordinate frame, WGS84 coordinate system. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL)
    uint8 LOCAL_NED = 2                # Local coordinate frame, Z-up (x: north, y: east, z: down).
    uint8 MISSION = 3                  # NOT a coordinate frame, indicates a mission command.
    uint8 GLOBAL_RELATIVE_ALT = 4      # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.
    uint8 LOCAL_ENU = 5                # Local coordinate frame, Z-down (x: east, y: north, z: up)
    uint8 GLOBAL_INT = 6               # Global coordinate frame, WGS84 coordinate system. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL)
    uint8 GLOBAL_RELATIVE_ALT_INT = 7  # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.
    uint8 LOCAL_OFFSET_NED = 8         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.
    uint8 BODY_NED = 9                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.
    uint8 BODY_OFFSET_NED = 10         # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.
    uint8 GLOBAL_TERRAIN_ALT = 11      # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
    uint8 GLOBAL_TERRAIN_ALT_INT = 12  # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
    
    ## LANDING_TARGET_TYPE enum
    uint8 LIGHT_BEACON = 0             # Landing target signaled by light beacon (ex: IR-LOCK)
    uint8 RADIO_BEACON = 1             # Landing target signaled by radio beacon (ex: ILS, NDB)
    uint8 VISION_FIDUCIAL = 2          # Landing target represented by a fiducial marker (ex: ARTag)
    uint8 VISION_OTHER = 3             # Landing target represented by a pre-defined visual shape/feature (ex: X-marker, H-marker, square)
    
    uint8 target_num
    uint8 frame
    float32[2] angle
    float32 distance
    float32[2] size
    geometry_msgs/Pose pose
    uint8 type
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LandingTarget(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.target_num !== undefined) {
      resolved.target_num = msg.target_num;
    }
    else {
      resolved.target_num = 0
    }

    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = 0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = new Array(2).fill(0)
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = new Array(2).fill(0)
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
LandingTarget.Constants = {
  GLOBAL: 0,
  LOCAL_NED: 2,
  MISSION: 3,
  GLOBAL_RELATIVE_ALT: 4,
  LOCAL_ENU: 5,
  GLOBAL_INT: 6,
  GLOBAL_RELATIVE_ALT_INT: 7,
  LOCAL_OFFSET_NED: 8,
  BODY_NED: 9,
  BODY_OFFSET_NED: 10,
  GLOBAL_TERRAIN_ALT: 11,
  GLOBAL_TERRAIN_ALT_INT: 12,
  LIGHT_BEACON: 0,
  RADIO_BEACON: 1,
  VISION_FIDUCIAL: 2,
  VISION_OTHER: 3,
}

module.exports = LandingTarget;
