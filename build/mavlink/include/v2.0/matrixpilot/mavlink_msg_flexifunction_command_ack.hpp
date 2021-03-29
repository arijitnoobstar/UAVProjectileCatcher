// MESSAGE FLEXIFUNCTION_COMMAND_ACK support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief FLEXIFUNCTION_COMMAND_ACK message
 *
 * Acknowldge sucess or failure of a flexifunction command
 */
struct FLEXIFUNCTION_COMMAND_ACK : mavlink::Message {
    static constexpr msgid_t MSG_ID = 158;
    static constexpr size_t LENGTH = 4;
    static constexpr size_t MIN_LENGTH = 4;
    static constexpr uint8_t CRC_EXTRA = 208;
    static constexpr auto NAME = "FLEXIFUNCTION_COMMAND_ACK";


    uint16_t command_type; /*<  Command acknowledged */
    uint16_t result; /*<  result of acknowledge */


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
        ss << "  command_type: " << command_type << std::endl;
        ss << "  result: " << result << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << command_type;                  // offset: 0
        map << result;                        // offset: 2
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> command_type;                  // offset: 0
        map >> result;                        // offset: 2
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
