// MESSAGE FLEXIFUNCTION_DIRECTORY_ACK support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief FLEXIFUNCTION_DIRECTORY_ACK message
 *
 * Acknowldge sucess or failure of a flexifunction command
 */
struct FLEXIFUNCTION_DIRECTORY_ACK : mavlink::Message {
    static constexpr msgid_t MSG_ID = 156;
    static constexpr size_t LENGTH = 7;
    static constexpr size_t MIN_LENGTH = 7;
    static constexpr uint8_t CRC_EXTRA = 218;
    static constexpr auto NAME = "FLEXIFUNCTION_DIRECTORY_ACK";


    uint8_t target_system; /*<  System ID */
    uint8_t target_component; /*<  Component ID */
    uint8_t directory_type; /*<  0=inputs, 1=outputs */
    uint8_t start_index; /*<  index of first directory entry to write */
    uint8_t count; /*<  count of directory entries to write */
    uint16_t result; /*<  result of acknowledge, 0=fail, 1=good */


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
        ss << "  target_system: " << +target_system << std::endl;
        ss << "  target_component: " << +target_component << std::endl;
        ss << "  directory_type: " << +directory_type << std::endl;
        ss << "  start_index: " << +start_index << std::endl;
        ss << "  count: " << +count << std::endl;
        ss << "  result: " << result << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << result;                        // offset: 0
        map << target_system;                 // offset: 2
        map << target_component;              // offset: 3
        map << directory_type;                // offset: 4
        map << start_index;                   // offset: 5
        map << count;                         // offset: 6
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> result;                        // offset: 0
        map >> target_system;                 // offset: 2
        map >> target_component;              // offset: 3
        map >> directory_type;                // offset: 4
        map >> start_index;                   // offset: 5
        map >> count;                         // offset: 6
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
