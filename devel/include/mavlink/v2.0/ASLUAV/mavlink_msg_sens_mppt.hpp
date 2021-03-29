// MESSAGE SENS_MPPT support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief SENS_MPPT message
 *
 * Maximum Power Point Tracker (MPPT) sensor data for solar module power performance tracking
 */
struct SENS_MPPT : mavlink::Message {
    static constexpr msgid_t MSG_ID = 202;
    static constexpr size_t LENGTH = 41;
    static constexpr size_t MIN_LENGTH = 41;
    static constexpr uint8_t CRC_EXTRA = 231;
    static constexpr auto NAME = "SENS_MPPT";


    uint64_t mppt_timestamp; /*< [us]  MPPT last timestamp  */
    float mppt1_volt; /*< [V]  MPPT1 voltage  */
    float mppt1_amp; /*< [A]  MPPT1 current  */
    uint16_t mppt1_pwm; /*< [us]  MPPT1 pwm  */
    uint8_t mppt1_status; /*<   MPPT1 status  */
    float mppt2_volt; /*< [V]  MPPT2 voltage  */
    float mppt2_amp; /*< [A]  MPPT2 current  */
    uint16_t mppt2_pwm; /*< [us]  MPPT2 pwm  */
    uint8_t mppt2_status; /*<   MPPT2 status  */
    float mppt3_volt; /*< [V] MPPT3 voltage  */
    float mppt3_amp; /*< [A]  MPPT3 current  */
    uint16_t mppt3_pwm; /*< [us]  MPPT3 pwm  */
    uint8_t mppt3_status; /*<   MPPT3 status  */


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
        ss << "  mppt_timestamp: " << mppt_timestamp << std::endl;
        ss << "  mppt1_volt: " << mppt1_volt << std::endl;
        ss << "  mppt1_amp: " << mppt1_amp << std::endl;
        ss << "  mppt1_pwm: " << mppt1_pwm << std::endl;
        ss << "  mppt1_status: " << +mppt1_status << std::endl;
        ss << "  mppt2_volt: " << mppt2_volt << std::endl;
        ss << "  mppt2_amp: " << mppt2_amp << std::endl;
        ss << "  mppt2_pwm: " << mppt2_pwm << std::endl;
        ss << "  mppt2_status: " << +mppt2_status << std::endl;
        ss << "  mppt3_volt: " << mppt3_volt << std::endl;
        ss << "  mppt3_amp: " << mppt3_amp << std::endl;
        ss << "  mppt3_pwm: " << mppt3_pwm << std::endl;
        ss << "  mppt3_status: " << +mppt3_status << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << mppt_timestamp;                // offset: 0
        map << mppt1_volt;                    // offset: 8
        map << mppt1_amp;                     // offset: 12
        map << mppt2_volt;                    // offset: 16
        map << mppt2_amp;                     // offset: 20
        map << mppt3_volt;                    // offset: 24
        map << mppt3_amp;                     // offset: 28
        map << mppt1_pwm;                     // offset: 32
        map << mppt2_pwm;                     // offset: 34
        map << mppt3_pwm;                     // offset: 36
        map << mppt1_status;                  // offset: 38
        map << mppt2_status;                  // offset: 39
        map << mppt3_status;                  // offset: 40
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> mppt_timestamp;                // offset: 0
        map >> mppt1_volt;                    // offset: 8
        map >> mppt1_amp;                     // offset: 12
        map >> mppt2_volt;                    // offset: 16
        map >> mppt2_amp;                     // offset: 20
        map >> mppt3_volt;                    // offset: 24
        map >> mppt3_amp;                     // offset: 28
        map >> mppt1_pwm;                     // offset: 32
        map >> mppt2_pwm;                     // offset: 34
        map >> mppt3_pwm;                     // offset: 36
        map >> mppt1_status;                  // offset: 38
        map >> mppt2_status;                  // offset: 39
        map >> mppt3_status;                  // offset: 40
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
