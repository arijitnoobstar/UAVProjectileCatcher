// MESSAGE SERIAL_UDB_EXTRA_F20 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F20 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F20 format
 */
struct SERIAL_UDB_EXTRA_F20 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 186;
    static constexpr size_t LENGTH = 25;
    static constexpr size_t MIN_LENGTH = 25;
    static constexpr uint8_t CRC_EXTRA = 144;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F20";


    uint8_t sue_number_of_inputs; /*<  SUE Number of Input Channels */
    int16_t sue_trim_value_input_1; /*<  SUE UDB PWM Trim Value on Input 1 */
    int16_t sue_trim_value_input_2; /*<  SUE UDB PWM Trim Value on Input 2 */
    int16_t sue_trim_value_input_3; /*<  SUE UDB PWM Trim Value on Input 3 */
    int16_t sue_trim_value_input_4; /*<  SUE UDB PWM Trim Value on Input 4 */
    int16_t sue_trim_value_input_5; /*<  SUE UDB PWM Trim Value on Input 5 */
    int16_t sue_trim_value_input_6; /*<  SUE UDB PWM Trim Value on Input 6 */
    int16_t sue_trim_value_input_7; /*<  SUE UDB PWM Trim Value on Input 7 */
    int16_t sue_trim_value_input_8; /*<  SUE UDB PWM Trim Value on Input 8 */
    int16_t sue_trim_value_input_9; /*<  SUE UDB PWM Trim Value on Input 9 */
    int16_t sue_trim_value_input_10; /*<  SUE UDB PWM Trim Value on Input 10 */
    int16_t sue_trim_value_input_11; /*<  SUE UDB PWM Trim Value on Input 11 */
    int16_t sue_trim_value_input_12; /*<  SUE UDB PWM Trim Value on Input 12 */


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
        ss << "  sue_number_of_inputs: " << +sue_number_of_inputs << std::endl;
        ss << "  sue_trim_value_input_1: " << sue_trim_value_input_1 << std::endl;
        ss << "  sue_trim_value_input_2: " << sue_trim_value_input_2 << std::endl;
        ss << "  sue_trim_value_input_3: " << sue_trim_value_input_3 << std::endl;
        ss << "  sue_trim_value_input_4: " << sue_trim_value_input_4 << std::endl;
        ss << "  sue_trim_value_input_5: " << sue_trim_value_input_5 << std::endl;
        ss << "  sue_trim_value_input_6: " << sue_trim_value_input_6 << std::endl;
        ss << "  sue_trim_value_input_7: " << sue_trim_value_input_7 << std::endl;
        ss << "  sue_trim_value_input_8: " << sue_trim_value_input_8 << std::endl;
        ss << "  sue_trim_value_input_9: " << sue_trim_value_input_9 << std::endl;
        ss << "  sue_trim_value_input_10: " << sue_trim_value_input_10 << std::endl;
        ss << "  sue_trim_value_input_11: " << sue_trim_value_input_11 << std::endl;
        ss << "  sue_trim_value_input_12: " << sue_trim_value_input_12 << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_trim_value_input_1;        // offset: 0
        map << sue_trim_value_input_2;        // offset: 2
        map << sue_trim_value_input_3;        // offset: 4
        map << sue_trim_value_input_4;        // offset: 6
        map << sue_trim_value_input_5;        // offset: 8
        map << sue_trim_value_input_6;        // offset: 10
        map << sue_trim_value_input_7;        // offset: 12
        map << sue_trim_value_input_8;        // offset: 14
        map << sue_trim_value_input_9;        // offset: 16
        map << sue_trim_value_input_10;       // offset: 18
        map << sue_trim_value_input_11;       // offset: 20
        map << sue_trim_value_input_12;       // offset: 22
        map << sue_number_of_inputs;          // offset: 24
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_trim_value_input_1;        // offset: 0
        map >> sue_trim_value_input_2;        // offset: 2
        map >> sue_trim_value_input_3;        // offset: 4
        map >> sue_trim_value_input_4;        // offset: 6
        map >> sue_trim_value_input_5;        // offset: 8
        map >> sue_trim_value_input_6;        // offset: 10
        map >> sue_trim_value_input_7;        // offset: 12
        map >> sue_trim_value_input_8;        // offset: 14
        map >> sue_trim_value_input_9;        // offset: 16
        map >> sue_trim_value_input_10;       // offset: 18
        map >> sue_trim_value_input_11;       // offset: 20
        map >> sue_trim_value_input_12;       // offset: 22
        map >> sue_number_of_inputs;          // offset: 24
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
