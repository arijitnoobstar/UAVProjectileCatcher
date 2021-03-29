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

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.connected = null;
      this.armed = null;
      this.guided = null;
      this.manual_input = null;
      this.mode = null;
      this.system_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('connected')) {
        this.connected = initObj.connected
      }
      else {
        this.connected = false;
      }
      if (initObj.hasOwnProperty('armed')) {
        this.armed = initObj.armed
      }
      else {
        this.armed = false;
      }
      if (initObj.hasOwnProperty('guided')) {
        this.guided = initObj.guided
      }
      else {
        this.guided = false;
      }
      if (initObj.hasOwnProperty('manual_input')) {
        this.manual_input = initObj.manual_input
      }
      else {
        this.manual_input = false;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('system_status')) {
        this.system_status = initObj.system_status
      }
      else {
        this.system_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [connected]
    bufferOffset = _serializer.bool(obj.connected, buffer, bufferOffset);
    // Serialize message field [armed]
    bufferOffset = _serializer.bool(obj.armed, buffer, bufferOffset);
    // Serialize message field [guided]
    bufferOffset = _serializer.bool(obj.guided, buffer, bufferOffset);
    // Serialize message field [manual_input]
    bufferOffset = _serializer.bool(obj.manual_input, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [system_status]
    bufferOffset = _serializer.uint8(obj.system_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [connected]
    data.connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [armed]
    data.armed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [guided]
    data.guided = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [manual_input]
    data.manual_input = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [system_status]
    data.system_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.mode.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65cd0a9fff993b062b91e354554ec7e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Current autopilot state
    #
    # Known modes listed here:
    # http://wiki.ros.org/mavros/CustomModes
    #
    # For system_status values
    # see https://mavlink.io/en/messages/common.html#MAV_STATE
    #
    
    std_msgs/Header header
    bool connected
    bool armed
    bool guided
    bool manual_input
    string mode
    uint8 system_status
    
    string MODE_APM_PLANE_MANUAL = MANUAL
    string MODE_APM_PLANE_CIRCLE = CIRCLE
    string MODE_APM_PLANE_STABILIZE = STABILIZE
    string MODE_APM_PLANE_TRAINING = TRAINING
    string MODE_APM_PLANE_ACRO = ACRO
    string MODE_APM_PLANE_FBWA = FBWA
    string MODE_APM_PLANE_FBWB = FBWB
    string MODE_APM_PLANE_CRUISE = CRUISE
    string MODE_APM_PLANE_AUTOTUNE = AUTOTUNE
    string MODE_APM_PLANE_AUTO = AUTO
    string MODE_APM_PLANE_RTL = RTL
    string MODE_APM_PLANE_LOITER = LOITER
    string MODE_APM_PLANE_LAND = LAND
    string MODE_APM_PLANE_GUIDED = GUIDED
    string MODE_APM_PLANE_INITIALISING = INITIALISING
    string MODE_APM_PLANE_QSTABILIZE = QSTABILIZE
    string MODE_APM_PLANE_QHOVER = QHOVER
    string MODE_APM_PLANE_QLOITER = QLOITER
    string MODE_APM_PLANE_QLAND = QLAND
    string MODE_APM_PLANE_QRTL = QRTL
    
    string MODE_APM_COPTER_STABILIZE = STABILIZE
    string MODE_APM_COPTER_ACRO = ACRO
    string MODE_APM_COPTER_ALT_HOLD = ALT_HOLD
    string MODE_APM_COPTER_AUTO = AUTO
    string MODE_APM_COPTER_GUIDED = GUIDED
    string MODE_APM_COPTER_LOITER = LOITER
    string MODE_APM_COPTER_RTL = RTL
    string MODE_APM_COPTER_CIRCLE = CIRCLE
    string MODE_APM_COPTER_POSITION = POSITION
    string MODE_APM_COPTER_LAND = LAND
    string MODE_APM_COPTER_OF_LOITER = OF_LOITER
    string MODE_APM_COPTER_DRIFT = DRIFT
    string MODE_APM_COPTER_SPORT = SPORT
    string MODE_APM_COPTER_FLIP = FLIP
    string MODE_APM_COPTER_AUTOTUNE = AUTOTUNE
    string MODE_APM_COPTER_POSHOLD = POSHOLD
    string MODE_APM_COPTER_BRAKE = BRAKE
    string MODE_APM_COPTER_THROW = THROW
    string MODE_APM_COPTER_AVOID_ADSB = AVOID_ADSB
    string MODE_APM_COPTER_GUIDED_NOGPS = GUIDED_NOGPS
    
    string MODE_APM_ROVER_MANUAL = MANUAL
    string MODE_APM_ROVER_LEARNING = LEARNING
    string MODE_APM_ROVER_STEERING = STEERING
    string MODE_APM_ROVER_HOLD = HOLD
    string MODE_APM_ROVER_AUTO = AUTO
    string MODE_APM_ROVER_RTL = RTL
    string MODE_APM_ROVER_GUIDED = GUIDED
    string MODE_APM_ROVER_INITIALISING = INITIALISING
    
    string MODE_PX4_MANUAL = MANUAL
    string MODE_PX4_ACRO = ACRO
    string MODE_PX4_ALTITUDE = ALTCTL
    string MODE_PX4_POSITION = POSCTL
    string MODE_PX4_OFFBOARD = OFFBOARD
    string MODE_PX4_STABILIZED = STABILIZED
    string MODE_PX4_RATTITUDE = RATTITUDE
    string MODE_PX4_MISSION = AUTO.MISSION
    string MODE_PX4_LOITER = AUTO.LOITER
    string MODE_PX4_RTL = AUTO.RTL
    string MODE_PX4_LAND = AUTO.LAND
    string MODE_PX4_RTGS = AUTO.RTGS
    string MODE_PX4_READY = AUTO.READY
    string MODE_PX4_TAKEOFF = AUTO.TAKEOFF
    
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
    const resolved = new State(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.connected !== undefined) {
      resolved.connected = msg.connected;
    }
    else {
      resolved.connected = false
    }

    if (msg.armed !== undefined) {
      resolved.armed = msg.armed;
    }
    else {
      resolved.armed = false
    }

    if (msg.guided !== undefined) {
      resolved.guided = msg.guided;
    }
    else {
      resolved.guided = false
    }

    if (msg.manual_input !== undefined) {
      resolved.manual_input = msg.manual_input;
    }
    else {
      resolved.manual_input = false
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.system_status !== undefined) {
      resolved.system_status = msg.system_status;
    }
    else {
      resolved.system_status = 0
    }

    return resolved;
    }
};

// Constants for message
State.Constants = {
  MODE_APM_PLANE_MANUAL: 'MANUAL',
  MODE_APM_PLANE_CIRCLE: 'CIRCLE',
  MODE_APM_PLANE_STABILIZE: 'STABILIZE',
  MODE_APM_PLANE_TRAINING: 'TRAINING',
  MODE_APM_PLANE_ACRO: 'ACRO',
  MODE_APM_PLANE_FBWA: 'FBWA',
  MODE_APM_PLANE_FBWB: 'FBWB',
  MODE_APM_PLANE_CRUISE: 'CRUISE',
  MODE_APM_PLANE_AUTOTUNE: 'AUTOTUNE',
  MODE_APM_PLANE_AUTO: 'AUTO',
  MODE_APM_PLANE_RTL: 'RTL',
  MODE_APM_PLANE_LOITER: 'LOITER',
  MODE_APM_PLANE_LAND: 'LAND',
  MODE_APM_PLANE_GUIDED: 'GUIDED',
  MODE_APM_PLANE_INITIALISING: 'INITIALISING',
  MODE_APM_PLANE_QSTABILIZE: 'QSTABILIZE',
  MODE_APM_PLANE_QHOVER: 'QHOVER',
  MODE_APM_PLANE_QLOITER: 'QLOITER',
  MODE_APM_PLANE_QLAND: 'QLAND',
  MODE_APM_PLANE_QRTL: 'QRTL',
  MODE_APM_COPTER_STABILIZE: 'STABILIZE',
  MODE_APM_COPTER_ACRO: 'ACRO',
  MODE_APM_COPTER_ALT_HOLD: 'ALT_HOLD',
  MODE_APM_COPTER_AUTO: 'AUTO',
  MODE_APM_COPTER_GUIDED: 'GUIDED',
  MODE_APM_COPTER_LOITER: 'LOITER',
  MODE_APM_COPTER_RTL: 'RTL',
  MODE_APM_COPTER_CIRCLE: 'CIRCLE',
  MODE_APM_COPTER_POSITION: 'POSITION',
  MODE_APM_COPTER_LAND: 'LAND',
  MODE_APM_COPTER_OF_LOITER: 'OF_LOITER',
  MODE_APM_COPTER_DRIFT: 'DRIFT',
  MODE_APM_COPTER_SPORT: 'SPORT',
  MODE_APM_COPTER_FLIP: 'FLIP',
  MODE_APM_COPTER_AUTOTUNE: 'AUTOTUNE',
  MODE_APM_COPTER_POSHOLD: 'POSHOLD',
  MODE_APM_COPTER_BRAKE: 'BRAKE',
  MODE_APM_COPTER_THROW: 'THROW',
  MODE_APM_COPTER_AVOID_ADSB: 'AVOID_ADSB',
  MODE_APM_COPTER_GUIDED_NOGPS: 'GUIDED_NOGPS',
  MODE_APM_ROVER_MANUAL: 'MANUAL',
  MODE_APM_ROVER_LEARNING: 'LEARNING',
  MODE_APM_ROVER_STEERING: 'STEERING',
  MODE_APM_ROVER_HOLD: 'HOLD',
  MODE_APM_ROVER_AUTO: 'AUTO',
  MODE_APM_ROVER_RTL: 'RTL',
  MODE_APM_ROVER_GUIDED: 'GUIDED',
  MODE_APM_ROVER_INITIALISING: 'INITIALISING',
  MODE_PX4_MANUAL: 'MANUAL',
  MODE_PX4_ACRO: 'ACRO',
  MODE_PX4_ALTITUDE: 'ALTCTL',
  MODE_PX4_POSITION: 'POSCTL',
  MODE_PX4_OFFBOARD: 'OFFBOARD',
  MODE_PX4_STABILIZED: 'STABILIZED',
  MODE_PX4_RATTITUDE: 'RATTITUDE',
  MODE_PX4_MISSION: 'AUTO.MISSION',
  MODE_PX4_LOITER: 'AUTO.LOITER',
  MODE_PX4_RTL: 'AUTO.RTL',
  MODE_PX4_LAND: 'AUTO.LAND',
  MODE_PX4_RTGS: 'AUTO.RTGS',
  MODE_PX4_READY: 'AUTO.READY',
  MODE_PX4_TAKEOFF: 'AUTO.TAKEOFF',
}

module.exports = State;
