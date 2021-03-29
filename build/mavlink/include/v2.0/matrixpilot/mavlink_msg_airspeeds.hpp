// MESSAGE AIRSPEEDS support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief AIRSPEEDS message
 *
 * The airspeed measured by sensors and IMU
 */
struct AIRSPEEDS : mavlink::Message {
    static constexpr msgid_t MSG_ID = 182;
    static constexpr size_t LENGTH = 16;
    static constexpr size_t MIN_LENGTH = 16;
    static constexpr uint8_t CRC_EXTRA = 154;
    static constexpr auto NAME = "AIRSPEEDS";


    uint32_t time_boot_ms; /*<  Timestamp (milliseconds since system boot) */
    int16_t airspeed_imu; /*<  Airspeed estimate from IMU, cm/s */
    int16_t airspeed_pitot; /*<  Pitot measured forward airpseed, cm/s */
    int16_t airspeed_hot_wire; /*<  Hot wire anenometer measured airspeed, cm/s */
    int16_t airspeed_ultrasonic; /*<  Ultrasonic measured airspeed, cm/s */
    int16_t aoa; /*<  Angle of attack sensor, degrees * 10 */
    int16_t aoy; /*<  Yaw angle sensor, degrees * 10 */


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
        ss << "  time_boot_ms: " << time_boot_ms << std::endl;
        ss << "  airspeed_imu: " << airspeed_imu << std::endl;
        ss << "  airspeed_pitot: " << airspeed_pitot << std::endl;
        ss << "  airspeed_hot_wire: " << airspeed_hot_wire << std::endl;
        ss << "  airspeed_ultrasonic: " << airspeed_ultrasonic << std::endl;
        ss << "  aoa: " << aoa << std::endl;
        ss << "  aoy: " << aoy << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << time_boot_ms;                  // offset: 0
        map << airspeed_imu;                  // offset: 4
        map << airspeed_pitot;                // offset: 6
        map << airspeed_hot_wire;             // offset: 8
        map << airspeed_ultrasonic;           // offset: 10
        map << aoa;                           // offset: 12
        map << aoy;                           // offset: 14
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> time_boot_ms;                  // offset: 0
        map >> airspeed_imu;                  // offset: 4
        map >> airspeed_pitot;                // offset: 6
        map >> airspeed_hot_wire;             // offset: 8
        map >> airspeed_ultrasonic;           // offset: 10
        map >> aoa;                           // offset: 12
        map >> aoy;                           // offset: 14
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
