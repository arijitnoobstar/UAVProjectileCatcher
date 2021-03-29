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

class CommandTriggerIntervalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cycle_time = null;
      this.integration_time = null;
    }
    else {
      if (initObj.hasOwnProperty('cycle_time')) {
        this.cycle_time = initObj.cycle_time
      }
      else {
        this.cycle_time = 0.0;
      }
      if (initObj.hasOwnProperty('integration_time')) {
        this.integration_time = initObj.integration_time
      }
      else {
        this.integration_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandTriggerIntervalRequest
    // Serialize message field [cycle_time]
    bufferOffset = _serializer.float32(obj.cycle_time, buffer, bufferOffset);
    // Serialize message field [integration_time]
    bufferOffset = _serializer.float32(obj.integration_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandTriggerIntervalRequest
    let len;
    let data = new CommandTriggerIntervalRequest(null);
    // Deserialize message field [cycle_time]
    data.cycle_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [integration_time]
    data.integration_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/CommandTriggerIntervalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54f6167a076ced593aa096ea6eb1a519';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Type for controlling camera trigger interval and integration time
    
    float32   cycle_time			# Trigger cycle_time (interval between to triggers) - set to 0 to ignore command
    float32   integration_time	# Camera shutter integration_time - set to 0 to ignore command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommandTriggerIntervalRequest(null);
    if (msg.cycle_time !== undefined) {
      resolved.cycle_time = msg.cycle_time;
    }
    else {
      resolved.cycle_time = 0.0
    }

    if (msg.integration_time !== undefined) {
      resolved.integration_time = msg.integration_time;
    }
    else {
      resolved.integration_time = 0.0
    }

    return resolved;
    }
};

class CommandTriggerIntervalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandTriggerIntervalResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandTriggerIntervalResponse
    let len;
    let data = new CommandTriggerIntervalResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/CommandTriggerIntervalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cd894375e4e3d2861d2222772894fdb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommandTriggerIntervalResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: CommandTriggerIntervalRequest,
  Response: CommandTriggerIntervalResponse,
  md5sum() { return 'b16f28a04389d5d47ddaa9e025e7383a'; },
  datatype() { return 'mavros_msgs/CommandTriggerInterval'; }
};
