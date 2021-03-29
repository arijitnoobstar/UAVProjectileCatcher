// MESSAGE SERIAL_UDB_EXTRA_F21 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F21 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F21 format
 */
struct SERIAL_UDB_EXTRA_F21 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 187;
    static constexpr size_t LENGTH = 12;
    static constexpr size_t MIN_LENGTH = 12;
    static constexpr uint8_t CRC_EXTRA = 134;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F21";


    int16_t sue_accel_x_offset; /*<  SUE X accelerometer offset */
    int16_t sue_accel_y_offset; /*<  SUE Y accelerometer offset */
    int16_t sue_accel_z_offset; /*<  SUE Z accelerometer offset */
    int16_t sue_gyro_x_offset; /*<  SUE X gyro offset */
    int16_t sue_gyro_y_offset; /*<  SUE Y gyro offset */
    int16_t sue_gyro_z_offset; /*<  SUE Z gyro offset */


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
        ss << "  sue_accel_x_offset: " << sue_accel_x_offset << std::endl;
        ss << "  sue_accel_y_offset: " << sue_accel_y_offset << std::endl;
        ss << "  sue_accel_z_offset: " << sue_accel_z_offset << std::endl;
        ss << "  sue_gyro_x_offset: " << sue_gyro_x_offset << std::endl;
        ss << "  sue_gyro_y_offset: " << sue_gyro_y_offset << std::endl;
        ss << "  sue_gyro_z_offset: " << sue_gyro_z_offset << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_accel_x_offset;            // offset: 0
        map << sue_accel_y_offset;            // offset: 2
        map << sue_accel_z_offset;            // offset: 4
        map << sue_gyro_x_offset;             // offset: 6
        map << sue_gyro_y_offset;             // offset: 8
        map << sue_gyro_z_offset;             // offset: 10
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_accel_x_offset;            // offset: 0
        map >> sue_accel_y_offset;            // offset: 2
        map >> sue_accel_z_offset;            // offset: 4
        map >> sue_gyro_x_offset;             // offset: 6
        map >> sue_gyro_y_offset;             // offset: 8
        map >> sue_gyro_z_offset;             // offset: 10
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
