// MESSAGE SERIAL_UDB_EXTRA_F22 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F22 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F22 format
 */
struct SERIAL_UDB_EXTRA_F22 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 188;
    static constexpr size_t LENGTH = 12;
    static constexpr size_t MIN_LENGTH = 12;
    static constexpr uint8_t CRC_EXTRA = 91;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F22";


    int16_t sue_accel_x_at_calibration; /*<  SUE X accelerometer at calibration time */
    int16_t sue_accel_y_at_calibration; /*<  SUE Y accelerometer at calibration time */
    int16_t sue_accel_z_at_calibration; /*<  SUE Z accelerometer at calibration time */
    int16_t sue_gyro_x_at_calibration; /*<  SUE X gyro at calibration time */
    int16_t sue_gyro_y_at_calibration; /*<  SUE Y gyro at calibration time */
    int16_t sue_gyro_z_at_calibration; /*<  SUE Z gyro at calibration time */


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
        ss << "  sue_accel_x_at_calibration: " << sue_accel_x_at_calibration << std::endl;
        ss << "  sue_accel_y_at_calibration: " << sue_accel_y_at_calibration << std::endl;
        ss << "  sue_accel_z_at_calibration: " << sue_accel_z_at_calibration << std::endl;
        ss << "  sue_gyro_x_at_calibration: " << sue_gyro_x_at_calibration << std::endl;
        ss << "  sue_gyro_y_at_calibration: " << sue_gyro_y_at_calibration << std::endl;
        ss << "  sue_gyro_z_at_calibration: " << sue_gyro_z_at_calibration << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_accel_x_at_calibration;    // offset: 0
        map << sue_accel_y_at_calibration;    // offset: 2
        map << sue_accel_z_at_calibration;    // offset: 4
        map << sue_gyro_x_at_calibration;     // offset: 6
        map << sue_gyro_y_at_calibration;     // offset: 8
        map << sue_gyro_z_at_calibration;     // offset: 10
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_accel_x_at_calibration;    // offset: 0
        map >> sue_accel_y_at_calibration;    // offset: 2
        map >> sue_accel_z_at_calibration;    // offset: 4
        map >> sue_gyro_x_at_calibration;     // offset: 6
        map >> sue_gyro_y_at_calibration;     // offset: 8
        map >> sue_gyro_z_at_calibration;     // offset: 10
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
