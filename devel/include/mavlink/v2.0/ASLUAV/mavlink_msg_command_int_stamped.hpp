// MESSAGE COMMAND_INT_STAMPED support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief COMMAND_INT_STAMPED message
 *
 * Message encoding a command with parameters as scaled integers and additional metadata. Scaling depends on the actual command value.
 */
struct COMMAND_INT_STAMPED : mavlink::Message {
    static constexpr msgid_t MSG_ID = 78;
    static constexpr size_t LENGTH = 47;
    static constexpr size_t MIN_LENGTH = 47;
    static constexpr uint8_t CRC_EXTRA = 119;
    static constexpr auto NAME = "COMMAND_INT_STAMPED";


    uint32_t utc_time; /*<  UTC time, seconds elapsed since 01.01.1970 */
    uint64_t vehicle_timestamp; /*<  Microseconds elapsed since vehicle boot */
    uint8_t target_system; /*<  System ID */
    uint8_t target_component; /*<  Component ID */
    uint8_t frame; /*<  The coordinate system of the COMMAND, as defined by MAV_FRAME enum */
    uint16_t command; /*<  The scheduled action for the mission item, as defined by MAV_CMD enum */
    uint8_t current; /*<  false:0, true:1 */
    uint8_t autocontinue; /*<  autocontinue to next wp */
    float param1; /*<  PARAM1, see MAV_CMD enum */
    float param2; /*<  PARAM2, see MAV_CMD enum */
    float param3; /*<  PARAM3, see MAV_CMD enum */
    float param4; /*<  PARAM4, see MAV_CMD enum */
    int32_t x; /*<  PARAM5 / local: x position in meters * 1e4, global: latitude in degrees * 10^7 */
    int32_t y; /*<  PARAM6 / local: y position in meters * 1e4, global: longitude in degrees * 10^7 */
    float z; /*<  PARAM7 / z position: global: altitude in meters (MSL, WGS84, AGL or relative to home - depending on frame). */


    inline std::string get_name(void) const override
    {
            return NAME;
    }

    inline Info get_message_info(void) const override
    {
            return { MSG_ID, LENGTH, MIN_LENGTH, CRC_EXTRA };
    }

    inline std::string to_yaml(void) const override
    {
        std::stringstream ss;

        ss << NAME << ":" << std::endl;
        ss << "  utc_time: " << utc_time << std::endl;
        ss << "  vehicle_timestamp: " << vehicle_timestamp << std::endl;
        ss << "  target_system: " << +target_system << std::endl;
        ss << "  target_component: " << +target_component << std::endl;
        ss << "  frame: " << +frame << std::endl;
        ss << "  command: " << command << std::endl;
        ss << "  current: " << +current << std::endl;
        ss << "  autocontinue: " << +autocontinue << std::endl;
        ss << "  param1: " << param1 << std::endl;
        ss << "  param2: " << param2 << std::endl;
        ss << "  param3: " << param3 << std::endl;
        ss << "  param4: " << param4 << std::endl;
        ss << "  x: " << x << std::endl;
        ss << "  y: " << y << std::endl;
        ss << "  z: " << z << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << vehicle_timestamp;             // offset: 0
        map << utc_time;                      // offset: 8
        map << param1;                        // offset: 12
        map << param2;                        // offset: 16
        map << param3;                        // offset: 20
        map << param4;                        // offset: 24
        map << x;                             // offset: 28
        map << y;                             // offset: 32
        map << z;                             // offset: 36
        map << command;                       // offset: 40
        map << target_system;                 // offset: 42
        map << target_component;              // offset: 43
        map << frame;                         // offset: 44
        map << current;                       // offset: 45
        map << autocontinue;                  // offset: 46
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> vehicle_timestamp;             // offset: 0
        map >> utc_time;                      // offset: 8
        map >> param1;                        // offset: 12
        map >> param2;                        // offset: 16
        map >> param3;                        // offset: 20
        map >> param4;                        // offset: 24
        map >> x;                             // offset: 28
        map >> y;                             // offset: 32
        map >> z;                             // offset: 36
        map >> command;                       // offset: 40
        map >> target_system;                 // offset: 42
        map >> target_component;              // offset: 43
        map >> frame;                         // offset: 44
        map >> current;                       // offset: 45
        map >> autocontinue;                  // offset: 46
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
