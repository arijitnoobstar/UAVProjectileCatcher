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

class ParamPullRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force_pull = null;
    }
    else {
      if (initObj.hasOwnProperty('force_pull')) {
        this.force_pull = initObj.force_pull
      }
      else {
        this.force_pull = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamPullRequest
    // Serialize message field [force_pull]
    bufferOffset = _serializer.bool(obj.force_pull, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamPullRequest
    let len;
    let data = new ParamPullRequest(null);
    // Deserialize message field [force_pull]
    data.force_pull = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/ParamPullRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16415b4e049d3f92df764eeb461102b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request parameters from device
    #
    # Returns success status and param_recived count
    
    bool force_pull
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamPullRequest(null);
    if (msg.force_pull !== undefined) {
      resolved.force_pull = msg.force_pull;
    }
    else {
      resolved.force_pull = false
    }

    return resolved;
    }
};

class ParamPullResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.param_received = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('param_received')) {
        this.param_received = initObj.param_received
      }
      else {
        this.param_received = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamPullResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [param_received]
    bufferOffset = _serializer.uint32(obj.param_received, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamPullResponse
    let len;
    let data = new ParamPullResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [param_received]
    data.param_received = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/ParamPullResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5601e883220b149a3209512e966299f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint32 param_received
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamPullResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.param_received !== undefined) {
      resolved.param_received = msg.param_received;
    }
    else {
      resolved.param_received = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ParamPullRequest,
  Response: ParamPullResponse,
  md5sum() { return 'c9628aea2226088718fd240fbd62afc7'; },
  datatype() { return 'mavros_msgs/ParamPull'; }
};
