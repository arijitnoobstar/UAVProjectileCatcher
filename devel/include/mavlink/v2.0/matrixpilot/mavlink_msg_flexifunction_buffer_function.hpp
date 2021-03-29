// MESSAGE FLEXIFUNCTION_BUFFER_FUNCTION support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief FLEXIFUNCTION_BUFFER_FUNCTION message
 *
 * Flexifunction type and parameters for component at function index from buffer
 */
struct FLEXIFUNCTION_BUFFER_FUNCTION : mavlink::Message {
    static constexpr msgid_t MSG_ID = 152;
    static constexpr size_t LENGTH = 58;
    static constexpr size_t MIN_LENGTH = 58;
    static constexpr uint8_t CRC_EXTRA = 101;
    static constexpr auto NAME = "FLEXIFUNCTION_BUFFER_FUNCTION";


    uint8_t target_system; /*<  System ID */
    uint8_t target_component; /*<  Component ID */
    uint16_t func_index; /*<  Function index */
    uint16_t func_count; /*<  Total count of functions */
    uint16_t data_address; /*<  Address in the flexifunction data, Set to 0xFFFF to use address in target memory */
    uint16_t data_size; /*<  Size of the  */
    std::array<int8_t, 48> data; /*<  Settings data */


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
        ss << "  func_count: " << func_count << std::endl;
        ss << "  data_address: " << data_address << std::endl;
        ss << "  data_size: " << data_size << std::endl;
        ss << "  data: [" << to_string(data) << "]" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << func_index;                    // offset: 0
        map << func_count;                    // offset: 2
        map << data_address;                  // offset: 4
        map << data_size;                     // offset: 6
        map << target_system;                 // offset: 8
        map << target_component;              // offset: 9
        map << data;                          // offset: 10
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> func_index;                    // offset: 0
        map >> func_count;                    // offset: 2
        map >> data_address;                  // offset: 4
        map >> data_size;                     // offset: 6
        map >> target_system;                 // offset: 8
        map >> target_component;              // offset: 9
        map >> data;                          // offset: 10
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
