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

class Mavlink {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.framing_status = null;
      this.magic = null;
      this.len = null;
      this.incompat_flags = null;
      this.compat_flags = null;
      this.seq = null;
      this.sysid = null;
      this.compid = null;
      this.msgid = null;
      this.checksum = null;
      this.payload64 = null;
      this.signature = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('framing_status')) {
        this.framing_status = initObj.framing_status
      }
      else {
        this.framing_status = 0;
      }
      if (initObj.hasOwnProperty('magic')) {
        this.magic = initObj.magic
      }
      else {
        this.magic = 0;
      }
      if (initObj.hasOwnProperty('len')) {
        this.len = initObj.len
      }
      else {
        this.len = 0;
      }
      if (initObj.hasOwnProperty('incompat_flags')) {
        this.incompat_flags = initObj.incompat_flags
      }
      else {
        this.incompat_flags = 0;
      }
      if (initObj.hasOwnProperty('compat_flags')) {
        this.compat_flags = initObj.compat_flags
      }
      else {
        this.compat_flags = 0;
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('sysid')) {
        this.sysid = initObj.sysid
      }
      else {
        this.sysid = 0;
      }
      if (initObj.hasOwnProperty('compid')) {
        this.compid = initObj.compid
      }
      else {
        this.compid = 0;
      }
      if (initObj.hasOwnProperty('msgid')) {
        this.msgid = initObj.msgid
      }
      else {
        this.msgid = 0;
      }
      if (initObj.hasOwnProperty('checksum')) {
        this.checksum = initObj.checksum
      }
      else {
        this.checksum = 0;
      }
      if (initObj.hasOwnProperty('payload64')) {
        this.payload64 = initObj.payload64
      }
      else {
        this.payload64 = [];
      }
      if (initObj.hasOwnProperty('signature')) {
        this.signature = initObj.signature
      }
      else {
        this.signature = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mavlink
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [framing_status]
    bufferOffset = _serializer.uint8(obj.framing_status, buffer, bufferOffset);
    // Serialize message field [magic]
    bufferOffset = _serializer.uint8(obj.magic, buffer, bufferOffset);
    // Serialize message field [len]
    bufferOffset = _serializer.uint8(obj.len, buffer, bufferOffset);
    // Serialize message field [incompat_flags]
    bufferOffset = _serializer.uint8(obj.incompat_flags, buffer, bufferOffset);
    // Serialize message field [compat_flags]
    bufferOffset = _serializer.uint8(obj.compat_flags, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint8(obj.seq, buffer, bufferOffset);
    // Serialize message field [sysid]
    bufferOffset = _serializer.uint8(obj.sysid, buffer, bufferOffset);
    // Serialize message field [compid]
    bufferOffset = _serializer.uint8(obj.compid, buffer, bufferOffset);
    // Serialize message field [msgid]
    bufferOffset = _serializer.uint32(obj.msgid, buffer, bufferOffset);
    // Serialize message field [checksum]
    bufferOffset = _serializer.uint16(obj.checksum, buffer, bufferOffset);
    // Serialize message field [payload64]
    bufferOffset = _arraySerializer.uint64(obj.payload64, buffer, bufferOffset, null);
    // Serialize message field [signature]
    bufferOffset = _arraySerializer.uint8(obj.signature, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mavlink
    let len;
    let data = new Mavlink(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [framing_status]
    data.framing_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [magic]
    data.magic = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [len]
    data.len = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [incompat_flags]
    data.incompat_flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [compat_flags]
    data.compat_flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sysid]
    data.sysid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [compid]
    data.compid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [msgid]
    data.msgid = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [checksum]
    data.checksum = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [payload64]
    data.payload64 = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [signature]
    data.signature = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.payload64.length;
    length += object.signature.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/Mavlink';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41093e1fd0f3eea1da2aa33a177e5ba6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Mavlink message transport type.
    #
    # Used to transport mavlink_message_t via ROS topic
    #
    # :framing_status:
    #       Frame decoding status: OK, CRC error, bad Signature (mavlink v2.0)
    #       You may simply drop all non valid messages.
    #       Used for GCS Bridge to transport unknown messages.
    #
    # :magic:
    #       STX byte, used to determine protocol version v1.0 or v2.0.
    #
    # Please use mavros_msgs::mavlink::convert() from <mavros_msgs/mavlink_convert.h>
    # to convert between ROS and MAVLink message type
    
    # mavlink_framing_t enum
    uint8 FRAMING_OK = 1
    uint8 FRAMING_BAD_CRC = 2
    uint8 FRAMING_BAD_SIGNATURE = 3
    
    # stx values
    uint8 MAVLINK_V10 = 254
    uint8 MAVLINK_V20 = 253
    
    std_msgs/Header header
    uint8 framing_status
    
    uint8 magic		# STX byte
    uint8 len
    uint8 incompat_flags
    uint8 compat_flags
    uint8 seq
    uint8 sysid
    uint8 compid
    uint32 msgid		# 24-bit message id
    uint16 checksum
    uint64[] payload64
    uint8[] signature	# optional signature
    
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
    const resolved = new Mavlink(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.framing_status !== undefined) {
      resolved.framing_status = msg.framing_status;
    }
    else {
      resolved.framing_status = 0
    }

    if (msg.magic !== undefined) {
      resolved.magic = msg.magic;
    }
    else {
      resolved.magic = 0
    }

    if (msg.len !== undefined) {
      resolved.len = msg.len;
    }
    else {
      resolved.len = 0
    }

    if (msg.incompat_flags !== undefined) {
      resolved.incompat_flags = msg.incompat_flags;
    }
    else {
      resolved.incompat_flags = 0
    }

    if (msg.compat_flags !== undefined) {
      resolved.compat_flags = msg.compat_flags;
    }
    else {
      resolved.compat_flags = 0
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.sysid !== undefined) {
      resolved.sysid = msg.sysid;
    }
    else {
      resolved.sysid = 0
    }

    if (msg.compid !== undefined) {
      resolved.compid = msg.compid;
    }
    else {
      resolved.compid = 0
    }

    if (msg.msgid !== undefined) {
      resolved.msgid = msg.msgid;
    }
    else {
      resolved.msgid = 0
    }

    if (msg.checksum !== undefined) {
      resolved.checksum = msg.checksum;
    }
    else {
      resolved.checksum = 0
    }

    if (msg.payload64 !== undefined) {
      resolved.payload64 = msg.payload64;
    }
    else {
      resolved.payload64 = []
    }

    if (msg.signature !== undefined) {
      resolved.signature = msg.signature;
    }
    else {
      resolved.signature = []
    }

    return resolved;
    }
};

// Constants for message
Mavlink.Constants = {
  FRAMING_OK: 1,
  FRAMING_BAD_CRC: 2,
  FRAMING_BAD_SIGNATURE: 3,
  MAVLINK_V10: 254,
  MAVLINK_V20: 253,
}

module.exports = Mavlink;
