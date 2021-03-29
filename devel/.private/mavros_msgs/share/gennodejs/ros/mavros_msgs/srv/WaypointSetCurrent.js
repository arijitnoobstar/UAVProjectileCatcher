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

class WaypointSetCurrentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wp_seq = null;
    }
    else {
      if (initObj.hasOwnProperty('wp_seq')) {
        this.wp_seq = initObj.wp_seq
      }
      else {
        this.wp_seq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointSetCurrentRequest
    // Serialize message field [wp_seq]
    bufferOffset = _serializer.uint16(obj.wp_seq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointSetCurrentRequest
    let len;
    let data = new WaypointSetCurrentRequest(null);
    // Deserialize message field [wp_seq]
    data.wp_seq = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointSetCurrentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9541369175e0776b0fef1c988db6840f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request set current waypoint
    #
    # wp_seq - index in waypoint array
    
    uint16 wp_seq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointSetCurrentRequest(null);
    if (msg.wp_seq !== undefined) {
      resolved.wp_seq = msg.wp_seq;
    }
    else {
      resolved.wp_seq = 0
    }

    return resolved;
    }
};

class WaypointSetCurrentResponse {
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
    // Serializes a message object of type WaypointSetCurrentResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointSetCurrentResponse
    let len;
    let data = new WaypointSetCurrentResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointSetCurrentResponse';
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
    const resolved = new WaypointSetCurrentResponse(null);
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
  Request: WaypointSetCurrentRequest,
  Response: WaypointSetCurrentResponse,
  md5sum() { return 'f99aa1a911a80ab546ea470f4e90c807'; },
  datatype() { return 'mavros_msgs/WaypointSetCurrent'; }
};
