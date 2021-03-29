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

class HilSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.acc = null;
      this.gyro = null;
      this.mag = null;
      this.abs_pressure = null;
      this.diff_pressure = null;
      this.pressure_alt = null;
      this.temperature = null;
      this.fields_updated = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('gyro')) {
        this.gyro = initObj.gyro
      }
      else {
        this.gyro = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('mag')) {
        this.mag = initObj.mag
      }
      else {
        this.mag = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('abs_pressure')) {
        this.abs_pressure = initObj.abs_pressure
      }
      else {
        this.abs_pressure = 0.0;
      }
      if (initObj.hasOwnProperty('diff_pressure')) {
        this.diff_pressure = initObj.diff_pressure
      }
      else {
        this.diff_pressure = 0.0;
      }
      if (initObj.hasOwnProperty('pressure_alt')) {
        this.pressure_alt = initObj.pressure_alt
      }
      else {
        this.pressure_alt = 0.0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('fields_updated')) {
        this.fields_updated = initObj.fields_updated
      }
      else {
        this.fields_updated = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HilSensor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acc, buffer, bufferOffset);
    // Serialize message field [gyro]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gyro, buffer, bufferOffset);
    // Serialize message field [mag]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.mag, buffer, bufferOffset);
    // Serialize message field [abs_pressure]
    bufferOffset = _serializer.float32(obj.abs_pressure, buffer, bufferOffset);
    // Serialize message field [diff_pressure]
    bufferOffset = _serializer.float32(obj.diff_pressure, buffer, bufferOffset);
    // Serialize message field [pressure_alt]
    bufferOffset = _serializer.float32(obj.pressure_alt, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [fields_updated]
    bufferOffset = _serializer.uint32(obj.fields_updated, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HilSensor
    let len;
    let data = new HilSensor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyro]
    data.gyro = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [mag]
    data.mag = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [abs_pressure]
    data.abs_pressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_pressure]
    data.diff_pressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pressure_alt]
    data.pressure_alt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fields_updated]
    data.fields_updated = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/HilSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a892891e5c40d6dd1066bf1f394b5dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # HilSensor.msg
    #
    # ROS representation of MAVLink HIL_SENSOR
    # See mavlink message documentation here:
    # https://mavlink.io/en/messages/common.html#HIL_SENSOR
    
    std_msgs/Header header
    
    geometry_msgs/Vector3 acc
    geometry_msgs/Vector3 gyro
    geometry_msgs/Vector3 mag
    float32 abs_pressure
    float32 diff_pressure
    float32 pressure_alt
    float32 temperature
    uint32 fields_updated
    
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
    const resolved = new HilSensor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.acc !== undefined) {
      resolved.acc = geometry_msgs.msg.Vector3.Resolve(msg.acc)
    }
    else {
      resolved.acc = new geometry_msgs.msg.Vector3()
    }

    if (msg.gyro !== undefined) {
      resolved.gyro = geometry_msgs.msg.Vector3.Resolve(msg.gyro)
    }
    else {
      resolved.gyro = new geometry_msgs.msg.Vector3()
    }

    if (msg.mag !== undefined) {
      resolved.mag = geometry_msgs.msg.Vector3.Resolve(msg.mag)
    }
    else {
      resolved.mag = new geometry_msgs.msg.Vector3()
    }

    if (msg.abs_pressure !== undefined) {
      resolved.abs_pressure = msg.abs_pressure;
    }
    else {
      resolved.abs_pressure = 0.0
    }

    if (msg.diff_pressure !== undefined) {
      resolved.diff_pressure = msg.diff_pressure;
    }
    else {
      resolved.diff_pressure = 0.0
    }

    if (msg.pressure_alt !== undefined) {
      resolved.pressure_alt = msg.pressure_alt;
    }
    else {
      resolved.pressure_alt = 0.0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.fields_updated !== undefined) {
      resolved.fields_updated = msg.fields_updated;
    }
    else {
      resolved.fields_updated = 0
    }

    return resolved;
    }
};

module.exports = HilSensor;
