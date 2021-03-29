// MESSAGE ASLUAV_STATUS support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief ASLUAV_STATUS message
 *
 * Extended state information for ASLUAVs
 */
struct ASLUAV_STATUS : mavlink::Message {
    static constexpr msgid_t MSG_ID = 205;
    static constexpr size_t LENGTH = 14;
    static constexpr size_t MIN_LENGTH = 14;
    static constexpr uint8_t CRC_EXTRA = 97;
    static constexpr auto NAME = "ASLUAV_STATUS";


    uint8_t LED_status; /*<   Status of the position-indicator LEDs */
    uint8_t SATCOM_status; /*<   Status of the IRIDIUM satellite communication system */
    std::array<uint8_t, 8> Servo_status; /*<   Status vector for up to 8 servos */
    float Motor_rpm; /*<   Motor RPM  */


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
        ss << "  LED_status: " << +LED_status << std::endl;
        ss << "  SATCOM_status: " << +SATCOM_status << std::endl;
        ss << "  Servo_status: [" << to_string(Servo_status) << "]" << std::endl;
        ss << "  Motor_rpm: " << Motor_rpm << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << Motor_rpm;                     // offset: 0
        map << LED_status;                    // offset: 4
        map << SATCOM_status;                 // offset: 5
        map << Servo_status;                  // offset: 6
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> Motor_rpm;                     // offset: 0
        map >> LED_status;                    // offset: 4
        map >> SATCOM_status;                 // offset: 5
        map >> Servo_status;                  // offset: 6
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
