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

class OnboardComputerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.component = null;
      this.uptime = null;
      this.type = null;
      this.cpu_cores = null;
      this.cpu_combined = null;
      this.gpu_cores = null;
      this.gpu_combined = null;
      this.temperature_board = null;
      this.temperature_core = null;
      this.fan_speed = null;
      this.ram_usage = null;
      this.ram_total = null;
      this.storage_type = null;
      this.storage_usage = null;
      this.storage_total = null;
      this.link_type = null;
      this.link_tx_rate = null;
      this.link_rx_rate = null;
      this.link_tx_max = null;
      this.link_rx_max = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('component')) {
        this.component = initObj.component
      }
      else {
        this.component = 0;
      }
      if (initObj.hasOwnProperty('uptime')) {
        this.uptime = initObj.uptime
      }
      else {
        this.uptime = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('cpu_cores')) {
        this.cpu_cores = initObj.cpu_cores
      }
      else {
        this.cpu_cores = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('cpu_combined')) {
        this.cpu_combined = initObj.cpu_combined
      }
      else {
        this.cpu_combined = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('gpu_cores')) {
        this.gpu_cores = initObj.gpu_cores
      }
      else {
        this.gpu_cores = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('gpu_combined')) {
        this.gpu_combined = initObj.gpu_combined
      }
      else {
        this.gpu_combined = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('temperature_board')) {
        this.temperature_board = initObj.temperature_board
      }
      else {
        this.temperature_board = 0;
      }
      if (initObj.hasOwnProperty('temperature_core')) {
        this.temperature_core = initObj.temperature_core
      }
      else {
        this.temperature_core = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('fan_speed')) {
        this.fan_speed = initObj.fan_speed
      }
      else {
        this.fan_speed = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('ram_usage')) {
        this.ram_usage = initObj.ram_usage
      }
      else {
        this.ram_usage = 0;
      }
      if (initObj.hasOwnProperty('ram_total')) {
        this.ram_total = initObj.ram_total
      }
      else {
        this.ram_total = 0;
      }
      if (initObj.hasOwnProperty('storage_type')) {
        this.storage_type = initObj.storage_type
      }
      else {
        this.storage_type = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('storage_usage')) {
        this.storage_usage = initObj.storage_usage
      }
      else {
        this.storage_usage = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('storage_total')) {
        this.storage_total = initObj.storage_total
      }
      else {
        this.storage_total = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('link_type')) {
        this.link_type = initObj.link_type
      }
      else {
        this.link_type = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('link_tx_rate')) {
        this.link_tx_rate = initObj.link_tx_rate
      }
      else {
        this.link_tx_rate = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('link_rx_rate')) {
        this.link_rx_rate = initObj.link_rx_rate
      }
      else {
        this.link_rx_rate = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('link_tx_max')) {
        this.link_tx_max = initObj.link_tx_max
      }
      else {
        this.link_tx_max = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('link_rx_max')) {
        this.link_rx_max = initObj.link_rx_max
      }
      else {
        this.link_rx_max = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OnboardComputerStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [component]
    bufferOffset = _serializer.uint8(obj.component, buffer, bufferOffset);
    // Serialize message field [uptime]
    bufferOffset = _serializer.uint32(obj.uptime, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Check that the constant length array field [cpu_cores] has the right length
    if (obj.cpu_cores.length !== 8) {
      throw new Error('Unable to serialize array field cpu_cores - length must be 8')
    }
    // Serialize message field [cpu_cores]
    bufferOffset = _arraySerializer.uint8(obj.cpu_cores, buffer, bufferOffset, 8);
    // Check that the constant length array field [cpu_combined] has the right length
    if (obj.cpu_combined.length !== 10) {
      throw new Error('Unable to serialize array field cpu_combined - length must be 10')
    }
    // Serialize message field [cpu_combined]
    bufferOffset = _arraySerializer.uint8(obj.cpu_combined, buffer, bufferOffset, 10);
    // Check that the constant length array field [gpu_cores] has the right length
    if (obj.gpu_cores.length !== 4) {
      throw new Error('Unable to serialize array field gpu_cores - length must be 4')
    }
    // Serialize message field [gpu_cores]
    bufferOffset = _arraySerializer.uint8(obj.gpu_cores, buffer, bufferOffset, 4);
    // Check that the constant length array field [gpu_combined] has the right length
    if (obj.gpu_combined.length !== 10) {
      throw new Error('Unable to serialize array field gpu_combined - length must be 10')
    }
    // Serialize message field [gpu_combined]
    bufferOffset = _arraySerializer.uint8(obj.gpu_combined, buffer, bufferOffset, 10);
    // Serialize message field [temperature_board]
    bufferOffset = _serializer.int8(obj.temperature_board, buffer, bufferOffset);
    // Check that the constant length array field [temperature_core] has the right length
    if (obj.temperature_core.length !== 8) {
      throw new Error('Unable to serialize array field temperature_core - length must be 8')
    }
    // Serialize message field [temperature_core]
    bufferOffset = _arraySerializer.int8(obj.temperature_core, buffer, bufferOffset, 8);
    // Check that the constant length array field [fan_speed] has the right length
    if (obj.fan_speed.length !== 4) {
      throw new Error('Unable to serialize array field fan_speed - length must be 4')
    }
    // Serialize message field [fan_speed]
    bufferOffset = _arraySerializer.int16(obj.fan_speed, buffer, bufferOffset, 4);
    // Serialize message field [ram_usage]
    bufferOffset = _serializer.uint32(obj.ram_usage, buffer, bufferOffset);
    // Serialize message field [ram_total]
    bufferOffset = _serializer.uint32(obj.ram_total, buffer, bufferOffset);
    // Check that the constant length array field [storage_type] has the right length
    if (obj.storage_type.length !== 4) {
      throw new Error('Unable to serialize array field storage_type - length must be 4')
    }
    // Serialize message field [storage_type]
    bufferOffset = _arraySerializer.uint32(obj.storage_type, buffer, bufferOffset, 4);
    // Check that the constant length array field [storage_usage] has the right length
    if (obj.storage_usage.length !== 4) {
      throw new Error('Unable to serialize array field storage_usage - length must be 4')
    }
    // Serialize message field [storage_usage]
    bufferOffset = _arraySerializer.uint32(obj.storage_usage, buffer, bufferOffset, 4);
    // Check that the constant length array field [storage_total] has the right length
    if (obj.storage_total.length !== 4) {
      throw new Error('Unable to serialize array field storage_total - length must be 4')
    }
    // Serialize message field [storage_total]
    bufferOffset = _arraySerializer.uint32(obj.storage_total, buffer, bufferOffset, 4);
    // Check that the constant length array field [link_type] has the right length
    if (obj.link_type.length !== 6) {
      throw new Error('Unable to serialize array field link_type - length must be 6')
    }
    // Serialize message field [link_type]
    bufferOffset = _arraySerializer.uint32(obj.link_type, buffer, bufferOffset, 6);
    // Check that the constant length array field [link_tx_rate] has the right length
    if (obj.link_tx_rate.length !== 6) {
      throw new Error('Unable to serialize array field link_tx_rate - length must be 6')
    }
    // Serialize message field [link_tx_rate]
    bufferOffset = _arraySerializer.uint32(obj.link_tx_rate, buffer, bufferOffset, 6);
    // Check that the constant length array field [link_rx_rate] has the right length
    if (obj.link_rx_rate.length !== 6) {
      throw new Error('Unable to serialize array field link_rx_rate - length must be 6')
    }
    // Serialize message field [link_rx_rate]
    bufferOffset = _arraySerializer.uint32(obj.link_rx_rate, buffer, bufferOffset, 6);
    // Check that the constant length array field [link_tx_max] has the right length
    if (obj.link_tx_max.length !== 6) {
      throw new Error('Unable to serialize array field link_tx_max - length must be 6')
    }
    // Serialize message field [link_tx_max]
    bufferOffset = _arraySerializer.uint32(obj.link_tx_max, buffer, bufferOffset, 6);
    // Check that the constant length array field [link_rx_max] has the right length
    if (obj.link_rx_max.length !== 6) {
      throw new Error('Unable to serialize array field link_rx_max - length must be 6')
    }
    // Serialize message field [link_rx_max]
    bufferOffset = _arraySerializer.uint32(obj.link_rx_max, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OnboardComputerStatus
    let len;
    let data = new OnboardComputerStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [component]
    data.component = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [uptime]
    data.uptime = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cpu_cores]
    data.cpu_cores = _arrayDeserializer.uint8(buffer, bufferOffset, 8)
    // Deserialize message field [cpu_combined]
    data.cpu_combined = _arrayDeserializer.uint8(buffer, bufferOffset, 10)
    // Deserialize message field [gpu_cores]
    data.gpu_cores = _arrayDeserializer.uint8(buffer, bufferOffset, 4)
    // Deserialize message field [gpu_combined]
    data.gpu_combined = _arrayDeserializer.uint8(buffer, bufferOffset, 10)
    // Deserialize message field [temperature_board]
    data.temperature_board = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [temperature_core]
    data.temperature_core = _arrayDeserializer.int8(buffer, bufferOffset, 8)
    // Deserialize message field [fan_speed]
    data.fan_speed = _arrayDeserializer.int16(buffer, bufferOffset, 4)
    // Deserialize message field [ram_usage]
    data.ram_usage = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ram_total]
    data.ram_total = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [storage_type]
    data.storage_type = _arrayDeserializer.uint32(buffer, bufferOffset, 4)
    // Deserialize message field [storage_usage]
    data.storage_usage = _arrayDeserializer.uint32(buffer, bufferOffset, 4)
    // Deserialize message field [storage_total]
    data.storage_total = _arrayDeserializer.uint32(buffer, bufferOffset, 4)
    // Deserialize message field [link_type]
    data.link_type = _arrayDeserializer.uint32(buffer, bufferOffset, 6)
    // Deserialize message field [link_tx_rate]
    data.link_tx_rate = _arrayDeserializer.uint32(buffer, bufferOffset, 6)
    // Deserialize message field [link_rx_rate]
    data.link_rx_rate = _arrayDeserializer.uint32(buffer, bufferOffset, 6)
    // Deserialize message field [link_tx_max]
    data.link_tx_max = _arrayDeserializer.uint32(buffer, bufferOffset, 6)
    // Deserialize message field [link_rx_max]
    data.link_rx_max = _arrayDeserializer.uint32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 231;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/OnboardComputerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aebe864fac2952ca9de45a2b65875a60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Mavros message: ONBOARDCOMPUTERSTATUS
    
    std_msgs/Header header
    
    uint8 component               # See enum MAV_COMPONENT
    
    uint32 uptime               # [ms] Time since system boot
    uint8 type                  # Type of the onboard computer: 0: Mission computer primary, 1: Mission computer backup 1, 2: Mission computer backup 2, 3: Compute node, 4-5: Compute spares, 6-9: Payload computers.
    uint8[8] cpu_cores          # CPU usage on the component in percent (100 - idle). A value of UINT8_MAX implies the field is unused.
    uint8[10] cpu_combined      # Combined CPU usage as the last 10 slices of 100 MS (a histogram). This allows to identify spikes in load that max out the system, but only for a short amount of time. A value of UINT8_MAX implies the field is unused
    uint8[4] gpu_cores          # GPU usage on the component in percent (100 - idle). A value of UINT8_MAX implies the field is unused
    uint8[10] gpu_combined      # Combined GPU usage as the last 10 slices of 100 MS (a histogram). This allows to identify spikes in load that max out the system, but only for a short amount of time. A value of UINT8_MAX implies the field is unused.
    int8 temperature_board      # [degC] Temperature of the board. A value of INT8_MAX implies the field is unused.
    int8[8] temperature_core    # [degC] Temperature of the CPU core. A value of INT8_MAX implies the field is unused.
    int16[4] fan_speed          # [rpm] Fan speeds. A value of INT16_MAX implies the field is unused.
    uint32 ram_usage            # [MiB] Amount of used RAM on the component system. A value of UINT32_MAX implies the field is unused.
    uint32 ram_total            # [MiB] Total amount of RAM on the component system. A value of UINT32_MAX implies the field is unused.
    uint32[4] storage_type      # Storage type: 0: HDD, 1: SSD, 2: EMMC, 3: SD card (non-removable), 4: SD card (removable). A value of UINT32_MAX implies the field is unused.
    uint32[4] storage_usage     # [MiB] Amount of used storage space on the component system. A value of UINT32_MAX implies the field is unused.
    uint32[4] storage_total     # [MiB] Total amount of storage space on the component system. A value of UINT32_MAX implies the field is unused.
    uint32[6] link_type         # Link type: 0-9: UART, 10-19: Wired network, 20-29: Wifi, 30-39: Point-to-point proprietary, 40-49: Mesh proprietary.
    uint32[6] link_tx_rate      # [KiB/s] Network traffic from the component system. A value of UINT32_MAX implies the field is unused.
    uint32[6] link_rx_rate      # [KiB/s] Network traffic to the component system. A value of UINT32_MAX implies the field is unused.
    uint32[6] link_tx_max       # [KiB/s] Network capacity from the component system. A value of UINT32_MAX implies the field is unused.
    uint32[6] link_rx_max       # [KiB/s] Network capacity to the component system. A value of UINT32_MAX implies the field is unused.
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
    const resolved = new OnboardComputerStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.component !== undefined) {
      resolved.component = msg.component;
    }
    else {
      resolved.component = 0
    }

    if (msg.uptime !== undefined) {
      resolved.uptime = msg.uptime;
    }
    else {
      resolved.uptime = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.cpu_cores !== undefined) {
      resolved.cpu_cores = msg.cpu_cores;
    }
    else {
      resolved.cpu_cores = new Array(8).fill(0)
    }

    if (msg.cpu_combined !== undefined) {
      resolved.cpu_combined = msg.cpu_combined;
    }
    else {
      resolved.cpu_combined = new Array(10).fill(0)
    }

    if (msg.gpu_cores !== undefined) {
      resolved.gpu_cores = msg.gpu_cores;
    }
    else {
      resolved.gpu_cores = new Array(4).fill(0)
    }

    if (msg.gpu_combined !== undefined) {
      resolved.gpu_combined = msg.gpu_combined;
    }
    else {
      resolved.gpu_combined = new Array(10).fill(0)
    }

    if (msg.temperature_board !== undefined) {
      resolved.temperature_board = msg.temperature_board;
    }
    else {
      resolved.temperature_board = 0
    }

    if (msg.temperature_core !== undefined) {
      resolved.temperature_core = msg.temperature_core;
    }
    else {
      resolved.temperature_core = new Array(8).fill(0)
    }

    if (msg.fan_speed !== undefined) {
      resolved.fan_speed = msg.fan_speed;
    }
    else {
      resolved.fan_speed = new Array(4).fill(0)
    }

    if (msg.ram_usage !== undefined) {
      resolved.ram_usage = msg.ram_usage;
    }
    else {
      resolved.ram_usage = 0
    }

    if (msg.ram_total !== undefined) {
      resolved.ram_total = msg.ram_total;
    }
    else {
      resolved.ram_total = 0
    }

    if (msg.storage_type !== undefined) {
      resolved.storage_type = msg.storage_type;
    }
    else {
      resolved.storage_type = new Array(4).fill(0)
    }

    if (msg.storage_usage !== undefined) {
      resolved.storage_usage = msg.storage_usage;
    }
    else {
      resolved.storage_usage = new Array(4).fill(0)
    }

    if (msg.storage_total !== undefined) {
      resolved.storage_total = msg.storage_total;
    }
    else {
      resolved.storage_total = new Array(4).fill(0)
    }

    if (msg.link_type !== undefined) {
      resolved.link_type = msg.link_type;
    }
    else {
      resolved.link_type = new Array(6).fill(0)
    }

    if (msg.link_tx_rate !== undefined) {
      resolved.link_tx_rate = msg.link_tx_rate;
    }
    else {
      resolved.link_tx_rate = new Array(6).fill(0)
    }

    if (msg.link_rx_rate !== undefined) {
      resolved.link_rx_rate = msg.link_rx_rate;
    }
    else {
      resolved.link_rx_rate = new Array(6).fill(0)
    }

    if (msg.link_tx_max !== undefined) {
      resolved.link_tx_max = msg.link_tx_max;
    }
    else {
      resolved.link_tx_max = new Array(6).fill(0)
    }

    if (msg.link_rx_max !== undefined) {
      resolved.link_rx_max = msg.link_rx_max;
    }
    else {
      resolved.link_rx_max = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = OnboardComputerStatus;
