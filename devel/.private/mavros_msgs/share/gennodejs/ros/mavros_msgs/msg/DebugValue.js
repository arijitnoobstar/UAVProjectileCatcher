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

class DebugValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.index = null;
      this.name = null;
      this.value_float = null;
      this.value_int = null;
      this.data = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('value_float')) {
        this.value_float = initObj.value_float
      }
      else {
        this.value_float = 0.0;
      }
      if (initObj.hasOwnProperty('value_int')) {
        this.value_int = initObj.value_int
      }
      else {
        this.value_int = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DebugValue
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [value_float]
    bufferOffset = _serializer.float32(obj.value_float, buffer, bufferOffset);
    // Serialize message field [value_int]
    bufferOffset = _serializer.int32(obj.value_int, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.float32(obj.data, buffer, bufferOffset, null);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DebugValue
    let len;
    let data = new DebugValue(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value_float]
    data.value_float = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [value_int]
    data.value_int = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    length += 4 * object.data.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/DebugValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af412ff7223c64155e7e3c6b7508eaaa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Msg for Debug MAVLink API
    #
    # Supported types:
    # DEBUG			https://mavlink.io/en/messages/common.html#DEBUG
    # DEBUG_VECTOR			https://mavlink.io/en/messages/common.html#DEBUG_VECT
    # NAMED_VALUE_FLOAT		https://mavlink.io/en/messages/common.html#NAMED_VALUE_FLOAT
    # NAMED_VALUE_INT		https://mavlink.io/en/messages/common.html#NAMED_VALUE_INT
    # @TODO: add support for DEBUG_ARRAY (https://github.com/mavlink/mavlink/pull/734)
    
    std_msgs/Header header
    
    int32 index			# index value of DEBUG value (-1 if not indexed)
    
    string name			# value name/key
    
    float32 value_float		# float value for NAMED_VALUE_FLOAT and DEBUG
    int32 value_int		# int value for NAMED_VALUE_INT
    float32[] data			# DEBUG vector or array
    
    uint8 type
    uint8 TYPE_DEBUG		= 0
    uint8 TYPE_DEBUG_VECT		= 1
    uint8 TYPE_DEBUG_ARRAY		= 2
    uint8 TYPE_NAMED_VALUE_FLOAT	= 3
    uint8 TYPE_NAMED_VALUE_INT	= 4
    
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
    const resolved = new DebugValue(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.value_float !== undefined) {
      resolved.value_float = msg.value_float;
    }
    else {
      resolved.value_float = 0.0
    }

    if (msg.value_int !== undefined) {
      resolved.value_int = msg.value_int;
    }
    else {
      resolved.value_int = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
DebugValue.Constants = {
  TYPE_DEBUG: 0,
  TYPE_DEBUG_VECT: 1,
  TYPE_DEBUG_ARRAY: 2,
  TYPE_NAMED_VALUE_FLOAT: 3,
  TYPE_NAMED_VALUE_INT: 4,
}

module.exports = DebugValue;
