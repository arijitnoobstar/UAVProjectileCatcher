// MESSAGE SENSORPOD_STATUS support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief SENSORPOD_STATUS message
 *
 * Monitoring of sensorpod status
 */
struct SENSORPOD_STATUS : mavlink::Message {
    static constexpr msgid_t MSG_ID = 211;
    static constexpr size_t LENGTH = 16;
    static constexpr size_t MIN_LENGTH = 16;
    static constexpr uint8_t CRC_EXTRA = 54;
    static constexpr auto NAME = "SENSORPOD_STATUS";


    uint64_t timestamp; /*< [ms] Timestamp in linuxtime (since 1.1.1970) */
    uint8_t visensor_rate_1; /*<  Rate of ROS topic 1 */
    uint8_t visensor_rate_2; /*<  Rate of ROS topic 2 */
    uint8_t visensor_rate_3; /*<  Rate of ROS topic 3 */
    uint8_t visensor_rate_4; /*<  Rate of ROS topic 4 */
    uint8_t recording_nodes_count; /*<  Number of recording nodes */
    uint8_t cpu_temp; /*< [degC] Temperature of sensorpod CPU in */
    uint16_t free_space; /*<  Free space available in recordings directory in [Gb] * 1e2 */


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
        ss << "  timestamp: " << timestamp << std::endl;
        ss << "  visensor_rate_1: " << +visensor_rate_1 << std::endl;
        ss << "  visensor_rate_2: " << +visensor_rate_2 << std::endl;
        ss << "  visensor_rate_3: " << +visensor_rate_3 << std::endl;
        ss << "  visensor_rate_4: " << +visensor_rate_4 << std::endl;
        ss << "  recording_nodes_count: " << +recording_nodes_count << std::endl;
        ss << "  cpu_temp: " << +cpu_temp << std::endl;
        ss << "  free_space: " << free_space << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << timestamp;                     // offset: 0
        map << free_space;                    // offset: 8
        map << visensor_rate_1;               // offset: 10
        map << visensor_rate_2;               // offset: 11
        map << visensor_rate_3;               // offset: 12
        map << visensor_rate_4;               // offset: 13
        map << recording_nodes_count;         // offset: 14
        map << cpu_temp;                      // offset: 15
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> timestamp;                     // offset: 0
        map >> free_space;                    // offset: 8
        map >> visensor_rate_1;               // offset: 10
        map >> visensor_rate_2;               // offset: 11
        map >> visensor_rate_3;               // offset: 12
        map >> visensor_rate_4;               // offset: 13
        map >> recording_nodes_count;         // offset: 14
        map >> cpu_temp;                      // offset: 15
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
