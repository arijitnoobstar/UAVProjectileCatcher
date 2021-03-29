// MESSAGE FLEXIFUNCTION_BUFFER_FUNCTION_ACK support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief FLEXIFUNCTION_BUFFER_FUNCTION_ACK message
 *
 * Flexifunction type and parameters for component at function index from buffer
 */
struct FLEXIFUNCTION_BUFFER_FUNCTION_ACK : mavlink::Message {
    static constexpr msgid_t MSG_ID = 153;
    static constexpr size_t LENGTH = 6;
    static constexpr size_t MIN_LENGTH = 6;
    static constexpr uint8_t CRC_EXTRA = 109;
    static constexpr auto NAME = "FLEXIFUNCTION_BUFFER_FUNCTION_ACK";


    uint8_t target_system; /*<  System ID */
    uint8_t target_component; /*<  Component ID */
    uint16_t func_index; /*<  Function index */
    uint16_t result; /*<  result of acknowledge, 0=fail, 1=good */


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
        ss << "  target_system: " << +target_system << std::endl;
        ss << "  target_component: " << +target_component << std::endl;
        ss << "  func_index: " << func_index << std::endl;
        ss << "  result: " << result << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << func_index;                    // offset: 0
        map << result;                        // offset: 2
        map << target_system;                 // offset: 4
        map << target_component;              // offset: 5
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> func_index;                    // offset: 0
        map >> result;                        // offset: 2
        map >> target_system;                 // offset: 4
        map >> target_component;              // offset: 5
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
