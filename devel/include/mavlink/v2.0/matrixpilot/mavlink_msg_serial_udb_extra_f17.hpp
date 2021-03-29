// MESSAGE SERIAL_UDB_EXTRA_F17 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F17 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F17 format
 */
struct SERIAL_UDB_EXTRA_F17 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 183;
    static constexpr size_t LENGTH = 12;
    static constexpr size_t MIN_LENGTH = 12;
    static constexpr uint8_t CRC_EXTRA = 175;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F17";


    float sue_feed_forward; /*<  SUE Feed Forward Gain */
    float sue_turn_rate_nav; /*<  SUE Max Turn Rate when Navigating */
    float sue_turn_rate_fbw; /*<  SUE Max Turn Rate in Fly By Wire Mode */


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
        ss << "  sue_feed_forward: " << sue_feed_forward << std::endl;
        ss << "  sue_turn_rate_nav: " << sue_turn_rate_nav << std::endl;
        ss << "  sue_turn_rate_fbw: " << sue_turn_rate_fbw << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_feed_forward;              // offset: 0
        map << sue_turn_rate_nav;             // offset: 4
        map << sue_turn_rate_fbw;             // offset: 8
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_feed_forward;              // offset: 0
        map >> sue_turn_rate_nav;             // offset: 4
        map >> sue_turn_rate_fbw;             // offset: 8
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
