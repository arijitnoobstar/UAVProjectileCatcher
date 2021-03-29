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

class VehicleInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.available_info = null;
      this.sysid = null;
      this.compid = null;
      this.autopilot = null;
      this.type = null;
      this.system_status = null;
      this.base_mode = null;
      this.custom_mode = null;
      this.mode = null;
      this.mode_id = null;
      this.capabilities = null;
      this.flight_sw_version = null;
      this.middleware_sw_version = null;
      this.os_sw_version = null;
      this.board_version = null;
      this.flight_custom_version = null;
      this.vendor_id = null;
      this.product_id = null;
      this.uid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('available_info')) {
        this.available_info = initObj.available_info
      }
      else {
        this.available_info = 0;
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
      if (initObj.hasOwnProperty('autopilot')) {
        this.autopilot = initObj.autopilot
      }
      else {
        this.autopilot = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('system_status')) {
        this.system_status = initObj.system_status
      }
      else {
        this.system_status = 0;
      }
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
        this.custom_mode = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('mode_id')) {
        this.mode_id = initObj.mode_id
      }
      else {
        this.mode_id = 0;
      }
      if (initObj.hasOwnProperty('capabilities')) {
        this.capabilities = initObj.capabilities
      }
      else {
        this.capabilities = 0;
      }
      if (initObj.hasOwnProperty('flight_sw_version')) {
        this.flight_sw_version = initObj.flight_sw_version
      }
      else {
        this.flight_sw_version = 0;
      }
      if (initObj.hasOwnProperty('middleware_sw_version')) {
        this.middleware_sw_version = initObj.middleware_sw_version
      }
      else {
        this.middleware_sw_version = 0;
      }
      if (initObj.hasOwnProperty('os_sw_version')) {
        this.os_sw_version = initObj.os_sw_version
      }
      else {
        this.os_sw_version = 0;
      }
      if (initObj.hasOwnProperty('board_version')) {
        this.board_version = initObj.board_version
      }
      else {
        this.board_version = 0;
      }
      if (initObj.hasOwnProperty('flight_custom_version')) {
        this.flight_custom_version = initObj.flight_custom_version
      }
      else {
        this.flight_custom_version = '';
      }
      if (initObj.hasOwnProperty('vendor_id')) {
        this.vendor_id = initObj.vendor_id
      }
      else {
        this.vendor_id = 0;
      }
      if (initObj.hasOwnProperty('product_id')) {
        this.product_id = initObj.product_id
      }
      else {
        this.product_id = 0;
      }
      if (initObj.hasOwnProperty('uid')) {
        this.uid = initObj.uid
      }
      else {
        this.uid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [available_info]
    bufferOffset = _serializer.uint8(obj.available_info, buffer, bufferOffset);
    // Serialize message field [sysid]
    bufferOffset = _serializer.uint8(obj.sysid, buffer, bufferOffset);
    // Serialize message field [compid]
    bufferOffset = _serializer.uint8(obj.compid, buffer, bufferOffset);
    // Serialize message field [autopilot]
    bufferOffset = _serializer.uint8(obj.autopilot, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [system_status]
    bufferOffset = _serializer.uint8(obj.system_status, buffer, bufferOffset);
    // Serialize message field [base_mode]
    bufferOffset = _serializer.uint8(obj.base_mode, buffer, bufferOffset);
    // Serialize message field [custom_mode]
    bufferOffset = _serializer.uint32(obj.custom_mode, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [mode_id]
    bufferOffset = _serializer.uint32(obj.mode_id, buffer, bufferOffset);
    // Serialize message field [capabilities]
    bufferOffset = _serializer.uint64(obj.capabilities, buffer, bufferOffset);
    // Serialize message field [flight_sw_version]
    bufferOffset = _serializer.uint32(obj.flight_sw_version, buffer, bufferOffset);
    // Serialize message field [middleware_sw_version]
    bufferOffset = _serializer.uint32(obj.middleware_sw_version, buffer, bufferOffset);
    // Serialize message field [os_sw_version]
    bufferOffset = _serializer.uint32(obj.os_sw_version, buffer, bufferOffset);
    // Serialize message field [board_version]
    bufferOffset = _serializer.uint32(obj.board_version, buffer, bufferOffset);
    // Serialize message field [flight_custom_version]
    bufferOffset = _serializer.string(obj.flight_custom_version, buffer, bufferOffset);
    // Serialize message field [vendor_id]
    bufferOffset = _serializer.uint16(obj.vendor_id, buffer, bufferOffset);
    // Serialize message field [product_id]
    bufferOffset = _serializer.uint16(obj.product_id, buffer, bufferOffset);
    // Serialize message field [uid]
    bufferOffset = _serializer.uint64(obj.uid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleInfo
    let len;
    let data = new VehicleInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [available_info]
    data.available_info = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sysid]
    data.sysid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [compid]
    data.compid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [autopilot]
    data.autopilot = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [system_status]
    data.system_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [base_mode]
    data.base_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [custom_mode]
    data.custom_mode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode_id]
    data.mode_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [capabilities]
    data.capabilities = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [flight_sw_version]
    data.flight_sw_version = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [middleware_sw_version]
    data.middleware_sw_version = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [os_sw_version]
    data.os_sw_version = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [board_version]
    data.board_version = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [flight_custom_version]
    data.flight_custom_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vendor_id]
    data.vendor_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [product_id]
    data.product_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [uid]
    data.uid = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.mode.length;
    length += object.flight_custom_version.length;
    return length + 59;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/VehicleInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9afa55616f5936bd9469d7d85c523ac1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Vehicle Info msg
    
    std_msgs/Header header
    
    uint8 HAVE_INFO_HEARTBEAT = 1
    uint8 HAVE_INFO_AUTOPILOT_VERSION = 2
    uint8 available_info		# Bitmap shows what info is available
    
    # Vehicle address
    uint8 sysid                     # SYSTEM ID
    uint8 compid                    # COMPONENT ID
    
    # -*- Heartbeat info -*-
    uint8 autopilot                 # MAV_AUTOPILOT
    uint8 type                      # MAV_TYPE
    uint8 system_status             # MAV_STATE
    uint8 base_mode
    uint32 custom_mode
    string mode                     # MAV_MODE string
    uint32 mode_id                  # MAV_MODE number
    
    # -*- Autopilot version -*-
    uint64 capabilities             # MAV_PROTOCOL_CAPABILITY
    uint32 flight_sw_version        # Firmware version number
    uint32 middleware_sw_version    # Middleware version number
    uint32 os_sw_version            # Operating system version number
    uint32 board_version            # HW / board version (last 8 bytes should be silicon ID, if any)
    string flight_custom_version    # Custom version field, commonly from the first 8 bytes of the git hash
    uint16 vendor_id                # ID of the board vendor
    uint16 product_id               # ID of the product
    uint64 uid                      # UID if provided by hardware
    
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
    const resolved = new VehicleInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.available_info !== undefined) {
      resolved.available_info = msg.available_info;
    }
    else {
      resolved.available_info = 0
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

    if (msg.autopilot !== undefined) {
      resolved.autopilot = msg.autopilot;
    }
    else {
      resolved.autopilot = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.system_status !== undefined) {
      resolved.system_status = msg.system_status;
    }
    else {
      resolved.system_status = 0
    }

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
      resolved.custom_mode = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.mode_id !== undefined) {
      resolved.mode_id = msg.mode_id;
    }
    else {
      resolved.mode_id = 0
    }

    if (msg.capabilities !== undefined) {
      resolved.capabilities = msg.capabilities;
    }
    else {
      resolved.capabilities = 0
    }

    if (msg.flight_sw_version !== undefined) {
      resolved.flight_sw_version = msg.flight_sw_version;
    }
    else {
      resolved.flight_sw_version = 0
    }

    if (msg.middleware_sw_version !== undefined) {
      resolved.middleware_sw_version = msg.middleware_sw_version;
    }
    else {
      resolved.middleware_sw_version = 0
    }

    if (msg.os_sw_version !== undefined) {
      resolved.os_sw_version = msg.os_sw_version;
    }
    else {
      resolved.os_sw_version = 0
    }

    if (msg.board_version !== undefined) {
      resolved.board_version = msg.board_version;
    }
    else {
      resolved.board_version = 0
    }

    if (msg.flight_custom_version !== undefined) {
      resolved.flight_custom_version = msg.flight_custom_version;
    }
    else {
      resolved.flight_custom_version = ''
    }

    if (msg.vendor_id !== undefined) {
      resolved.vendor_id = msg.vendor_id;
    }
    else {
      resolved.vendor_id = 0
    }

    if (msg.product_id !== undefined) {
      resolved.product_id = msg.product_id;
    }
    else {
      resolved.product_id = 0
    }

    if (msg.uid !== undefined) {
      resolved.uid = msg.uid;
    }
    else {
      resolved.uid = 0
    }

    return resolved;
    }
};

// Constants for message
VehicleInfo.Constants = {
  HAVE_INFO_HEARTBEAT: 1,
  HAVE_INFO_AUTOPILOT_VERSION: 2,
}

module.exports = VehicleInfo;
