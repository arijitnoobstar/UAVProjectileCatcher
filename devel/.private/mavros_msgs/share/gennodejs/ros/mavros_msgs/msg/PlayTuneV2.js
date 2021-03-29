// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PlayTuneV2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.format = null;
      this.tune = null;
    }
    else {
      if (initObj.hasOwnProperty('format')) {
        this.format = initObj.format
      }
      else {
        this.format = 0;
      }
      if (initObj.hasOwnProperty('tune')) {
        this.tune = initObj.tune
      }
      else {
        this.tune = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlayTuneV2
    // Serialize message field [format]
    bufferOffset = _serializer.uint8(obj.format, buffer, bufferOffset);
    // Serialize message field [tune]
    bufferOffset = _serializer.string(obj.tune, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlayTuneV2
    let len;
    let data = new PlayTuneV2(null);
    // Deserialize message field [format]
    data.format = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tune]
    data.tune = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tune.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/PlayTuneV2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '177f99ce3572342a75a8b5cdefc8286e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Play tune V2
    #
    # https://mavlink.io/en/messages/common.html#PLAY_TUNE_V2
    
    ## TUNE_FORMAT enum
    uint8 QBASIC1_1 = 1
    uint8 MML_MODERN = 2
    
    uint8 format
    string tune
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlayTuneV2(null);
    if (msg.format !== undefined) {
      resolved.format = msg.format;
    }
    else {
      resolved.format = 0
    }

    if (msg.tune !== undefined) {
      resolved.tune = msg.tune;
    }
    else {
      resolved.tune = ''
    }

    return resolved;
    }
};

// Constants for message
PlayTuneV2.Constants = {
  QBASIC1_1: 1,
  MML_MODERN: 2,
}

module.exports = PlayTuneV2;
