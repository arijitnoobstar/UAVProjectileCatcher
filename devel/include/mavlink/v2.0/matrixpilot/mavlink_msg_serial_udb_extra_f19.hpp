// MESSAGE SERIAL_UDB_EXTRA_F19 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F19 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F19 format
 */
struct SERIAL_UDB_EXTRA_F19 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 185;
    static constexpr size_t LENGTH = 8;
    static constexpr size_t MIN_LENGTH = 8;
    static constexpr uint8_t CRC_EXTRA = 87;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F19";


    uint8_t sue_aileron_output_channel; /*<  SUE aileron output channel */
    uint8_t sue_aileron_reversed; /*<  SUE aileron reversed */
    uint8_t sue_elevator_output_channel; /*<  SUE elevator output channel */
    uint8_t sue_elevator_reversed; /*<  SUE elevator reversed */
    uint8_t sue_throttle_output_channel; /*<  SUE throttle output channel */
    uint8_t sue_throttle_reversed; /*<  SUE throttle reversed */
    uint8_t sue_rudder_output_channel; /*<  SUE rudder output channel */
    uint8_t sue_rudder_reversed; /*<  SUE rudder reversed */


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
        ss << "  sue_aileron_output_channel: " << +sue_aileron_output_channel << std::endl;
        ss << "  sue_aileron_reversed: " << +sue_aileron_reversed << std::endl;
        ss << "  sue_elevator_output_channel: " << +sue_elevator_output_channel << std::endl;
        ss << "  sue_elevator_reversed: " << +sue_elevator_reversed << std::endl;
        ss << "  sue_throttle_output_channel: " << +sue_throttle_output_channel << std::endl;
        ss << "  sue_throttle_reversed: " << +sue_throttle_reversed << std::endl;
        ss << "  sue_rudder_output_channel: " << +sue_rudder_output_channel << std::endl;
        ss << "  sue_rudder_reversed: " << +sue_rudder_reversed << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_aileron_output_channel;    // offset: 0
        map << sue_aileron_reversed;          // offset: 1
        map << sue_elevator_output_channel;   // offset: 2
        map << sue_elevator_reversed;         // offset: 3
        map << sue_throttle_output_channel;   // offset: 4
        map << sue_throttle_reversed;         // offset: 5
        map << sue_rudder_output_channel;     // offset: 6
        map << sue_rudder_reversed;           // offset: 7
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_aileron_output_channel;    // offset: 0
        map >> sue_aileron_reversed;          // offset: 1
        map >> sue_elevator_output_channel;   // offset: 2
        map >> sue_elevator_reversed;         // offset: 3
        map >> sue_throttle_output_channel;   // offset: 4
        map >> sue_throttle_reversed;         // offset: 5
        map >> sue_rudder_output_channel;     // offset: 6
        map >> sue_rudder_reversed;           // offset: 7
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
