// MESSAGE FLEXIFUNCTION_READ_REQ support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief FLEXIFUNCTION_READ_REQ message
 *
 * Reqest reading of flexifunction data
 */
struct FLEXIFUNCTION_READ_REQ : mavlink::Message {
    static constexpr msgid_t MSG_ID = 151;
    static constexpr size_t LENGTH = 6;
    static constexpr size_t MIN_LENGTH = 6;
    static constexpr uint8_t CRC_EXTRA = 26;
    static constexpr auto NAME = "FLEXIFUNCTION_READ_REQ";


    uint8_t target_system; /*<  System ID */
    uint8_t target_component; /*<  Component ID */
    int16_t read_req_type; /*<  Type of flexifunction data requested */
    int16_t data_index; /*<  index into data where needed */


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
        ss << "  read_req_type: " << read_req_type << std::endl;
        ss << "  data_index: " << data_index << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << read_req_type;                 // offset: 0
        map << data_index;                    // offset: 2
        map << target_system;                 // offset: 4
        map << target_component;              // offset: 5
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> read_req_type;                 // offset: 0
        map >> data_index;                    // offset: 2
        map >> target_system;                 // offset: 4
        map >> target_component;              // offset: 5
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
