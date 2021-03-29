// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Vibration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vibration = null;
      this.clipping = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vibration')) {
        this.vibration = initObj.vibration
      }
      else {
        this.vibration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('clipping')) {
        this.clipping = initObj.clipping
      }
      else {
        this.clipping = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vibration
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vibration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.vibration, buffer, bufferOffset);
    // Check that the constant length array field [clipping] has the right length
    if (obj.clipping.length !== 3) {
      throw new Error('Unable to serialize array field clipping - length must be 3')
    }
    // Serialize message field [clipping]
    bufferOffset = _arraySerializer.float32(obj.clipping, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vibration
    let len;
    let data = new Vibration(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vibration]
    data.vibration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [clipping]
    data.clipping = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/Vibration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb92bf9b7aa735dfcd06b3ede5027d02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # VIBRATION message data
    # @description: Vibration levels and accelerometer clipping
    
    std_msgs/Header header
    
    geometry_msgs/Vector3 vibration		# 3-axis vibration levels
    float32[3] clipping				# Accelerometers clipping
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
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Vibration(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vibration !== undefined) {
      resolved.vibration = geometry_msgs.msg.Vector3.Resolve(msg.vibration)
    }
    else {
      resolved.vibration = new geometry_msgs.msg.Vector3()
    }

    if (msg.clipping !== undefined) {
      resolved.clipping = msg.clipping;
    }
    else {
      resolved.clipping = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = Vibration;
