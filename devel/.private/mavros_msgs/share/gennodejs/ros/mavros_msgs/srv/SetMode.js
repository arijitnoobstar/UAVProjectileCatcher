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

class SetModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base_mode = null;
      this.custom_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('base_mode')) {
        this.base_mode = initObj.base_mode
      }
      else {
        this.base_mode = 0;
      }
      if (initObj.hasOwnProperty('custom_mode')) {
        this.custom_mode = initObj.custom_mode
      }
      else {
        this.custom_mode = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetModeRequest
    // Serialize message field [base_mode]
    bufferOffset = _serializer.uint8(obj.base_mode, buffer, bufferOffset);
    // Serialize message field [custom_mode]
    bufferOffset = _serializer.string(obj.custom_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetModeRequest
    let len;
    let data = new SetModeRequest(null);
    // Deserialize message field [base_mode]
    data.base_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [custom_mode]
    data.custom_mode = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.custom_mode.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/SetModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd770431847cad3a8f50a81ec70ddf0e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # set FCU mode
    #
    # Known custom modes listed here:
    # http://wiki.ros.org/mavros/CustomModes
    
    # basic modes from MAV_MODE
    uint8 MAV_MODE_PREFLIGHT		= 0
    uint8 MAV_MODE_STABILIZE_DISARMED	= 80
    uint8 MAV_MODE_STABILIZE_ARMED		= 208
    uint8 MAV_MODE_MANUAL_DISARMED		= 64
    uint8 MAV_MODE_MANUAL_ARMED		= 192
    uint8 MAV_MODE_GUIDED_DISARMED		= 88
    uint8 MAV_MODE_GUIDED_ARMED		= 216
    uint8 MAV_MODE_AUTO_DISARMED		= 92
    uint8 MAV_MODE_AUTO_ARMED		= 220
    uint8 MAV_MODE_TEST_DISARMED		= 66
    uint8 MAV_MODE_TEST_ARMED		= 194
    
    uint8 base_mode		# filled by MAV_MODE enum value or 0 if custom_mode != ''
    string custom_mode	# string mode representation or integer
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetModeRequest(null);
    if (msg.base_mode !== undefined) {
      resolved.base_mode = msg.base_mode;
    }
    else {
      resolved.base_mode = 0
    }

    if (msg.custom_mode !== undefined) {
      resolved.custom_mode = msg.custom_mode;
    }
    else {
      resolved.custom_mode = ''
    }

    return resolved;
    }
};

// Constants for message
SetModeRequest.Constants = {
  MAV_MODE_PREFLIGHT: 0,
  MAV_MODE_STABILIZE_DISARMED: 80,
  MAV_MODE_STABILIZE_ARMED: 208,
  MAV_MODE_MANUAL_DISARMED: 64,
  MAV_MODE_MANUAL_ARMED: 192,
  MAV_MODE_GUIDED_DISARMED: 88,
  MAV_MODE_GUIDED_ARMED: 216,
  MAV_MODE_AUTO_DISARMED: 92,
  MAV_MODE_AUTO_ARMED: 220,
  MAV_MODE_TEST_DISARMED: 66,
  MAV_MODE_TEST_ARMED: 194,
}

class SetModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode_sent = null;
    }
    else {
      if (initObj.hasOwnProperty('mode_sent')) {
        this.mode_sent = initObj.mode_sent
      }
      else {
        this.mode_sent = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetModeResponse
    // Serialize message field [mode_sent]
    bufferOffset = _serializer.bool(obj.mode_sent, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetModeResponse
    let len;
    let data = new SetModeResponse(null);
    // Deserialize message field [mode_sent]
    data.mode_sent = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/SetModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a70bfe6329ecf8f8d858daa6f3db7655';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool mode_sent		# Mode known/parsed correctly and SET_MODE are sent
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetModeResponse(null);
    if (msg.mode_sent !== undefined) {
      resolved.mode_sent = msg.mode_sent;
    }
    else {
      resolved.mode_sent = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetModeRequest,
  Response: SetModeResponse,
  md5sum() { return 'e4f18fa93379f9ff1780d270ce110203'; },
  datatype() { return 'mavros_msgs/SetMode'; }
};
