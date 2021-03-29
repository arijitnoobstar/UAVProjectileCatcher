// MESSAGE ASLCTRL_DEBUG support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief ASLCTRL_DEBUG message
 *
 * ASL-fixed-wing controller debug data
 */
struct ASLCTRL_DEBUG : mavlink::Message {
    static constexpr msgid_t MSG_ID = 204;
    static constexpr size_t LENGTH = 38;
    static constexpr size_t MIN_LENGTH = 38;
    static constexpr uint8_t CRC_EXTRA = 251;
    static constexpr auto NAME = "ASLCTRL_DEBUG";


    uint32_t i32_1; /*<   Debug data */
    uint8_t i8_1; /*<   Debug data */
    uint8_t i8_2; /*<   Debug data */
    float f_1; /*<   Debug data  */
    float f_2; /*<   Debug data */
    float f_3; /*<   Debug data */
    float f_4; /*<   Debug data */
    float f_5; /*<   Debug data */
    float f_6; /*<   Debug data */
    float f_7; /*<   Debug data */
    float f_8; /*<   Debug data */


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
        ss << "  i32_1: " << i32_1 << std::endl;
        ss << "  i8_1: " << +i8_1 << std::endl;
        ss << "  i8_2: " << +i8_2 << std::endl;
        ss << "  f_1: " << f_1 << std::endl;
        ss << "  f_2: " << f_2 << std::endl;
        ss << "  f_3: " << f_3 << std::endl;
        ss << "  f_4: " << f_4 << std::endl;
        ss << "  f_5: " << f_5 << std::endl;
        ss << "  f_6: " << f_6 << std::endl;
        ss << "  f_7: " << f_7 << std::endl;
        ss << "  f_8: " << f_8 << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << i32_1;                         // offset: 0
        map << f_1;                           // offset: 4
        map << f_2;                           // offset: 8
        map << f_3;                           // offset: 12
        map << f_4;                           // offset: 16
        map << f_5;                           // offset: 20
        map << f_6;                           // offset: 24
        map << f_7;                           // offset: 28
        map << f_8;                           // offset: 32
        map << i8_1;                          // offset: 36
        map << i8_2;                          // offset: 37
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> i32_1;                         // offset: 0
        map >> f_1;                           // offset: 4
        map >> f_2;                           // offset: 8
        map >> f_3;                           // offset: 12
        map >> f_4;                           // offset: 16
        map >> f_5;                           // offset: 20
        map >> f_6;                           // offset: 24
        map >> f_7;                           // offset: 28
        map >> f_8;                           // offset: 32
        map >> i8_1;                          // offset: 36
        map >> i8_2;                          // offset: 37
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
