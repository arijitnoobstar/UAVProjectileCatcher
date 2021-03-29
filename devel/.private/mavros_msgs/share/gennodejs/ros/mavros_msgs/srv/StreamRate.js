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

class StreamRateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stream_id = null;
      this.message_rate = null;
      this.on_off = null;
    }
    else {
      if (initObj.hasOwnProperty('stream_id')) {
        this.stream_id = initObj.stream_id
      }
      else {
        this.stream_id = 0;
      }
      if (initObj.hasOwnProperty('message_rate')) {
        this.message_rate = initObj.message_rate
      }
      else {
        this.message_rate = 0;
      }
      if (initObj.hasOwnProperty('on_off')) {
        this.on_off = initObj.on_off
      }
      else {
        this.on_off = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StreamRateRequest
    // Serialize message field [stream_id]
    bufferOffset = _serializer.uint8(obj.stream_id, buffer, bufferOffset);
    // Serialize message field [message_rate]
    bufferOffset = _serializer.uint16(obj.message_rate, buffer, bufferOffset);
    // Serialize message field [on_off]
    bufferOffset = _serializer.bool(obj.on_off, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StreamRateRequest
    let len;
    let data = new StreamRateRequest(null);
    // Deserialize message field [stream_id]
    data.stream_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message_rate]
    data.message_rate = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [on_off]
    data.on_off = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/StreamRateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd12f7661724c8ba25f67ba597bb7d039';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # sets stream rate
    # See REQUEST_DATA_STREAM message
    
    uint8 STREAM_ALL = 0
    uint8 STREAM_RAW_SENSORS = 1
    uint8 STREAM_EXTENDED_STATUS = 2
    uint8 STREAM_RC_CHANNELS = 3
    uint8 STREAM_RAW_CONTROLLER = 4
    uint8 STREAM_POSITION = 6
    uint8 STREAM_EXTRA1 = 10
    uint8 STREAM_EXTRA2 = 11
    uint8 STREAM_EXTRA3 = 12
    
    uint8 stream_id
    uint16 message_rate
    bool on_off
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StreamRateRequest(null);
    if (msg.stream_id !== undefined) {
      resolved.stream_id = msg.stream_id;
    }
    else {
      resolved.stream_id = 0
    }

    if (msg.message_rate !== undefined) {
      resolved.message_rate = msg.message_rate;
    }
    else {
      resolved.message_rate = 0
    }

    if (msg.on_off !== undefined) {
      resolved.on_off = msg.on_off;
    }
    else {
      resolved.on_off = false
    }

    return resolved;
    }
};

// Constants for message
StreamRateRequest.Constants = {
  STREAM_ALL: 0,
  STREAM_RAW_SENSORS: 1,
  STREAM_EXTENDED_STATUS: 2,
  STREAM_RC_CHANNELS: 3,
  STREAM_RAW_CONTROLLER: 4,
  STREAM_POSITION: 6,
  STREAM_EXTRA1: 10,
  STREAM_EXTRA2: 11,
  STREAM_EXTRA3: 12,
}

class StreamRateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StreamRateResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StreamRateResponse
    let len;
    let data = new StreamRateResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/StreamRateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StreamRateResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: StreamRateRequest,
  Response: StreamRateResponse,
  md5sum() { return 'd12f7661724c8ba25f67ba597bb7d039'; },
  datatype() { return 'mavros_msgs/StreamRate'; }
};
