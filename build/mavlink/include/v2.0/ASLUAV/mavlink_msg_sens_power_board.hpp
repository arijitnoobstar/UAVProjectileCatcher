// MESSAGE SENS_POWER_BOARD support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief SENS_POWER_BOARD message
 *
 * Monitoring of power board status
 */
struct SENS_POWER_BOARD : mavlink::Message {
    static constexpr msgid_t MSG_ID = 212;
    static constexpr size_t LENGTH = 46;
    static constexpr size_t MIN_LENGTH = 46;
    static constexpr uint8_t CRC_EXTRA = 222;
    static constexpr auto NAME = "SENS_POWER_BOARD";


    uint64_t timestamp; /*< [us] Timestamp */
    uint8_t pwr_brd_status; /*<  Power board status register */
    uint8_t pwr_brd_led_status; /*<  Power board leds status */
    float pwr_brd_system_volt; /*< [V] Power board system voltage */
    float pwr_brd_servo_volt; /*< [V] Power board servo voltage */
    float pwr_brd_digital_volt; /*< [V] Power board digital voltage */
    float pwr_brd_mot_l_amp; /*< [A] Power board left motor current sensor */
    float pwr_brd_mot_r_amp; /*< [A] Power board right motor current sensor */
    float pwr_brd_analog_amp; /*< [A] Power board analog current sensor */
    float pwr_brd_digital_amp; /*< [A] Power board digital current sensor */
    float pwr_brd_ext_amp; /*< [A] Power board extension current sensor */
    float pwr_brd_aux_amp; /*< [A] Power board aux current sensor */


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
        ss << "  timestamp: " << timestamp << std::endl;
        ss << "  pwr_brd_status: " << +pwr_brd_status << std::endl;
        ss << "  pwr_brd_led_status: " << +pwr_brd_led_status << std::endl;
        ss << "  pwr_brd_system_volt: " << pwr_brd_system_volt << std::endl;
        ss << "  pwr_brd_servo_volt: " << pwr_brd_servo_volt << std::endl;
        ss << "  pwr_brd_digital_volt: " << pwr_brd_digital_volt << std::endl;
        ss << "  pwr_brd_mot_l_amp: " << pwr_brd_mot_l_amp << std::endl;
        ss << "  pwr_brd_mot_r_amp: " << pwr_brd_mot_r_amp << std::endl;
        ss << "  pwr_brd_analog_amp: " << pwr_brd_analog_amp << std::endl;
        ss << "  pwr_brd_digital_amp: " << pwr_brd_digital_amp << std::endl;
        ss << "  pwr_brd_ext_amp: " << pwr_brd_ext_amp << std::endl;
        ss << "  pwr_brd_aux_amp: " << pwr_brd_aux_amp << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << timestamp;                     // offset: 0
        map << pwr_brd_system_volt;           // offset: 8
        map << pwr_brd_servo_volt;            // offset: 12
        map << pwr_brd_digital_volt;          // offset: 16
        map << pwr_brd_mot_l_amp;             // offset: 20
        map << pwr_brd_mot_r_amp;             // offset: 24
        map << pwr_brd_analog_amp;            // offset: 28
        map << pwr_brd_digital_amp;           // offset: 32
        map << pwr_brd_ext_amp;               // offset: 36
        map << pwr_brd_aux_amp;               // offset: 40
        map << pwr_brd_status;                // offset: 44
        map << pwr_brd_led_status;            // offset: 45
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> timestamp;                     // offset: 0
        map >> pwr_brd_system_volt;           // offset: 8
        map >> pwr_brd_servo_volt;            // offset: 12
        map >> pwr_brd_digital_volt;          // offset: 16
        map >> pwr_brd_mot_l_amp;             // offset: 20
        map >> pwr_brd_mot_r_amp;             // offset: 24
        map >> pwr_brd_analog_amp;            // offset: 28
        map >> pwr_brd_digital_amp;           // offset: 32
        map >> pwr_brd_ext_amp;               // offset: 36
        map >> pwr_brd_aux_amp;               // offset: 40
        map >> pwr_brd_status;                // offset: 44
        map >> pwr_brd_led_status;            // offset: 45
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
