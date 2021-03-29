// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetMavFrameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mav_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('mav_frame')) {
        this.mav_frame = initObj.mav_frame
      }
      else {
        this.mav_frame = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMavFrameRequest
    // Serialize message field [mav_frame]
    bufferOffset = _serializer.uint8(obj.mav_frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMavFrameRequest
    let len;
    let data = new SetMavFrameRequest(null);
    // Deserialize message field [mav_frame]
    data.mav_frame = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/SetMavFrameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d2cf24886f660cde0f73cf6fc86e24c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Set MAV_FRAME for setpoints
    
    # [[[cog:
    # from pymavlink.dialects.v20 import common
    #
    # def decl_enum(ename, pfx='', bsz=8):
    #     enum = sorted(common.enums[ename].items())
    #     enum.pop() # remove ENUM_END
    #
    #     cog.outl("# " + ename)
    #     for k, e in enum:
    #         sn = e.name[len(ename) + 1:]
    #         l = "uint{bsz} {pfx}{sn} = {k}".format(**locals())
    #         if e.description:
    #             l += ' ' * (40 - len(l)) + ' # ' + e.description
    #         cog.outl(l)
    #
    # decl_enum('MAV_FRAME', 'FRAME_')
    # ]]]
    # MAV_FRAME
    uint8 FRAME_GLOBAL = 0                   # Global (WGS84) coordinate frame + MSL altitude. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL).
    uint8 FRAME_LOCAL_NED = 1                # Local coordinate frame, Z-down (x: north, y: east, z: down).
    uint8 FRAME_MISSION = 2                  # NOT a coordinate frame, indicates a mission command.
    uint8 FRAME_GLOBAL_RELATIVE_ALT = 3      # Global (WGS84) coordinate frame + altitude relative to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.
    uint8 FRAME_LOCAL_ENU = 4                # Local coordinate frame, Z-up (x: east, y: north, z: up).
    uint8 FRAME_GLOBAL_INT = 5               # Global (WGS84) coordinate frame (scaled) + MSL altitude. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL).
    uint8 FRAME_GLOBAL_RELATIVE_ALT_INT = 6  # Global (WGS84) coordinate frame (scaled) + altitude relative to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.
    uint8 FRAME_LOCAL_OFFSET_NED = 7         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.
    uint8 FRAME_BODY_NED = 8                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.
    uint8 FRAME_BODY_OFFSET_NED = 9          # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.
    uint8 FRAME_GLOBAL_TERRAIN_ALT = 10      # Global (WGS84) coordinate frame with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
    uint8 FRAME_GLOBAL_TERRAIN_ALT_INT = 11  # Global (WGS84) coordinate frame (scaled) with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
    uint8 FRAME_BODY_FRD = 12                # Body fixed frame of reference, Z-down (x: forward, y: right, z: down).
    uint8 FRAME_BODY_FLU = 13                # Body fixed frame of reference, Z-up (x: forward, y: left, z: up).
    uint8 FRAME_MOCAP_NED = 14               # Odometry local coordinate frame of data given by a motion capture system, Z-down (x: north, y: east, z: down).
    uint8 FRAME_MOCAP_ENU = 15               # Odometry local coordinate frame of data given by a motion capture system, Z-up (x: east, y: north, z: up).
    uint8 FRAME_VISION_NED = 16              # Odometry local coordinate frame of data given by a vision estimation system, Z-down (x: north, y: east, z: down).
    uint8 FRAME_VISION_ENU = 17              # Odometry local coordinate frame of data given by a vision estimation system, Z-up (x: east, y: north, z: up).
    uint8 FRAME_ESTIM_NED = 18               # Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-down (x: north, y: east, z: down).
    uint8 FRAME_ESTIM_ENU = 19               # Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-up (x: east, y: noth, z: up).
    # [[[end]]] (checksum: 4fd94c3c9c8cf1e62b10bc7dc66e4692)
    
    uint8 mav_frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMavFrameRequest(null);
    if (msg.mav_frame !== undefined) {
      resolved.mav_frame = msg.mav_frame;
    }
    else {
      resolved.mav_frame = 0
    }

    return resolved;
    }
};

// Constants for message
SetMavFrameRequest.Constants = {
  FRAME_GLOBAL: 0,
  FRAME_LOCAL_NED: 1,
  FRAME_MISSION: 2,
  FRAME_GLOBAL_RELATIVE_ALT: 3,
  FRAME_LOCAL_ENU: 4,
  FRAME_GLOBAL_INT: 5,
  FRAME_GLOBAL_RELATIVE_ALT_INT: 6,
  FRAME_LOCAL_OFFSET_NED: 7,
  FRAME_BODY_NED: 8,
  FRAME_BODY_OFFSET_NED: 9,
  FRAME_GLOBAL_TERRAIN_ALT: 10,
  FRAME_GLOBAL_TERRAIN_ALT_INT: 11,
  FRAME_BODY_FRD: 12,
  FRAME_BODY_FLU: 13,
  FRAME_MOCAP_NED: 14,
  FRAME_MOCAP_ENU: 15,
  FRAME_VISION_NED: 16,
  FRAME_VISION_ENU: 17,
  FRAME_ESTIM_NED: 18,
  FRAME_ESTIM_ENU: 19,
}

class SetMavFrameResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMavFrameResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMavFrameResponse
    let len;
    let data = new SetMavFrameResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/SetMavFrameResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMavFrameResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetMavFrameRequest,
  Response: SetMavFrameResponse,
  md5sum() { return '1d70e285b39e6f989f9ad19447c79649'; },
  datatype() { return 'mavros_msgs/SetMavFrame'; }
};
