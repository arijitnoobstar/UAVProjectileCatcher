// MESSAGE SERIAL_UDB_EXTRA_F7 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F7 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F7: format
 */
struct SERIAL_UDB_EXTRA_F7 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 175;
    static constexpr size_t LENGTH = 24;
    static constexpr size_t MIN_LENGTH = 24;
    static constexpr uint8_t CRC_EXTRA = 171;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F7";


    float sue_YAWKP_RUDDER; /*<  Serial UDB YAWKP_RUDDER Gain for Proporional control of navigation */
    float sue_YAWKD_RUDDER; /*<  Serial UDB YAWKD_RUDDER Gain for Rate control of navigation */
    float sue_ROLLKP_RUDDER; /*<  Serial UDB Extra ROLLKP_RUDDER Gain for Proportional control of roll stabilization */
    float sue_ROLLKD_RUDDER; /*<  Serial UDB Extra ROLLKD_RUDDER Gain for Rate control of roll stabilization */
    float sue_RUDDER_BOOST; /*<  SERIAL UDB EXTRA Rudder Boost Gain to Manual Control when stabilized */
    float sue_RTL_PITCH_DOWN; /*<  Serial UDB Extra Return To Landing - Angle to Pitch Plane Down */


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
        ss << "  sue_YAWKP_RUDDER: " << sue_YAWKP_RUDDER << std::endl;
        ss << "  sue_YAWKD_RUDDER: " << sue_YAWKD_RUDDER << std::endl;
        ss << "  sue_ROLLKP_RUDDER: " << sue_ROLLKP_RUDDER << std::endl;
        ss << "  sue_ROLLKD_RUDDER: " << sue_ROLLKD_RUDDER << std::endl;
        ss << "  sue_RUDDER_BOOST: " << sue_RUDDER_BOOST << std::endl;
        ss << "  sue_RTL_PITCH_DOWN: " << sue_RTL_PITCH_DOWN << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_YAWKP_RUDDER;              // offset: 0
        map << sue_YAWKD_RUDDER;              // offset: 4
        map << sue_ROLLKP_RUDDER;             // offset: 8
        map << sue_ROLLKD_RUDDER;             // offset: 12
        map << sue_RUDDER_BOOST;              // offset: 16
        map << sue_RTL_PITCH_DOWN;            // offset: 20
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_YAWKP_RUDDER;              // offset: 0
        map >> sue_YAWKD_RUDDER;              // offset: 4
        map >> sue_ROLLKP_RUDDER;             // offset: 8
        map >> sue_ROLLKD_RUDDER;             // offset: 12
        map >> sue_RUDDER_BOOST;              // offset: 16
        map >> sue_RTL_PITCH_DOWN;            // offset: 20
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
