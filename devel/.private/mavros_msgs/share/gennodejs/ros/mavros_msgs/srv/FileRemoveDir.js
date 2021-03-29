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

class FileRemoveDirRequest {
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
    // Serializes a message object of type FileRemoveDirRequest
    // Serialize message field [dir_path]
    bufferOffset = _serializer.string(obj.dir_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FileRemoveDirRequest
    let len;
    let data = new FileRemoveDirRequest(null);
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
    return 'mavros_msgs/FileRemoveDirRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '401d5cf5f836aaa9ebdc0897f75da874';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # FTP::RemoveDir
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
    const resolved = new FileRemoveDirRequest(null);
    if (msg.dir_path !== undefined) {
      resolved.dir_path = msg.dir_path;
    }
    else {
      resolved.dir_path = ''
    }

    return resolved;
    }
};

class FileRemoveDirResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.r_errno = null;
    }
    else {
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
    // Serializes a message object of type FileRemoveDirResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [r_errno]
    bufferOffset = _serializer.int32(obj.r_errno, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FileRemoveDirResponse
    let len;
    let data = new FileRemoveDirResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [r_errno]
    data.r_errno = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/FileRemoveDirResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85394f2e941a8937ac567a617f06157f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    int32 r_errno
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FileRemoveDirResponse(null);
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
  Request: FileRemoveDirRequest,
  Response: FileRemoveDirResponse,
  md5sum() { return 'f140c5ef05b00c3cfc30d5a2061b4d63'; },
  datatype() { return 'mavros_msgs/FileRemoveDir'; }
};
