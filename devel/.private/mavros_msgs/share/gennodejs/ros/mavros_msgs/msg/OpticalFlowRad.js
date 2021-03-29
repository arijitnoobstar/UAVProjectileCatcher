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

class OpticalFlowRad {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.integration_time_us = null;
      this.integrated_x = null;
      this.integrated_y = null;
      this.integrated_xgyro = null;
      this.integrated_ygyro = null;
      this.integrated_zgyro = null;
      this.temperature = null;
      this.quality = null;
      this.time_delta_distance_us = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('integration_time_us')) {
        this.integration_time_us = initObj.integration_time_us
      }
      else {
        this.integration_time_us = 0;
      }
      if (initObj.hasOwnProperty('integrated_x')) {
        this.integrated_x = initObj.integrated_x
      }
      else {
        this.integrated_x = 0.0;
      }
      if (initObj.hasOwnProperty('integrated_y')) {
        this.integrated_y = initObj.integrated_y
      }
      else {
        this.integrated_y = 0.0;
      }
      if (initObj.hasOwnProperty('integrated_xgyro')) {
        this.integrated_xgyro = initObj.integrated_xgyro
      }
      else {
        this.integrated_xgyro = 0.0;
      }
      if (initObj.hasOwnProperty('integrated_ygyro')) {
        this.integrated_ygyro = initObj.integrated_ygyro
      }
      else {
        this.integrated_ygyro = 0.0;
      }
      if (initObj.hasOwnProperty('integrated_zgyro')) {
        this.integrated_zgyro = initObj.integrated_zgyro
      }
      else {
        this.integrated_zgyro = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
      }
      if (initObj.hasOwnProperty('time_delta_distance_us')) {
        this.time_delta_distance_us = initObj.time_delta_distance_us
      }
      else {
        this.time_delta_distance_us = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OpticalFlowRad
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [integration_time_us]
    bufferOffset = _serializer.uint32(obj.integration_time_us, buffer, bufferOffset);
    // Serialize message field [integrated_x]
    bufferOffset = _serializer.float32(obj.integrated_x, buffer, bufferOffset);
    // Serialize message field [integrated_y]
    bufferOffset = _serializer.float32(obj.integrated_y, buffer, bufferOffset);
    // Serialize message field [integrated_xgyro]
    bufferOffset = _serializer.float32(obj.integrated_xgyro, buffer, bufferOffset);
    // Serialize message field [integrated_ygyro]
    bufferOffset = _serializer.float32(obj.integrated_ygyro, buffer, bufferOffset);
    // Serialize message field [integrated_zgyro]
    bufferOffset = _serializer.float32(obj.integrated_zgyro, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.int16(obj.temperature, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.uint8(obj.quality, buffer, bufferOffset);
    // Serialize message field [time_delta_distance_us]
    bufferOffset = _serializer.uint32(obj.time_delta_distance_us, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OpticalFlowRad
    let len;
    let data = new OpticalFlowRad(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [integration_time_us]
    data.integration_time_us = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [integrated_x]
    data.integrated_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [integrated_y]
    data.integrated_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [integrated_xgyro]
    data.integrated_xgyro = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [integrated_ygyro]
    data.integrated_ygyro = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [integrated_zgyro]
    data.integrated_zgyro = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time_delta_distance_us]
    data.time_delta_distance_us = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/OpticalFlowRad';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65d93e03c6188c7ee30415b2a39ad40d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # OPTICAL_FLOW_RAD message data
    
    std_msgs/Header header
    
    uint32 integration_time_us
    float32 integrated_x
    float32 integrated_y
    float32 integrated_xgyro
    float32 integrated_ygyro
    float32 integrated_zgyro
    int16 temperature
    uint8 quality
    uint32 time_delta_distance_us
    float32 distance
    
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
    const resolved = new OpticalFlowRad(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.integration_time_us !== undefined) {
      resolved.integration_time_us = msg.integration_time_us;
    }
    else {
      resolved.integration_time_us = 0
    }

    if (msg.integrated_x !== undefined) {
      resolved.integrated_x = msg.integrated_x;
    }
    else {
      resolved.integrated_x = 0.0
    }

    if (msg.integrated_y !== undefined) {
      resolved.integrated_y = msg.integrated_y;
    }
    else {
      resolved.integrated_y = 0.0
    }

    if (msg.integrated_xgyro !== undefined) {
      resolved.integrated_xgyro = msg.integrated_xgyro;
    }
    else {
      resolved.integrated_xgyro = 0.0
    }

    if (msg.integrated_ygyro !== undefined) {
      resolved.integrated_ygyro = msg.integrated_ygyro;
    }
    else {
      resolved.integrated_ygyro = 0.0
    }

    if (msg.integrated_zgyro !== undefined) {
      resolved.integrated_zgyro = msg.integrated_zgyro;
    }
    else {
      resolved.integrated_zgyro = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
    }

    if (msg.time_delta_distance_us !== undefined) {
      resolved.time_delta_distance_us = msg.time_delta_distance_us;
    }
    else {
      resolved.time_delta_distance_us = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = OpticalFlowRad;
