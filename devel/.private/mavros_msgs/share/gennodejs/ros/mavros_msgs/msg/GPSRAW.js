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

class GPSRAW {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fix_type = null;
      this.lat = null;
      this.lon = null;
      this.alt = null;
      this.eph = null;
      this.epv = null;
      this.vel = null;
      this.cog = null;
      this.satellites_visible = null;
      this.alt_ellipsoid = null;
      this.h_acc = null;
      this.v_acc = null;
      this.vel_acc = null;
      this.hdg_acc = null;
      this.dgps_numch = null;
      this.dgps_age = null;
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
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0;
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
      if (initObj.hasOwnProperty('alt_ellipsoid')) {
        this.alt_ellipsoid = initObj.alt_ellipsoid
      }
      else {
        this.alt_ellipsoid = 0;
      }
      if (initObj.hasOwnProperty('h_acc')) {
        this.h_acc = initObj.h_acc
      }
      else {
        this.h_acc = 0;
      }
      if (initObj.hasOwnProperty('v_acc')) {
        this.v_acc = initObj.v_acc
      }
      else {
        this.v_acc = 0;
      }
      if (initObj.hasOwnProperty('vel_acc')) {
        this.vel_acc = initObj.vel_acc
      }
      else {
        this.vel_acc = 0;
      }
      if (initObj.hasOwnProperty('hdg_acc')) {
        this.hdg_acc = initObj.hdg_acc
      }
      else {
        this.hdg_acc = 0;
      }
      if (initObj.hasOwnProperty('dgps_numch')) {
        this.dgps_numch = initObj.dgps_numch
      }
      else {
        this.dgps_numch = 0;
      }
      if (initObj.hasOwnProperty('dgps_age')) {
        this.dgps_age = initObj.dgps_age
      }
      else {
        this.dgps_age = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPSRAW
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fix_type]
    bufferOffset = _serializer.uint8(obj.fix_type, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.int32(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.int32(obj.lon, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.int32(obj.alt, buffer, bufferOffset);
    // Serialize message field [eph]
    bufferOffset = _serializer.uint16(obj.eph, buffer, bufferOffset);
    // Serialize message field [epv]
    bufferOffset = _serializer.uint16(obj.epv, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.uint16(obj.vel, buffer, bufferOffset);
    // Serialize message field [cog]
    bufferOffset = _serializer.uint16(obj.cog, buffer, bufferOffset);
    // Serialize message field [satellites_visible]
    bufferOffset = _serializer.uint8(obj.satellites_visible, buffer, bufferOffset);
    // Serialize message field [alt_ellipsoid]
    bufferOffset = _serializer.int32(obj.alt_ellipsoid, buffer, bufferOffset);
    // Serialize message field [h_acc]
    bufferOffset = _serializer.uint32(obj.h_acc, buffer, bufferOffset);
    // Serialize message field [v_acc]
    bufferOffset = _serializer.uint32(obj.v_acc, buffer, bufferOffset);
    // Serialize message field [vel_acc]
    bufferOffset = _serializer.uint32(obj.vel_acc, buffer, bufferOffset);
    // Serialize message field [hdg_acc]
    bufferOffset = _serializer.int32(obj.hdg_acc, buffer, bufferOffset);
    // Serialize message field [dgps_numch]
    bufferOffset = _serializer.uint8(obj.dgps_numch, buffer, bufferOffset);
    // Serialize message field [dgps_age]
    bufferOffset = _serializer.uint32(obj.dgps_age, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPSRAW
    let len;
    let data = new GPSRAW(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fix_type]
    data.fix_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [eph]
    data.eph = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [epv]
    data.epv = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cog]
    data.cog = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [satellites_visible]
    data.satellites_visible = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [alt_ellipsoid]
    data.alt_ellipsoid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [h_acc]
    data.h_acc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [v_acc]
    data.v_acc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [vel_acc]
    data.vel_acc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [hdg_acc]
    data.hdg_acc = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dgps_numch]
    data.dgps_numch = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dgps_age]
    data.dgps_age = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 47;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/GPSRAW';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '386bdffbf0a2d0436562395d516aa9bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # FCU GPS RAW message for the gps_status plugin
    # A merge of <a href="https://mavlink.io/en/messages/common.html#GPS_RAW_INT">mavlink GPS_RAW_INT</a> and 
    # <a href="https://mavlink.io/en/messages/common.html#GPS2_RAW">mavlink GPS2_RAW</a> messages.
    
    std_msgs/Header header
    ## GPS_FIX_TYPE enum
    uint8 GPS_FIX_TYPE_NO_GPS     = 0    # No GPS connected
    uint8 GPS_FIX_TYPE_NO_FIX     = 1    # No position information, GPS is connected
    uint8 GPS_FIX_TYPE_2D_FIX     = 2    # 2D position
    uint8 GPS_FIX_TYPE_3D_FIX     = 3    # 3D position
    uint8 GPS_FIX_TYPE_DGPS       = 4    # DGPS/SBAS aided 3D position
    uint8 GPS_FIX_TYPE_RTK_FLOATR = 5    # TK float, 3D position
    uint8 GPS_FIX_TYPE_RTK_FIXEDR = 6    # TK Fixed, 3D position
    uint8 GPS_FIX_TYPE_STATIC     = 7    # Static fixed, typically used for base stations
    uint8 GPS_FIX_TYPE_PPP        = 8    # PPP, 3D position
    uint8 fix_type      # [GPS_FIX_TYPE] GPS fix type
    
    int32 lat           # [degE7] Latitude (WGS84, EGM96 ellipsoid)
    int32 lon           # [degE7] Longitude (WGS84, EGM96 ellipsoid)
    int32 alt           # [mm] Altitude (MSL). Positive for up. Note that virtually all GPS modules provide the MSL altitude in addition to the WGS84 altitude.
    uint16 eph          # GPS HDOP horizontal dilution of position (unitless). If unknown, set to: UINT16_MAX
    uint16 epv          # GPS VDOP vertical dilution of position (unitless). If unknown, set to: UINT16_MAX
    uint16 vel          # [cm/s] GPS ground speed. If unknown, set to: UINT16_MAX
    uint16 cog          # [cdeg] Course over ground (NOT heading, but direction of movement), 0.0..359.99 degrees. If unknown, set to: UINT16_MAX
    uint8 satellites_visible # Number of satellites visible. If unknown, set to 255
    
    # -*- only available with MAVLink v2.0 and GPS_RAW_INT messages -*-
    int32 alt_ellipsoid # [mm] Altitude (above WGS84, EGM96 ellipsoid). Positive for up.
    uint32 h_acc        # [mm] Position uncertainty. Positive for up.
    uint32 v_acc        # [mm] Altitude uncertainty. Positive for up.
    uint32 vel_acc      # [mm] Speed uncertainty. Positive for up.
    int32  hdg_acc      # [degE5] Heading / track uncertainty
    
    # -*- only available with MAVLink v2.0 and GPS2_RAW messages -*-
    uint8 dgps_numch    # Number of DGPS satellites
    uint32 dgps_age     # [ms] Age of DGPS info
    
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
    const resolved = new GPSRAW(null);
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

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0
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

    if (msg.alt_ellipsoid !== undefined) {
      resolved.alt_ellipsoid = msg.alt_ellipsoid;
    }
    else {
      resolved.alt_ellipsoid = 0
    }

    if (msg.h_acc !== undefined) {
      resolved.h_acc = msg.h_acc;
    }
    else {
      resolved.h_acc = 0
    }

    if (msg.v_acc !== undefined) {
      resolved.v_acc = msg.v_acc;
    }
    else {
      resolved.v_acc = 0
    }

    if (msg.vel_acc !== undefined) {
      resolved.vel_acc = msg.vel_acc;
    }
    else {
      resolved.vel_acc = 0
    }

    if (msg.hdg_acc !== undefined) {
      resolved.hdg_acc = msg.hdg_acc;
    }
    else {
      resolved.hdg_acc = 0
    }

    if (msg.dgps_numch !== undefined) {
      resolved.dgps_numch = msg.dgps_numch;
    }
    else {
      resolved.dgps_numch = 0
    }

    if (msg.dgps_age !== undefined) {
      resolved.dgps_age = msg.dgps_age;
    }
    else {
      resolved.dgps_age = 0
    }

    return resolved;
    }
};

// Constants for message
GPSRAW.Constants = {
  GPS_FIX_TYPE_NO_GPS: 0,
  GPS_FIX_TYPE_NO_FIX: 1,
  GPS_FIX_TYPE_2D_FIX: 2,
  GPS_FIX_TYPE_3D_FIX: 3,
  GPS_FIX_TYPE_DGPS: 4,
  GPS_FIX_TYPE_RTK_FLOATR: 5,
  GPS_FIX_TYPE_RTK_FIXEDR: 6,
  GPS_FIX_TYPE_STATIC: 7,
  GPS_FIX_TYPE_PPP: 8,
}

module.exports = GPSRAW;
