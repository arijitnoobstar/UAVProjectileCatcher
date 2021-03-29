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

class EstimatorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.attitude_status_flag = null;
      this.velocity_horiz_status_flag = null;
      this.velocity_vert_status_flag = null;
      this.pos_horiz_rel_status_flag = null;
      this.pos_horiz_abs_status_flag = null;
      this.pos_vert_abs_status_flag = null;
      this.pos_vert_agl_status_flag = null;
      this.const_pos_mode_status_flag = null;
      this.pred_pos_horiz_rel_status_flag = null;
      this.pred_pos_horiz_abs_status_flag = null;
      this.gps_glitch_status_flag = null;
      this.accel_error_status_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('attitude_status_flag')) {
        this.attitude_status_flag = initObj.attitude_status_flag
      }
      else {
        this.attitude_status_flag = false;
      }
      if (initObj.hasOwnProperty('velocity_horiz_status_flag')) {
        this.velocity_horiz_status_flag = initObj.velocity_horiz_status_flag
      }
      else {
        this.velocity_horiz_status_flag = false;
      }
      if (initObj.hasOwnProperty('velocity_vert_status_flag')) {
        this.velocity_vert_status_flag = initObj.velocity_vert_status_flag
      }
      else {
        this.velocity_vert_status_flag = false;
      }
      if (initObj.hasOwnProperty('pos_horiz_rel_status_flag')) {
        this.pos_horiz_rel_status_flag = initObj.pos_horiz_rel_status_flag
      }
      else {
        this.pos_horiz_rel_status_flag = false;
      }
      if (initObj.hasOwnProperty('pos_horiz_abs_status_flag')) {
        this.pos_horiz_abs_status_flag = initObj.pos_horiz_abs_status_flag
      }
      else {
        this.pos_horiz_abs_status_flag = false;
      }
      if (initObj.hasOwnProperty('pos_vert_abs_status_flag')) {
        this.pos_vert_abs_status_flag = initObj.pos_vert_abs_status_flag
      }
      else {
        this.pos_vert_abs_status_flag = false;
      }
      if (initObj.hasOwnProperty('pos_vert_agl_status_flag')) {
        this.pos_vert_agl_status_flag = initObj.pos_vert_agl_status_flag
      }
      else {
        this.pos_vert_agl_status_flag = false;
      }
      if (initObj.hasOwnProperty('const_pos_mode_status_flag')) {
        this.const_pos_mode_status_flag = initObj.const_pos_mode_status_flag
      }
      else {
        this.const_pos_mode_status_flag = false;
      }
      if (initObj.hasOwnProperty('pred_pos_horiz_rel_status_flag')) {
        this.pred_pos_horiz_rel_status_flag = initObj.pred_pos_horiz_rel_status_flag
      }
      else {
        this.pred_pos_horiz_rel_status_flag = false;
      }
      if (initObj.hasOwnProperty('pred_pos_horiz_abs_status_flag')) {
        this.pred_pos_horiz_abs_status_flag = initObj.pred_pos_horiz_abs_status_flag
      }
      else {
        this.pred_pos_horiz_abs_status_flag = false;
      }
      if (initObj.hasOwnProperty('gps_glitch_status_flag')) {
        this.gps_glitch_status_flag = initObj.gps_glitch_status_flag
      }
      else {
        this.gps_glitch_status_flag = false;
      }
      if (initObj.hasOwnProperty('accel_error_status_flag')) {
        this.accel_error_status_flag = initObj.accel_error_status_flag
      }
      else {
        this.accel_error_status_flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EstimatorStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [attitude_status_flag]
    bufferOffset = _serializer.bool(obj.attitude_status_flag, buffer, bufferOffset);
    // Serialize message field [velocity_horiz_status_flag]
    bufferOffset = _serializer.bool(obj.velocity_horiz_status_flag, buffer, bufferOffset);
    // Serialize message field [velocity_vert_status_flag]
    bufferOffset = _serializer.bool(obj.velocity_vert_status_flag, buffer, bufferOffset);
    // Serialize message field [pos_horiz_rel_status_flag]
    bufferOffset = _serializer.bool(obj.pos_horiz_rel_status_flag, buffer, bufferOffset);
    // Serialize message field [pos_horiz_abs_status_flag]
    bufferOffset = _serializer.bool(obj.pos_horiz_abs_status_flag, buffer, bufferOffset);
    // Serialize message field [pos_vert_abs_status_flag]
    bufferOffset = _serializer.bool(obj.pos_vert_abs_status_flag, buffer, bufferOffset);
    // Serialize message field [pos_vert_agl_status_flag]
    bufferOffset = _serializer.bool(obj.pos_vert_agl_status_flag, buffer, bufferOffset);
    // Serialize message field [const_pos_mode_status_flag]
    bufferOffset = _serializer.bool(obj.const_pos_mode_status_flag, buffer, bufferOffset);
    // Serialize message field [pred_pos_horiz_rel_status_flag]
    bufferOffset = _serializer.bool(obj.pred_pos_horiz_rel_status_flag, buffer, bufferOffset);
    // Serialize message field [pred_pos_horiz_abs_status_flag]
    bufferOffset = _serializer.bool(obj.pred_pos_horiz_abs_status_flag, buffer, bufferOffset);
    // Serialize message field [gps_glitch_status_flag]
    bufferOffset = _serializer.bool(obj.gps_glitch_status_flag, buffer, bufferOffset);
    // Serialize message field [accel_error_status_flag]
    bufferOffset = _serializer.bool(obj.accel_error_status_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EstimatorStatus
    let len;
    let data = new EstimatorStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [attitude_status_flag]
    data.attitude_status_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [velocity_horiz_status_flag]
    data.velocity_horiz_status_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [velocity_vert_status_flag]
    data.velocity_vert_status_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pos_horiz_rel_status_flag]
    data.pos_horiz_rel_status_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pos_horiz_abs_status_flag]
    data.pos_horiz_abs_status_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pos_vert_abs_status_flag]
    data.pos_vert_abs_status_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pos_vert_agl_status_flag]
    data.pos_vert_agl_status_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [const_pos_mode_status_flag]
    data.const_pos_mode_status_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pred_pos_horiz_rel_status_flag]
    data.pred_pos_horiz_rel_status_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pred_pos_horiz_abs_status_flag]
    data.pred_pos_horiz_abs_status_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gps_glitch_status_flag]
    data.gps_glitch_status_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [accel_error_status_flag]
    data.accel_error_status_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/EstimatorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39dbcc4be3f04b68422f784827c47dd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Current autopilot estimator state
    #
    # https://mavlink.io/en/messages/common.html#ESTIMATOR_STATUS_FLAGS
    
    std_msgs/Header header
    bool attitude_status_flag
    
    bool velocity_horiz_status_flag
    bool velocity_vert_status_flag
    
    bool pos_horiz_rel_status_flag
    bool pos_horiz_abs_status_flag
    
    bool pos_vert_abs_status_flag
    bool pos_vert_agl_status_flag
    
    bool const_pos_mode_status_flag
    
    bool pred_pos_horiz_rel_status_flag
    bool pred_pos_horiz_abs_status_flag
    
    bool gps_glitch_status_flag
    bool accel_error_status_flag
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
    const resolved = new EstimatorStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.attitude_status_flag !== undefined) {
      resolved.attitude_status_flag = msg.attitude_status_flag;
    }
    else {
      resolved.attitude_status_flag = false
    }

    if (msg.velocity_horiz_status_flag !== undefined) {
      resolved.velocity_horiz_status_flag = msg.velocity_horiz_status_flag;
    }
    else {
      resolved.velocity_horiz_status_flag = false
    }

    if (msg.velocity_vert_status_flag !== undefined) {
      resolved.velocity_vert_status_flag = msg.velocity_vert_status_flag;
    }
    else {
      resolved.velocity_vert_status_flag = false
    }

    if (msg.pos_horiz_rel_status_flag !== undefined) {
      resolved.pos_horiz_rel_status_flag = msg.pos_horiz_rel_status_flag;
    }
    else {
      resolved.pos_horiz_rel_status_flag = false
    }

    if (msg.pos_horiz_abs_status_flag !== undefined) {
      resolved.pos_horiz_abs_status_flag = msg.pos_horiz_abs_status_flag;
    }
    else {
      resolved.pos_horiz_abs_status_flag = false
    }

    if (msg.pos_vert_abs_status_flag !== undefined) {
      resolved.pos_vert_abs_status_flag = msg.pos_vert_abs_status_flag;
    }
    else {
      resolved.pos_vert_abs_status_flag = false
    }

    if (msg.pos_vert_agl_status_flag !== undefined) {
      resolved.pos_vert_agl_status_flag = msg.pos_vert_agl_status_flag;
    }
    else {
      resolved.pos_vert_agl_status_flag = false
    }

    if (msg.const_pos_mode_status_flag !== undefined) {
      resolved.const_pos_mode_status_flag = msg.const_pos_mode_status_flag;
    }
    else {
      resolved.const_pos_mode_status_flag = false
    }

    if (msg.pred_pos_horiz_rel_status_flag !== undefined) {
      resolved.pred_pos_horiz_rel_status_flag = msg.pred_pos_horiz_rel_status_flag;
    }
    else {
      resolved.pred_pos_horiz_rel_status_flag = false
    }

    if (msg.pred_pos_horiz_abs_status_flag !== undefined) {
      resolved.pred_pos_horiz_abs_status_flag = msg.pred_pos_horiz_abs_status_flag;
    }
    else {
      resolved.pred_pos_horiz_abs_status_flag = false
    }

    if (msg.gps_glitch_status_flag !== undefined) {
      resolved.gps_glitch_status_flag = msg.gps_glitch_status_flag;
    }
    else {
      resolved.gps_glitch_status_flag = false
    }

    if (msg.accel_error_status_flag !== undefined) {
      resolved.accel_error_status_flag = msg.accel_error_status_flag;
    }
    else {
      resolved.accel_error_status_flag = false
    }

    return resolved;
    }
};

module.exports = EstimatorStatus;
