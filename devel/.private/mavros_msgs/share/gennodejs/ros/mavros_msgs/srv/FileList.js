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

let FileEntry = require('../msg/FileEntry.js');

//-----------------------------------------------------------

class FileListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dir_path = null;
    }
    else {
      if (initObj.hasOwnProperty('dir_path')) {
        this.dir_path = initObj.dir_path
      }
      else {
        this.dir_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FileListRequest
    // Serialize message field [dir_path]
    bufferOffset = _serializer.string(obj.dir_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FileListRequest
    let len;
    let data = new FileListRequest(null);
    // Deserialize message field [dir_path]
    data.dir_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.dir_path.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/FileListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '401d5cf5f836aaa9ebdc0897f75da874';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # FTP::List
    #
    # :success:	indicates success end of request
    # :r_errno:	remote errno if applicapable
    
    string dir_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FileListRequest(null);
    if (msg.dir_path !== undefined) {
      resolved.dir_path = msg.dir_path;
    }
    else {
      resolved.dir_path = ''
    }

    return resolved;
    }
};

class FileListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.list = null;
      this.success = null;
      this.r_errno = null;
    }
    else {
      if (initObj.hasOwnProperty('list')) {
        this.list = initObj.list
      }
      else {
        this.list = [];
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('r_errno')) {
        this.r_errno = initObj.r_errno
      }
      else {
        this.r_errno = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FileListResponse
    // Serialize message field [list]
    // Serialize the length for message field [list]
    bufferOffset = _serializer.uint32(obj.list.length, buffer, bufferOffset);
    obj.list.forEach((val) => {
      bufferOffset = FileEntry.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [r_errno]
    bufferOffset = _serializer.int32(obj.r_errno, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FileListResponse
    let len;
    let data = new FileListResponse(null);
    // Deserialize message field [list]
    // Deserialize array length for message field [list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.list[i] = FileEntry.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [r_errno]
    data.r_errno = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.list.forEach((val) => {
      length += FileEntry.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/FileListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3cf4be333d40be8a08832e3b61ed4336';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mavros_msgs/FileEntry[] list
    bool success
    int32 r_errno
    
    
    ================================================================================
    MSG: mavros_msgs/FileEntry
    # File/Dir information
    
    uint8 TYPE_FILE = 0
    uint8 TYPE_DIRECTORY = 1
    
    string name
    uint8 type
    uint64 size
    
    # Not supported by MAVLink FTP
    #time atime
    #int32 access_flags
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FileListResponse(null);
    if (msg.list !== undefined) {
      resolved.list = new Array(msg.list.length);
      for (let i = 0; i < resolved.list.length; ++i) {
        resolved.list[i] = FileEntry.Resolve(msg.list[i]);
      }
    }
    else {
      resolved.list = []
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.r_errno !== undefined) {
      resolved.r_errno = msg.r_errno;
    }
    else {
      resolved.r_errno = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: FileListRequest,
  Response: FileListResponse,
  md5sum() { return '1647c627907cac72fa2d06e0e5f96aac'; },
  datatype() { return 'mavros_msgs/FileList'; }
};
