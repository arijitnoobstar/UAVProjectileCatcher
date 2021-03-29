// MESSAGE SCRIPT_COUNT support class

#pragma once

namespace mavlink {
namespace paparazzi {
namespace msg {

/**
 * @brief SCRIPT_COUNT message
 *
 * This message is emitted as response to SCRIPT_REQUEST_LIST by the MAV to get the number of mission scripts.
 */
struct SCRIPT_COUNT : mavlink::Message {
    static constexpr msgid_t MSG_ID = 183;
    static constexpr size_t LENGTH = 4;
    static constexpr size_t MIN_LENGTH = 4;
    static constexpr uint8_t CRC_EXTRA = 186;
    static constexpr auto NAME = "SCRIPT_COUNT";


    uint8_t target_system; /*<  System ID */
    uint8_t target_component; /*<  Component ID */
    uint16_t count; /*<  Number of script items in the sequence */


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
        ss << "  count: " << count << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << count;                         // offset: 0
        map << target_system;                 // offset: 2
        map << target_component;              // offset: 3
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> count;                         // offset: 0
        map >> target_system;                 // offset: 2
        map >> target_component;              // offset: 3
    }
};

} // namespace msg
} // namespace paparazzi
} // namespace mavlink
