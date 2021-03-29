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

class MessageIntervalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_id = null;
      this.message_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('message_id')) {
        this.message_id = initObj.message_id
      }
      else {
        this.message_id = 0;
      }
      if (initObj.hasOwnProperty('message_rate')) {
        this.message_rate = initObj.message_rate
      }
      else {
        this.message_rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MessageIntervalRequest
    // Serialize message field [message_id]
    bufferOffset = _serializer.uint32(obj.message_id, buffer, bufferOffset);
    // Serialize message field [message_rate]
    bufferOffset = _serializer.float32(obj.message_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MessageIntervalRequest
    let len;
    let data = new MessageIntervalRequest(null);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [message_rate]
    data.message_rate = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/MessageIntervalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0211a7928924521de24f3981706be52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # sets message interval
    # See MAV_CMD_SET_MESSAGE_INTERVAL
    
    uint32 message_id
    float32 message_rate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MessageIntervalRequest(null);
    if (msg.message_id !== undefined) {
      resolved.message_id = msg.message_id;
    }
    else {
      resolved.message_id = 0
    }

    if (msg.message_rate !== undefined) {
      resolved.message_rate = msg.message_rate;
    }
    else {
      resolved.message_rate = 0.0
    }

    return resolved;
    }
};

class MessageIntervalResponse {
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
    // Serializes a message object of type MessageIntervalResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MessageIntervalResponse
    let len;
    let data = new MessageIntervalResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/MessageIntervalResponse';
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
    const resolved = new MessageIntervalResponse(null);
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
  Request: MessageIntervalRequest,
  Response: MessageIntervalResponse,
  md5sum() { return '99e633e185b7ee6b477bc9843a87b5ae'; },
  datatype() { return 'mavros_msgs/MessageInterval'; }
};
