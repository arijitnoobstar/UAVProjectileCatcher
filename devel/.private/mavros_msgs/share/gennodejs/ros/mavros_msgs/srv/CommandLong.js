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

class CommandLongRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.broadcast = null;
      this.command = null;
      this.confirmation = null;
      this.param1 = null;
      this.param2 = null;
      this.param3 = null;
      this.param4 = null;
      this.param5 = null;
      this.param6 = null;
      this.param7 = null;
    }
    else {
      if (initObj.hasOwnProperty('broadcast')) {
        this.broadcast = initObj.broadcast
      }
      else {
        this.broadcast = false;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('confirmation')) {
        this.confirmation = initObj.confirmation
      }
      else {
        this.confirmation = 0;
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
      if (initObj.hasOwnProperty('param5')) {
        this.param5 = initObj.param5
      }
      else {
        this.param5 = 0.0;
      }
      if (initObj.hasOwnProperty('param6')) {
        this.param6 = initObj.param6
      }
      else {
        this.param6 = 0.0;
      }
      if (initObj.hasOwnProperty('param7')) {
        this.param7 = initObj.param7
      }
      else {
        this.param7 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandLongRequest
    // Serialize message field [broadcast]
    bufferOffset = _serializer.bool(obj.broadcast, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint16(obj.command, buffer, bufferOffset);
    // Serialize message field [confirmation]
    bufferOffset = _serializer.uint8(obj.confirmation, buffer, bufferOffset);
    // Serialize message field [param1]
    bufferOffset = _serializer.float32(obj.param1, buffer, bufferOffset);
    // Serialize message field [param2]
    bufferOffset = _serializer.float32(obj.param2, buffer, bufferOffset);
    // Serialize message field [param3]
    bufferOffset = _serializer.float32(obj.param3, buffer, bufferOffset);
    // Serialize message field [param4]
    bufferOffset = _serializer.float32(obj.param4, buffer, bufferOffset);
    // Serialize message field [param5]
    bufferOffset = _serializer.float32(obj.param5, buffer, bufferOffset);
    // Serialize message field [param6]
    bufferOffset = _serializer.float32(obj.param6, buffer, bufferOffset);
    // Serialize message field [param7]
    bufferOffset = _serializer.float32(obj.param7, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandLongRequest
    let len;
    let data = new CommandLongRequest(null);
    // Deserialize message field [broadcast]
    data.broadcast = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [confirmation]
    data.confirmation = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [param1]
    data.param1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param2]
    data.param2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param3]
    data.param3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param4]
    data.param4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param5]
    data.param5 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param6]
    data.param6 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [param7]
    data.param7 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/CommandLongRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ad16dd8ca2c8f209bfc6c32c71c0dd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Generic COMMAND_LONG
    
    bool broadcast # send this command in broadcast mode
    
    uint16 command
    uint8 confirmation
    float32 param1
    float32 param2
    float32 param3
    float32 param4
    float32 param5	# x_lat
    float32 param6	# y_lon
    float32 param7	# z_alt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommandLongRequest(null);
    if (msg.broadcast !== undefined) {
      resolved.broadcast = msg.broadcast;
    }
    else {
      resolved.broadcast = false
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.confirmation !== undefined) {
      resolved.confirmation = msg.confirmation;
    }
    else {
      resolved.confirmation = 0
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

    if (msg.param5 !== undefined) {
      resolved.param5 = msg.param5;
    }
    else {
      resolved.param5 = 0.0
    }

    if (msg.param6 !== undefined) {
      resolved.param6 = msg.param6;
    }
    else {
      resolved.param6 = 0.0
    }

    if (msg.param7 !== undefined) {
      resolved.param7 = msg.param7;
    }
    else {
      resolved.param7 = 0.0
    }

    return resolved;
    }
};

class CommandLongResponse {
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
    // Serializes a message object of type CommandLongResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandLongResponse
    let len;
    let data = new CommandLongResponse(null);
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
    return 'mavros_msgs/CommandLongResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cd894375e4e3d2861d2222772894fdb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    # raw result returned by COMMAND_ACK
    uint8 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommandLongResponse(null);
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
  Request: CommandLongRequest,
  Response: CommandLongResponse,
  md5sum() { return 'eb9034afc87577c0a235d45b8f3437d2'; },
  datatype() { return 'mavros_msgs/CommandLong'; }
};
