// MESSAGE SERIAL_UDB_EXTRA_F14 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F14 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F14: format
 */
struct SERIAL_UDB_EXTRA_F14 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 178;
    static constexpr size_t LENGTH = 17;
    static constexpr size_t MIN_LENGTH = 17;
    static constexpr uint8_t CRC_EXTRA = 123;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F14";


    uint8_t sue_WIND_ESTIMATION; /*<  Serial UDB Extra Wind Estimation Enabled */
    uint8_t sue_GPS_TYPE; /*<  Serial UDB Extra Type of GPS Unit */
    uint8_t sue_DR; /*<  Serial UDB Extra Dead Reckoning Enabled */
    uint8_t sue_BOARD_TYPE; /*<  Serial UDB Extra Type of UDB Hardware */
    uint8_t sue_AIRFRAME; /*<  Serial UDB Extra Type of Airframe */
    int16_t sue_RCON; /*<  Serial UDB Extra Reboot Register of DSPIC */
    int16_t sue_TRAP_FLAGS; /*<  Serial UDB Extra  Last dspic Trap Flags */
    uint32_t sue_TRAP_SOURCE; /*<  Serial UDB Extra Type Program Address of Last Trap */
    int16_t sue_osc_fail_count; /*<  Serial UDB Extra Number of Ocillator Failures */
    uint8_t sue_CLOCK_CONFIG; /*<  Serial UDB Extra UDB Internal Clock Configuration */
    uint8_t sue_FLIGHT_PLAN_TYPE; /*<  Serial UDB Extra Type of Flight Plan */


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
        ss << "  sue_WIND_ESTIMATION: " << +sue_WIND_ESTIMATION << std::endl;
        ss << "  sue_GPS_TYPE: " << +sue_GPS_TYPE << std::endl;
        ss << "  sue_DR: " << +sue_DR << std::endl;
        ss << "  sue_BOARD_TYPE: " << +sue_BOARD_TYPE << std::endl;
        ss << "  sue_AIRFRAME: " << +sue_AIRFRAME << std::endl;
        ss << "  sue_RCON: " << sue_RCON << std::endl;
        ss << "  sue_TRAP_FLAGS: " << sue_TRAP_FLAGS << std::endl;
        ss << "  sue_TRAP_SOURCE: " << sue_TRAP_SOURCE << std::endl;
        ss << "  sue_osc_fail_count: " << sue_osc_fail_count << std::endl;
        ss << "  sue_CLOCK_CONFIG: " << +sue_CLOCK_CONFIG << std::endl;
        ss << "  sue_FLIGHT_PLAN_TYPE: " << +sue_FLIGHT_PLAN_TYPE << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_TRAP_SOURCE;               // offset: 0
        map << sue_RCON;                      // offset: 4
        map << sue_TRAP_FLAGS;                // offset: 6
        map << sue_osc_fail_count;            // offset: 8
        map << sue_WIND_ESTIMATION;           // offset: 10
        map << sue_GPS_TYPE;                  // offset: 11
        map << sue_DR;                        // offset: 12
        map << sue_BOARD_TYPE;                // offset: 13
        map << sue_AIRFRAME;                  // offset: 14
        map << sue_CLOCK_CONFIG;              // offset: 15
        map << sue_FLIGHT_PLAN_TYPE;          // offset: 16
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_TRAP_SOURCE;               // offset: 0
        map >> sue_RCON;                      // offset: 4
        map >> sue_TRAP_FLAGS;                // offset: 6
        map >> sue_osc_fail_count;            // offset: 8
        map >> sue_WIND_ESTIMATION;           // offset: 10
        map >> sue_GPS_TYPE;                  // offset: 11
        map >> sue_DR;                        // offset: 12
        map >> sue_BOARD_TYPE;                // offset: 13
        map >> sue_AIRFRAME;                  // offset: 14
        map >> sue_CLOCK_CONFIG;              // offset: 15
        map >> sue_FLIGHT_PLAN_TYPE;          // offset: 16
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
