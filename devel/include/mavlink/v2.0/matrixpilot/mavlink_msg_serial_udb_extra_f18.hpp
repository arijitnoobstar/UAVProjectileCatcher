// MESSAGE SERIAL_UDB_EXTRA_F18 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F18 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F18 format
 */
struct SERIAL_UDB_EXTRA_F18 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 184;
    static constexpr size_t LENGTH = 20;
    static constexpr size_t MIN_LENGTH = 20;
    static constexpr uint8_t CRC_EXTRA = 41;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F18";


    float angle_of_attack_normal; /*<  SUE Angle of Attack Normal */
    float angle_of_attack_inverted; /*<  SUE Angle of Attack Inverted */
    float elevator_trim_normal; /*<  SUE Elevator Trim Normal */
    float elevator_trim_inverted; /*<  SUE Elevator Trim Inverted */
    float reference_speed; /*<  SUE reference_speed */


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
        ss << "  angle_of_attack_normal: " << angle_of_attack_normal << std::endl;
        ss << "  angle_of_attack_inverted: " << angle_of_attack_inverted << std::endl;
        ss << "  elevator_trim_normal: " << elevator_trim_normal << std::endl;
        ss << "  elevator_trim_inverted: " << elevator_trim_inverted << std::endl;
        ss << "  reference_speed: " << reference_speed << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << angle_of_attack_normal;        // offset: 0
        map << angle_of_attack_inverted;      // offset: 4
        map << elevator_trim_normal;          // offset: 8
        map << elevator_trim_inverted;        // offset: 12
        map << reference_speed;               // offset: 16
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> angle_of_attack_normal;        // offset: 0
        map >> angle_of_attack_inverted;      // offset: 4
        map >> elevator_trim_normal;          // offset: 8
        map >> elevator_trim_inverted;        // offset: 12
        map >> reference_speed;               // offset: 16
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
