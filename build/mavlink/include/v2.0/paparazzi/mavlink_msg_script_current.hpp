// MESSAGE SCRIPT_CURRENT support class

#pragma once

namespace mavlink {
namespace paparazzi {
namespace msg {

/**
 * @brief SCRIPT_CURRENT message
 *
 * This message informs about the currently active SCRIPT.
 */
struct SCRIPT_CURRENT : mavlink::Message {
    static constexpr msgid_t MSG_ID = 184;
    static constexpr size_t LENGTH = 2;
    static constexpr size_t MIN_LENGTH = 2;
    static constexpr uint8_t CRC_EXTRA = 40;
    static constexpr auto NAME = "SCRIPT_CURRENT";


    uint16_t seq; /*<  Active Sequence */


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
        ss << "  seq: " << seq << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << seq;                           // offset: 0
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> seq;                           // offset: 0
    }
};

} // namespace msg
} // namespace paparazzi
} // namespace mavlink
