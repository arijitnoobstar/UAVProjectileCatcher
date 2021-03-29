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

class CamIMUStamp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_stamp = null;
      this.frame_seq_id = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_stamp')) {
        this.frame_stamp = initObj.frame_stamp
      }
      else {
        this.frame_stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('frame_seq_id')) {
        this.frame_seq_id = initObj.frame_seq_id
      }
      else {
        this.frame_seq_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CamIMUStamp
    // Serialize message field [frame_stamp]
    bufferOffset = _serializer.time(obj.frame_stamp, buffer, bufferOffset);
    // Serialize message field [frame_seq_id]
    bufferOffset = _serializer.int32(obj.frame_seq_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CamIMUStamp
    let len;
    let data = new CamIMUStamp(null);
    // Deserialize message field [frame_stamp]
    data.frame_stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frame_seq_id]
    data.frame_seq_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/CamIMUStamp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac22af9031671dd528a56f12d0986660';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # IMU-Camera synchronisation data
    
    time frame_stamp		# Timestamp when the camera was triggered
    int32 frame_seq_id		# Sequence number of the image frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CamIMUStamp(null);
    if (msg.frame_stamp !== undefined) {
      resolved.frame_stamp = msg.frame_stamp;
    }
    else {
      resolved.frame_stamp = {secs: 0, nsecs: 0}
    }

    if (msg.frame_seq_id !== undefined) {
      resolved.frame_seq_id = msg.frame_seq_id;
    }
    else {
      resolved.frame_seq_id = 0
    }

    return resolved;
    }
};

module.exports = CamIMUStamp;
