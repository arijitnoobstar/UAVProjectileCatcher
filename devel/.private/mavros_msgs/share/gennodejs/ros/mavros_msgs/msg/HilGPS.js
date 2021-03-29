// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geographic_msgs = _finder('geographic_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HilGPS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fix_type = null;
      this.geo = null;
      this.eph = null;
      this.epv = null;
      this.vel = null;
      this.vn = null;
      this.ve = null;
      this.vd = null;
      this.cog = null;
      this.satellites_visible = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fix_type')) {
        this.fix_type = initObj.fix_type
      }
      else {
        this.fix_type = 0;
      }
      if (initObj.hasOwnProperty('geo')) {
        this.geo = initObj.geo
      }
      else {
        this.geo = new geographic_msgs.msg.GeoPoint();
      }
      if (initObj.hasOwnProperty('eph')) {
        this.eph = initObj.eph
      }
      else {
        this.eph = 0;
      }
      if (initObj.hasOwnProperty('epv')) {
        this.epv = initObj.epv
      }
      else {
        this.epv = 0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0;
      }
      if (initObj.hasOwnProperty('vn')) {
        this.vn = initObj.vn
      }
      else {
        this.vn = 0;
      }
      if (initObj.hasOwnProperty('ve')) {
        this.ve = initObj.ve
      }
      else {
        this.ve = 0;
      }
      if (initObj.hasOwnProperty('vd')) {
        this.vd = initObj.vd
      }
      else {
        this.vd = 0;
      }
      if (initObj.hasOwnProperty('cog')) {
        this.cog = initObj.cog
      }
      else {
        this.cog = 0;
      }
      if (initObj.hasOwnProperty('satellites_visible')) {
        this.satellites_visible = initObj.satellites_visible
      }
      else {
        this.satellites_visible = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HilGPS
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fix_type]
    bufferOffset = _serializer.uint8(obj.fix_type, buffer, bufferOffset);
    // Serialize message field [geo]
    bufferOffset = geographic_msgs.msg.GeoPoint.serialize(obj.geo, buffer, bufferOffset);
    // Serialize message field [eph]
    bufferOffset = _serializer.uint16(obj.eph, buffer, bufferOffset);
    // Serialize message field [epv]
    bufferOffset = _serializer.uint16(obj.epv, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.uint16(obj.vel, buffer, bufferOffset);
    // Serialize message field [vn]
    bufferOffset = _serializer.int16(obj.vn, buffer, bufferOffset);
    // Serialize message field [ve]
    bufferOffset = _serializer.int16(obj.ve, buffer, bufferOffset);
    // Serialize message field [vd]
    bufferOffset = _serializer.int16(obj.vd, buffer, bufferOffset);
    // Serialize message field [cog]
    bufferOffset = _serializer.uint16(obj.cog, buffer, bufferOffset);
    // Serialize message field [satellites_visible]
    bufferOffset = _serializer.uint8(obj.satellites_visible, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HilGPS
    let len;
    let data = new HilGPS(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fix_type]
    data.fix_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [geo]
    data.geo = geographic_msgs.msg.GeoPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [eph]
    data.eph = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [epv]
    data.epv = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [vn]
    data.vn = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ve]
    data.ve = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vd]
    data.vd = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cog]
    data.cog = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [satellites_visible]
    data.satellites_visible = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/HilGPS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '313b3baf2319db196fa18376a4900a7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # HilControls.msg
    #
    # ROS representation of MAVLink HIL_GPS
    # See mavlink message documentation here:
    # https://mavlink.io/en/messages/common.html#HIL_GPS
    
    std_msgs/Header header
    uint8 fix_type
    geographic_msgs/GeoPoint geo
    uint16 eph
    uint16 epv
    uint16 vel
    int16 vn
    int16 ve
    int16 vd
    uint16 cog
    uint8 satellites_visible
    
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
    MSG: geographic_msgs/GeoPoint
    # Geographic point, using the WGS 84 reference ellipsoid.
    
    # Latitude [degrees]. Positive is north of equator; negative is south
    # (-90 <= latitude <= +90).
    float64 latitude
    
    # Longitude [degrees]. Positive is east of prime meridian; negative is
    # west (-180 <= longitude <= +180). At the poles, latitude is -90 or
    # +90, and longitude is irrelevant, but must be in range.
    float64 longitude
    
    # Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
    float64 altitude
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HilGPS(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fix_type !== undefined) {
      resolved.fix_type = msg.fix_type;
    }
    else {
      resolved.fix_type = 0
    }

    if (msg.geo !== undefined) {
      resolved.geo = geographic_msgs.msg.GeoPoint.Resolve(msg.geo)
    }
    else {
      resolved.geo = new geographic_msgs.msg.GeoPoint()
    }

    if (msg.eph !== undefined) {
      resolved.eph = msg.eph;
    }
    else {
      resolved.eph = 0
    }

    if (msg.epv !== undefined) {
      resolved.epv = msg.epv;
    }
    else {
      resolved.epv = 0
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0
    }

    if (msg.vn !== undefined) {
      resolved.vn = msg.vn;
    }
    else {
      resolved.vn = 0
    }

    if (msg.ve !== undefined) {
      resolved.ve = msg.ve;
    }
    else {
      resolved.ve = 0
    }

    if (msg.vd !== undefined) {
      resolved.vd = msg.vd;
    }
    else {
      resolved.vd = 0
    }

    if (msg.cog !== undefined) {
      resolved.cog = msg.cog;
    }
    else {
      resolved.cog = 0
    }

    if (msg.satellites_visible !== undefined) {
      resolved.satellites_visible = msg.satellites_visible;
    }
    else {
      resolved.satellites_visible = 0
    }

    return resolved;
    }
};

module.exports = HilGPS;
