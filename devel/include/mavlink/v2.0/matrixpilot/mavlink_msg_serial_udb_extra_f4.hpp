// MESSAGE SERIAL_UDB_EXTRA_F4 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F4 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F4: format
 */
struct SERIAL_UDB_EXTRA_F4 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 172;
    static constexpr size_t LENGTH = 10;
    static constexpr size_t MIN_LENGTH = 10;
    static constexpr uint8_t CRC_EXTRA = 191;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F4";


    uint8_t sue_ROLL_STABILIZATION_AILERONS; /*<  Serial UDB Extra Roll Stabilization with Ailerons Enabled */
    uint8_t sue_ROLL_STABILIZATION_RUDDER; /*<  Serial UDB Extra Roll Stabilization with Rudder Enabled */
    uint8_t sue_PITCH_STABILIZATION; /*<  Serial UDB Extra Pitch Stabilization Enabled */
    uint8_t sue_YAW_STABILIZATION_RUDDER; /*<  Serial UDB Extra Yaw Stabilization using Rudder Enabled */
    uint8_t sue_YAW_STABILIZATION_AILERON; /*<  Serial UDB Extra Yaw Stabilization using Ailerons Enabled */
    uint8_t sue_AILERON_NAVIGATION; /*<  Serial UDB Extra Navigation with Ailerons Enabled */
    uint8_t sue_RUDDER_NAVIGATION; /*<  Serial UDB Extra Navigation with Rudder Enabled */
    uint8_t sue_ALTITUDEHOLD_STABILIZED; /*<  Serial UDB Extra Type of Alitude Hold when in Stabilized Mode */
    uint8_t sue_ALTITUDEHOLD_WAYPOINT; /*<  Serial UDB Extra Type of Alitude Hold when in Waypoint Mode */
    uint8_t sue_RACING_MODE; /*<  Serial UDB Extra Firmware racing mode enabled */


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
        ss << "  sue_ROLL_STABILIZATION_AILERONS: " << +sue_ROLL_STABILIZATION_AILERONS << std::endl;
        ss << "  sue_ROLL_STABILIZATION_RUDDER: " << +sue_ROLL_STABILIZATION_RUDDER << std::endl;
        ss << "  sue_PITCH_STABILIZATION: " << +sue_PITCH_STABILIZATION << std::endl;
        ss << "  sue_YAW_STABILIZATION_RUDDER: " << +sue_YAW_STABILIZATION_RUDDER << std::endl;
        ss << "  sue_YAW_STABILIZATION_AILERON: " << +sue_YAW_STABILIZATION_AILERON << std::endl;
        ss << "  sue_AILERON_NAVIGATION: " << +sue_AILERON_NAVIGATION << std::endl;
        ss << "  sue_RUDDER_NAVIGATION: " << +sue_RUDDER_NAVIGATION << std::endl;
        ss << "  sue_ALTITUDEHOLD_STABILIZED: " << +sue_ALTITUDEHOLD_STABILIZED << std::endl;
        ss << "  sue_ALTITUDEHOLD_WAYPOINT: " << +sue_ALTITUDEHOLD_WAYPOINT << std::endl;
        ss << "  sue_RACING_MODE: " << +sue_RACING_MODE << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_ROLL_STABILIZATION_AILERONS; // offset: 0
        map << sue_ROLL_STABILIZATION_RUDDER; // offset: 1
        map << sue_PITCH_STABILIZATION;       // offset: 2
        map << sue_YAW_STABILIZATION_RUDDER;  // offset: 3
        map << sue_YAW_STABILIZATION_AILERON; // offset: 4
        map << sue_AILERON_NAVIGATION;        // offset: 5
        map << sue_RUDDER_NAVIGATION;         // offset: 6
        map << sue_ALTITUDEHOLD_STABILIZED;   // offset: 7
        map << sue_ALTITUDEHOLD_WAYPOINT;     // offset: 8
        map << sue_RACING_MODE;               // offset: 9
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_ROLL_STABILIZATION_AILERONS; // offset: 0
        map >> sue_ROLL_STABILIZATION_RUDDER; // offset: 1
        map >> sue_PITCH_STABILIZATION;       // offset: 2
        map >> sue_YAW_STABILIZATION_RUDDER;  // offset: 3
        map >> sue_YAW_STABILIZATION_AILERON; // offset: 4
        map >> sue_AILERON_NAVIGATION;        // offset: 5
        map >> sue_RUDDER_NAVIGATION;         // offset: 6
        map >> sue_ALTITUDEHOLD_STABILIZED;   // offset: 7
        map >> sue_ALTITUDEHOLD_WAYPOINT;     // offset: 8
        map >> sue_RACING_MODE;               // offset: 9
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
