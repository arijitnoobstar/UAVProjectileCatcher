// MESSAGE SERIAL_UDB_EXTRA_F8 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F8 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F8: format
 */
struct SERIAL_UDB_EXTRA_F8 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 176;
    static constexpr size_t LENGTH = 28;
    static constexpr size_t MIN_LENGTH = 28;
    static constexpr uint8_t CRC_EXTRA = 142;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F8";


    float sue_HEIGHT_TARGET_MAX; /*<  Serial UDB Extra HEIGHT_TARGET_MAX */
    float sue_HEIGHT_TARGET_MIN; /*<  Serial UDB Extra HEIGHT_TARGET_MIN */
    float sue_ALT_HOLD_THROTTLE_MIN; /*<  Serial UDB Extra ALT_HOLD_THROTTLE_MIN */
    float sue_ALT_HOLD_THROTTLE_MAX; /*<  Serial UDB Extra ALT_HOLD_THROTTLE_MAX */
    float sue_ALT_HOLD_PITCH_MIN; /*<  Serial UDB Extra ALT_HOLD_PITCH_MIN */
    float sue_ALT_HOLD_PITCH_MAX; /*<  Serial UDB Extra ALT_HOLD_PITCH_MAX */
    float sue_ALT_HOLD_PITCH_HIGH; /*<  Serial UDB Extra ALT_HOLD_PITCH_HIGH */


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
        ss << "  sue_HEIGHT_TARGET_MAX: " << sue_HEIGHT_TARGET_MAX << std::endl;
        ss << "  sue_HEIGHT_TARGET_MIN: " << sue_HEIGHT_TARGET_MIN << std::endl;
        ss << "  sue_ALT_HOLD_THROTTLE_MIN: " << sue_ALT_HOLD_THROTTLE_MIN << std::endl;
        ss << "  sue_ALT_HOLD_THROTTLE_MAX: " << sue_ALT_HOLD_THROTTLE_MAX << std::endl;
        ss << "  sue_ALT_HOLD_PITCH_MIN: " << sue_ALT_HOLD_PITCH_MIN << std::endl;
        ss << "  sue_ALT_HOLD_PITCH_MAX: " << sue_ALT_HOLD_PITCH_MAX << std::endl;
        ss << "  sue_ALT_HOLD_PITCH_HIGH: " << sue_ALT_HOLD_PITCH_HIGH << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_HEIGHT_TARGET_MAX;         // offset: 0
        map << sue_HEIGHT_TARGET_MIN;         // offset: 4
        map << sue_ALT_HOLD_THROTTLE_MIN;     // offset: 8
        map << sue_ALT_HOLD_THROTTLE_MAX;     // offset: 12
        map << sue_ALT_HOLD_PITCH_MIN;        // offset: 16
        map << sue_ALT_HOLD_PITCH_MAX;        // offset: 20
        map << sue_ALT_HOLD_PITCH_HIGH;       // offset: 24
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_HEIGHT_TARGET_MAX;         // offset: 0
        map >> sue_HEIGHT_TARGET_MIN;         // offset: 4
        map >> sue_ALT_HOLD_THROTTLE_MIN;     // offset: 8
        map >> sue_ALT_HOLD_THROTTLE_MAX;     // offset: 12
        map >> sue_ALT_HOLD_PITCH_MIN;        // offset: 16
        map >> sue_ALT_HOLD_PITCH_MAX;        // offset: 20
        map >> sue_ALT_HOLD_PITCH_HIGH;       // offset: 24
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
