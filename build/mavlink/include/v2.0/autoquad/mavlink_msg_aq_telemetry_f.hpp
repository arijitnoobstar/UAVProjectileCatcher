// MESSAGE AQ_TELEMETRY_F support class

#pragma once

namespace mavlink {
namespace autoquad {
namespace msg {

/**
 * @brief AQ_TELEMETRY_F message
 *
 * Sends up to 20 raw float values.
 */
struct AQ_TELEMETRY_F : mavlink::Message {
    static constexpr msgid_t MSG_ID = 150;
    static constexpr size_t LENGTH = 82;
    static constexpr size_t MIN_LENGTH = 82;
    static constexpr uint8_t CRC_EXTRA = 241;
    static constexpr auto NAME = "AQ_TELEMETRY_F";


    uint16_t Index; /*<  Index of message */
    float value1; /*<  value1 */
    float value2; /*<  value2 */
    float value3; /*<  value3 */
    float value4; /*<  value4 */
    float value5; /*<  value5 */
    float value6; /*<  value6 */
    float value7; /*<  value7 */
    float value8; /*<  value8 */
    float value9; /*<  value9 */
    float value10; /*<  value10 */
    float value11; /*<  value11 */
    float value12; /*<  value12 */
    float value13; /*<  value13 */
    float value14; /*<  value14 */
    float value15; /*<  value15 */
    float value16; /*<  value16 */
    float value17; /*<  value17 */
    float value18; /*<  value18 */
    float value19; /*<  value19 */
    float value20; /*<  value20 */


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
        ss << "  Index: " << Index << std::endl;
        ss << "  value1: " << value1 << std::endl;
        ss << "  value2: " << value2 << std::endl;
        ss << "  value3: " << value3 << std::endl;
        ss << "  value4: " << value4 << std::endl;
        ss << "  value5: " << value5 << std::endl;
        ss << "  value6: " << value6 << std::endl;
        ss << "  value7: " << value7 << std::endl;
        ss << "  value8: " << value8 << std::endl;
        ss << "  value9: " << value9 << std::endl;
        ss << "  value10: " << value10 << std::endl;
        ss << "  value11: " << value11 << std::endl;
        ss << "  value12: " << value12 << std::endl;
        ss << "  value13: " << value13 << std::endl;
        ss << "  value14: " << value14 << std::endl;
        ss << "  value15: " << value15 << std::endl;
        ss << "  value16: " << value16 << std::endl;
        ss << "  value17: " << value17 << std::endl;
        ss << "  value18: " << value18 << std::endl;
        ss << "  value19: " << value19 << std::endl;
        ss << "  value20: " << value20 << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << value1;                        // offset: 0
        map << value2;                        // offset: 4
        map << value3;                        // offset: 8
        map << value4;                        // offset: 12
        map << value5;                        // offset: 16
        map << value6;                        // offset: 20
        map << value7;                        // offset: 24
        map << value8;                        // offset: 28
        map << value9;                        // offset: 32
        map << value10;                       // offset: 36
        map << value11;                       // offset: 40
        map << value12;                       // offset: 44
        map << value13;                       // offset: 48
        map << value14;                       // offset: 52
        map << value15;                       // offset: 56
        map << value16;                       // offset: 60
        map << value17;                       // offset: 64
        map << value18;                       // offset: 68
        map << value19;                       // offset: 72
        map << value20;                       // offset: 76
        map << Index;                         // offset: 80
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> value1;                        // offset: 0
        map >> value2;                        // offset: 4
        map >> value3;                        // offset: 8
        map >> value4;                        // offset: 12
        map >> value5;                        // offset: 16
        map >> value6;                        // offset: 20
        map >> value7;                        // offset: 24
        map >> value8;                        // offset: 28
        map >> value9;                        // offset: 32
        map >> value10;                       // offset: 36
        map >> value11;                       // offset: 40
        map >> value12;                       // offset: 44
        map >> value13;                       // offset: 48
        map >> value14;                       // offset: 52
        map >> value15;                       // offset: 56
        map >> value16;                       // offset: 60
        map >> value17;                       // offset: 64
        map >> value18;                       // offset: 68
        map >> value19;                       // offset: 72
        map >> value20;                       // offset: 76
        map >> Index;                         // offset: 80
    }
};

} // namespace msg
} // namespace autoquad
} // namespace mavlink
