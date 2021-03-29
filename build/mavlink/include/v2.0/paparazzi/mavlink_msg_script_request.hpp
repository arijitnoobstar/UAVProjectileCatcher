// MESSAGE SCRIPT_REQUEST support class

#pragma once

namespace mavlink {
namespace paparazzi {
namespace msg {

/**
 * @brief SCRIPT_REQUEST message
 *
 * Request script item with the sequence number seq. The response of the system to this message should be a SCRIPT_ITEM message.
 */
struct SCRIPT_REQUEST : mavlink::Message {
    static constexpr msgid_t MSG_ID = 181;
    static constexpr size_t LENGTH = 4;
    static constexpr size_t MIN_LENGTH = 4;
    static constexpr uint8_t CRC_EXTRA = 129;
    static constexpr auto NAME = "SCRIPT_REQUEST";


    uint8_t target_system; /*<  System ID */
    uint8_t target_component; /*<  Component ID */
    uint16_t seq; /*<  Sequence */


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
        ss << "  seq: " << seq << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << seq;                           // offset: 0
        map << target_system;                 // offset: 2
        map << target_component;              // offset: 3
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> seq;                           // offset: 0
        map >> target_system;                 // offset: 2
        map >> target_component;              // offset: 3
    }
};

} // namespace msg
} // namespace paparazzi
} // namespace mavlink
