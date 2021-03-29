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

let VehicleInfo = require('../msg/VehicleInfo.js');

//-----------------------------------------------------------

class VehicleInfoGetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sysid = null;
      this.compid = null;
      this.get_all = null;
    }
    else {
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
      if (initObj.hasOwnProperty('get_all')) {
        this.get_all = initObj.get_all
      }
      else {
        this.get_all = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleInfoGetRequest
    // Serialize message field [sysid]
    bufferOffset = _serializer.uint8(obj.sysid, buffer, bufferOffset);
    // Serialize message field [compid]
    bufferOffset = _serializer.uint8(obj.compid, buffer, bufferOffset);
    // Serialize message field [get_all]
    bufferOffset = _serializer.bool(obj.get_all, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleInfoGetRequest
    let len;
    let data = new VehicleInfoGetRequest(null);
    // Deserialize message field [sysid]
    data.sysid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [compid]
    data.compid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [get_all]
    data.get_all = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/VehicleInfoGetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1911e97179d4b379a979e2ab8e01e5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Request the Vehicle Info
    # use this to request the current target sysid / compid defined in mavros
    # set get_all = True to request all available vehicles
    
    uint8 GET_MY_SYSID = 0
    uint8 GET_MY_COMPID = 0
    
    uint8 sysid
    uint8 compid
    bool get_all
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleInfoGetRequest(null);
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

    if (msg.get_all !== undefined) {
      resolved.get_all = msg.get_all;
    }
    else {
      resolved.get_all = false
    }

    return resolved;
    }
};

// Constants for message
VehicleInfoGetRequest.Constants = {
  GET_MY_SYSID: 0,
  GET_MY_COMPID: 0,
}

class VehicleInfoGetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.vehicles = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('vehicles')) {
        this.vehicles = initObj.vehicles
      }
      else {
        this.vehicles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleInfoGetResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [vehicles]
    // Serialize the length for message field [vehicles]
    bufferOffset = _serializer.uint32(obj.vehicles.length, buffer, bufferOffset);
    obj.vehicles.forEach((val) => {
      bufferOffset = VehicleInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleInfoGetResponse
    let len;
    let data = new VehicleInfoGetResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicles]
    // Deserialize array length for message field [vehicles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vehicles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vehicles[i] = VehicleInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.vehicles.forEach((val) => {
      length += VehicleInfo.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/VehicleInfoGetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b33b68f66a6b66456d3bed6fe1dfda0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    mavros_msgs/VehicleInfo[] vehicles
    
    
    
    ================================================================================
    MSG: mavros_msgs/VehicleInfo
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
    const resolved = new VehicleInfoGetResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.vehicles !== undefined) {
      resolved.vehicles = new Array(msg.vehicles.length);
      for (let i = 0; i < resolved.vehicles.length; ++i) {
        resolved.vehicles[i] = VehicleInfo.Resolve(msg.vehicles[i]);
      }
    }
    else {
      resolved.vehicles = []
    }

    return resolved;
    }
};

module.exports = {
  Request: VehicleInfoGetRequest,
  Response: VehicleInfoGetResponse,
  md5sum() { return 'd85d85aa4f49fb3764201b7aeeb6cc2b'; },
  datatype() { return 'mavros_msgs/VehicleInfoGet'; }
};
