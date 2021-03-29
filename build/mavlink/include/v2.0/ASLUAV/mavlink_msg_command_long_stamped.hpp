// MESSAGE COMMAND_LONG_STAMPED support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief COMMAND_LONG_STAMPED message
 *
 * Send a command with up to seven parameters to the MAV and additional metadata
 */
struct COMMAND_LONG_STAMPED : mavlink::Message {
    static constexpr msgid_t MSG_ID = 79;
    static constexpr size_t LENGTH = 45;
    static constexpr size_t MIN_LENGTH = 45;
    static constexpr uint8_t CRC_EXTRA = 102;
    static constexpr auto NAME = "COMMAND_LONG_STAMPED";


    uint32_t utc_time; /*<  UTC time, seconds elapsed since 01.01.1970 */
    uint64_t vehicle_timestamp; /*<  Microseconds elapsed since vehicle boot */
    uint8_t target_system; /*<  System which should execute the command */
    uint8_t target_component; /*<  Component which should execute the command, 0 for all components */
    uint16_t command; /*<  Command ID, as defined by MAV_CMD enum. */
    uint8_t confirmation; /*<  0: First transmission of this command. 1-255: Confirmation transmissions (e.g. for kill command) */
    float param1; /*<  Parameter 1, as defined by MAV_CMD enum. */
    float param2; /*<  Parameter 2, as defined by MAV_CMD enum. */
    float param3; /*<  Parameter 3, as defined by MAV_CMD enum. */
    float param4; /*<  Parameter 4, as defined by MAV_CMD enum. */
    float param5; /*<  Parameter 5, as defined by MAV_CMD enum. */
    float param6; /*<  Parameter 6, as defined by MAV_CMD enum. */
    float param7; /*<  Parameter 7, as defined by MAV_CMD enum. */


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
        ss << "  command: " << command << std::endl;
        ss << "  confirmation: " << +confirmation << std::endl;
        ss << "  param1: " << param1 << std::endl;
        ss << "  param2: " << param2 << std::endl;
        ss << "  param3: " << param3 << std::endl;
        ss << "  param4: " << param4 << std::endl;
        ss << "  param5: " << param5 << std::endl;
        ss << "  param6: " << param6 << std::endl;
        ss << "  param7: " << param7 << std::endl;

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
        map << param5;                        // offset: 28
        map << param6;                        // offset: 32
        map << param7;                        // offset: 36
        map << command;                       // offset: 40
        map << target_system;                 // offset: 42
        map << target_component;              // offset: 43
        map << confirmation;                  // offset: 44
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> vehicle_timestamp;             // offset: 0
        map >> utc_time;                      // offset: 8
        map >> param1;                        // offset: 12
        map >> param2;                        // offset: 16
        map >> param3;                        // offset: 20
        map >> param4;                        // offset: 24
        map >> param5;                        // offset: 28
        map >> param6;                        // offset: 32
        map >> param7;                        // offset: 36
        map >> command;                       // offset: 40
        map >> target_system;                 // offset: 42
        map >> target_component;              // offset: 43
        map >> confirmation;                  // offset: 44
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
