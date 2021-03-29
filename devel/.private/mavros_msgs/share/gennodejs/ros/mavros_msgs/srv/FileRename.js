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

class FileRenameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.old_path = null;
      this.new_path = null;
    }
    else {
      if (initObj.hasOwnProperty('old_path')) {
        this.old_path = initObj.old_path
      }
      else {
        this.old_path = '';
      }
      if (initObj.hasOwnProperty('new_path')) {
        this.new_path = initObj.new_path
      }
      else {
        this.new_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FileRenameRequest
    // Serialize message field [old_path]
    bufferOffset = _serializer.string(obj.old_path, buffer, bufferOffset);
    // Serialize message field [new_path]
    bufferOffset = _serializer.string(obj.new_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FileRenameRequest
    let len;
    let data = new FileRenameRequest(null);
    // Deserialize message field [old_path]
    data.old_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [new_path]
    data.new_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.old_path.length;
    length += object.new_path.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/FileRenameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4a29684c4f7a3290a1bec0a9de2ed01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # FTP::Rename
    #
    # :success:	indicates success end of request
    # :r_errno:	remote errno if applicapable
    
    string old_path
    string new_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FileRenameRequest(null);
    if (msg.old_path !== undefined) {
      resolved.old_path = msg.old_path;
    }
    else {
      resolved.old_path = ''
    }

    if (msg.new_path !== undefined) {
      resolved.new_path = msg.new_path;
    }
    else {
      resolved.new_path = ''
    }

    return resolved;
    }
};

class FileRenameResponse {
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
    // Serializes a message object of type FileRenameResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [r_errno]
    bufferOffset = _serializer.int32(obj.r_errno, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FileRenameResponse
    let len;
    let data = new FileRenameResponse(null);
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
    return 'mavros_msgs/FileRenameResponse';
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
    const resolved = new FileRenameResponse(null);
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
  Request: FileRenameRequest,
  Response: FileRenameResponse,
  md5sum() { return '07d853e3d48c88a648998515aab1f5b7'; },
  datatype() { return 'mavros_msgs/FileRename'; }
};
