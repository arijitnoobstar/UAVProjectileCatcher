// MESSAGE SERIAL_UDB_EXTRA_F5 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F5 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F5: format
 */
struct SERIAL_UDB_EXTRA_F5 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 173;
    static constexpr size_t LENGTH = 16;
    static constexpr size_t MIN_LENGTH = 16;
    static constexpr uint8_t CRC_EXTRA = 54;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F5";


    float sue_YAWKP_AILERON; /*<  Serial UDB YAWKP_AILERON Gain for Proporional control of navigation */
    float sue_YAWKD_AILERON; /*<  Serial UDB YAWKD_AILERON Gain for Rate control of navigation */
    float sue_ROLLKP; /*<  Serial UDB Extra ROLLKP Gain for Proportional control of roll stabilization */
    float sue_ROLLKD; /*<  Serial UDB Extra ROLLKD Gain for Rate control of roll stabilization */


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
        ss << "  sue_YAWKP_AILERON: " << sue_YAWKP_AILERON << std::endl;
        ss << "  sue_YAWKD_AILERON: " << sue_YAWKD_AILERON << std::endl;
        ss << "  sue_ROLLKP: " << sue_ROLLKP << std::endl;
        ss << "  sue_ROLLKD: " << sue_ROLLKD << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_YAWKP_AILERON;             // offset: 0
        map << sue_YAWKD_AILERON;             // offset: 4
        map << sue_ROLLKP;                    // offset: 8
        map << sue_ROLLKD;                    // offset: 12
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_YAWKP_AILERON;             // offset: 0
        map >> sue_YAWKD_AILERON;             // offset: 4
        map >> sue_ROLLKP;                    // offset: 8
        map >> sue_ROLLKD;                    // offset: 12
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
