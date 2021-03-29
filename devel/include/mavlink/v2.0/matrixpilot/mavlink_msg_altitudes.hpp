// MESSAGE ALTITUDES support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief ALTITUDES message
 *
 * The altitude measured by sensors and IMU
 */
struct ALTITUDES : mavlink::Message {
    static constexpr msgid_t MSG_ID = 181;
    static constexpr size_t LENGTH = 28;
    static constexpr size_t MIN_LENGTH = 28;
    static constexpr uint8_t CRC_EXTRA = 55;
    static constexpr auto NAME = "ALTITUDES";


    uint32_t time_boot_ms; /*<  Timestamp (milliseconds since system boot) */
    int32_t alt_gps; /*<  GPS altitude (MSL) in meters, expressed as * 1000 (millimeters) */
    int32_t alt_imu; /*<  IMU altitude above ground in meters, expressed as * 1000 (millimeters) */
    int32_t alt_barometric; /*<  barometeric altitude above ground in meters, expressed as * 1000 (millimeters) */
    int32_t alt_optical_flow; /*<  Optical flow altitude above ground in meters, expressed as * 1000 (millimeters) */
    int32_t alt_range_finder; /*<  Rangefinder Altitude above ground in meters, expressed as * 1000 (millimeters) */
    int32_t alt_extra; /*<  Extra altitude above ground in meters, expressed as * 1000 (millimeters) */


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
        ss << "  alt_gps: " << alt_gps << std::endl;
        ss << "  alt_imu: " << alt_imu << std::endl;
        ss << "  alt_barometric: " << alt_barometric << std::endl;
        ss << "  alt_optical_flow: " << alt_optical_flow << std::endl;
        ss << "  alt_range_finder: " << alt_range_finder << std::endl;
        ss << "  alt_extra: " << alt_extra << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << time_boot_ms;                  // offset: 0
        map << alt_gps;                       // offset: 4
        map << alt_imu;                       // offset: 8
        map << alt_barometric;                // offset: 12
        map << alt_optical_flow;              // offset: 16
        map << alt_range_finder;              // offset: 20
        map << alt_extra;                     // offset: 24
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> time_boot_ms;                  // offset: 0
        map >> alt_gps;                       // offset: 4
        map >> alt_imu;                       // offset: 8
        map >> alt_barometric;                // offset: 12
        map >> alt_optical_flow;              // offset: 16
        map >> alt_range_finder;              // offset: 20
        map >> alt_extra;                     // offset: 24
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
