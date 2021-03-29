// MESSAGE SCRIPT_ITEM support class

#pragma once

namespace mavlink {
namespace paparazzi {
namespace msg {

/**
 * @brief SCRIPT_ITEM message
 *
 * Message encoding a mission script item. This message is emitted upon a request for the next script item.
 */
struct SCRIPT_ITEM : mavlink::Message {
    static constexpr msgid_t MSG_ID = 180;
    static constexpr size_t LENGTH = 54;
    static constexpr size_t MIN_LENGTH = 54;
    static constexpr uint8_t CRC_EXTRA = 231;
    static constexpr auto NAME = "SCRIPT_ITEM";


    uint8_t target_system; /*<  System ID */
    uint8_t target_component; /*<  Component ID */
    uint16_t seq; /*<  Sequence */
    std::array<char, 50> name; /*<  The name of the mission script, NULL terminated. */


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
        ss << "  name: \"" << to_string(name) << "\"" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << seq;                           // offset: 0
        map << target_system;                 // offset: 2
        map << target_component;              // offset: 3
        map << name;                          // offset: 4
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> seq;                           // offset: 0
        map >> target_system;                 // offset: 2
        map >> target_component;              // offset: 3
        map >> name;                          // offset: 4
    }
};

} // namespace msg
} // namespace paparazzi
} // namespace mavlink
