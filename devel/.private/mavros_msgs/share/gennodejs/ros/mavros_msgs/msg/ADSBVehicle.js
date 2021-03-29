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

class ADSBVehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ICAO_address = null;
      this.callsign = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.heading = null;
      this.hor_velocity = null;
      this.ver_velocity = null;
      this.altitude_type = null;
      this.emitter_type = null;
      this.tslc = null;
      this.flags = null;
      this.squawk = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ICAO_address')) {
        this.ICAO_address = initObj.ICAO_address
      }
      else {
        this.ICAO_address = 0;
      }
      if (initObj.hasOwnProperty('callsign')) {
        this.callsign = initObj.callsign
      }
      else {
        this.callsign = '';
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('hor_velocity')) {
        this.hor_velocity = initObj.hor_velocity
      }
      else {
        this.hor_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('ver_velocity')) {
        this.ver_velocity = initObj.ver_velocity
      }
      else {
        this.ver_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_type')) {
        this.altitude_type = initObj.altitude_type
      }
      else {
        this.altitude_type = 0;
      }
      if (initObj.hasOwnProperty('emitter_type')) {
        this.emitter_type = initObj.emitter_type
      }
      else {
        this.emitter_type = 0;
      }
      if (initObj.hasOwnProperty('tslc')) {
        this.tslc = initObj.tslc
      }
      else {
        this.tslc = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('squawk')) {
        this.squawk = initObj.squawk
      }
      else {
        this.squawk = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADSBVehicle
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ICAO_address]
    bufferOffset = _serializer.uint32(obj.ICAO_address, buffer, bufferOffset);
    // Serialize message field [callsign]
    bufferOffset = _serializer.string(obj.callsign, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float32(obj.altitude, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [hor_velocity]
    bufferOffset = _serializer.float32(obj.hor_velocity, buffer, bufferOffset);
    // Serialize message field [ver_velocity]
    bufferOffset = _serializer.float32(obj.ver_velocity, buffer, bufferOffset);
    // Serialize message field [altitude_type]
    bufferOffset = _serializer.uint8(obj.altitude_type, buffer, bufferOffset);
    // Serialize message field [emitter_type]
    bufferOffset = _serializer.uint8(obj.emitter_type, buffer, bufferOffset);
    // Serialize message field [tslc]
    bufferOffset = _serializer.duration(obj.tslc, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint16(obj.flags, buffer, bufferOffset);
    // Serialize message field [squawk]
    bufferOffset = _serializer.uint16(obj.squawk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADSBVehicle
    let len;
    let data = new ADSBVehicle(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ICAO_address]
    data.ICAO_address = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [callsign]
    data.callsign = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hor_velocity]
    data.hor_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ver_velocity]
    data.ver_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude_type]
    data.altitude_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [emitter_type]
    data.emitter_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tslc]
    data.tslc = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [squawk]
    data.squawk = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.callsign.length;
    return length + 54;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/ADSBVehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f71cc75a8e9e7b77d92f98d9a5315fd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The location and information of an ADSB vehicle
    #
    # https://mavlink.io/en/messages/common.html#ADSB_VEHICLE
    
    # [[[cog:
    # from pymavlink.dialects.v20 import common
    #
    # def decl_enum(ename, pfx='', bsz=8):
    #     enum = sorted(common.enums[ename].items())
    #     enum.pop() # remove ENUM_END
    #
    #     cog.outl("# " + ename)
    #     for k, e in enum:
    #         sn = e.name[len(ename) + 1:]
    #         l = "uint{bsz} {pfx}{sn} = {k}".format(**locals())
    #         if e.description:
    #             l += ' ' * (40 - len(l)) + ' # ' + e.description
    #         cog.outl(l)
    #
    # decl_enum('ADSB_ALTITUDE_TYPE', 'ALT_')
    # decl_enum('ADSB_EMITTER_TYPE', 'EMITTER_')
    # decl_enum('ADSB_FLAGS', 'FLAG_', 16)
    # ]]]
    # ADSB_ALTITUDE_TYPE
    uint8 ALT_PRESSURE_QNH = 0               # Altitude reported from a Baro source using QNH reference
    uint8 ALT_GEOMETRIC = 1                  # Altitude reported from a GNSS source
    # ADSB_EMITTER_TYPE
    uint8 EMITTER_NO_INFO = 0
    uint8 EMITTER_LIGHT = 1
    uint8 EMITTER_SMALL = 2
    uint8 EMITTER_LARGE = 3
    uint8 EMITTER_HIGH_VORTEX_LARGE = 4
    uint8 EMITTER_HEAVY = 5
    uint8 EMITTER_HIGHLY_MANUV = 6
    uint8 EMITTER_ROTOCRAFT = 7
    uint8 EMITTER_UNASSIGNED = 8
    uint8 EMITTER_GLIDER = 9
    uint8 EMITTER_LIGHTER_AIR = 10
    uint8 EMITTER_PARACHUTE = 11
    uint8 EMITTER_ULTRA_LIGHT = 12
    uint8 EMITTER_UNASSIGNED2 = 13
    uint8 EMITTER_UAV = 14
    uint8 EMITTER_SPACE = 15
    uint8 EMITTER_UNASSGINED3 = 16
    uint8 EMITTER_EMERGENCY_SURFACE = 17
    uint8 EMITTER_SERVICE_SURFACE = 18
    uint8 EMITTER_POINT_OBSTACLE = 19
    # ADSB_FLAGS
    uint16 FLAG_VALID_COORDS = 1
    uint16 FLAG_VALID_ALTITUDE = 2
    uint16 FLAG_VALID_HEADING = 4
    uint16 FLAG_VALID_VELOCITY = 8
    uint16 FLAG_VALID_CALLSIGN = 16
    uint16 FLAG_VALID_SQUAWK = 32
    uint16 FLAG_SIMULATED = 64
    # [[[end]]] (checksum: e35e77be43548bd572a3cb24138fc2fd)
    
    std_msgs/Header header
    
    uint32 ICAO_address
    string callsign
    
    float64 latitude
    float64 longitude
    float32 altitude 	# AMSL
    
    float32 heading		# deg [0..360)
    float32 hor_velocity	# m/s
    float32 ver_velocity	# m/s
    
    uint8 altitude_type	# Type from ADSB_ALTITUDE_TYPE enum
    uint8 emitter_type	# Type from ADSB_EMITTER_TYPE enum
    
    duration tslc		# Duration from last communication, seconds [0..255]
    uint16 flags		# ADSB_FLAGS bit field
    uint16 squawk		# Squawk code
    
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
    const resolved = new ADSBVehicle(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ICAO_address !== undefined) {
      resolved.ICAO_address = msg.ICAO_address;
    }
    else {
      resolved.ICAO_address = 0
    }

    if (msg.callsign !== undefined) {
      resolved.callsign = msg.callsign;
    }
    else {
      resolved.callsign = ''
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.hor_velocity !== undefined) {
      resolved.hor_velocity = msg.hor_velocity;
    }
    else {
      resolved.hor_velocity = 0.0
    }

    if (msg.ver_velocity !== undefined) {
      resolved.ver_velocity = msg.ver_velocity;
    }
    else {
      resolved.ver_velocity = 0.0
    }

    if (msg.altitude_type !== undefined) {
      resolved.altitude_type = msg.altitude_type;
    }
    else {
      resolved.altitude_type = 0
    }

    if (msg.emitter_type !== undefined) {
      resolved.emitter_type = msg.emitter_type;
    }
    else {
      resolved.emitter_type = 0
    }

    if (msg.tslc !== undefined) {
      resolved.tslc = msg.tslc;
    }
    else {
      resolved.tslc = {secs: 0, nsecs: 0}
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.squawk !== undefined) {
      resolved.squawk = msg.squawk;
    }
    else {
      resolved.squawk = 0
    }

    return resolved;
    }
};

// Constants for message
ADSBVehicle.Constants = {
  ALT_PRESSURE_QNH: 0,
  ALT_GEOMETRIC: 1,
  EMITTER_NO_INFO: 0,
  EMITTER_LIGHT: 1,
  EMITTER_SMALL: 2,
  EMITTER_LARGE: 3,
  EMITTER_HIGH_VORTEX_LARGE: 4,
  EMITTER_HEAVY: 5,
  EMITTER_HIGHLY_MANUV: 6,
  EMITTER_ROTOCRAFT: 7,
  EMITTER_UNASSIGNED: 8,
  EMITTER_GLIDER: 9,
  EMITTER_LIGHTER_AIR: 10,
  EMITTER_PARACHUTE: 11,
  EMITTER_ULTRA_LIGHT: 12,
  EMITTER_UNASSIGNED2: 13,
  EMITTER_UAV: 14,
  EMITTER_SPACE: 15,
  EMITTER_UNASSGINED3: 16,
  EMITTER_EMERGENCY_SURFACE: 17,
  EMITTER_SERVICE_SURFACE: 18,
  EMITTER_POINT_OBSTACLE: 19,
  FLAG_VALID_COORDS: 1,
  FLAG_VALID_ALTITUDE: 2,
  FLAG_VALID_HEADING: 4,
  FLAG_VALID_VELOCITY: 8,
  FLAG_VALID_CALLSIGN: 16,
  FLAG_VALID_SQUAWK: 32,
  FLAG_SIMULATED: 64,
}

module.exports = ADSBVehicle;
