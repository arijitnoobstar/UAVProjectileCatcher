// MESSAGE AQ_ESC_TELEMETRY support class

#pragma once

namespace mavlink {
namespace autoquad {
namespace msg {

/**
 * @brief AQ_ESC_TELEMETRY message
 *
 * Sends ESC32 telemetry data for up to 4 motors. Multiple messages may be sent in sequence when system has > 4 motors. Data is described as follows: 
				// unsigned int state :   3;
			    // unsigned int vin :	  12;  // x 100
			    // unsigned int amps :	  14;  // x 100
			    // unsigned int rpm :	  15;
			    // unsigned int duty :	  8;   // x (255/100)
			    // - Data Version 2 -
			    //     unsigned int errors :    9;   // Bad detects error count
			    // - Data Version 3 -
			    //     unsigned int temp   :    9;   // (Deg C + 32) * 4
			    // unsigned int errCode : 3;
			
 */
struct AQ_ESC_TELEMETRY : mavlink::Message {
    static constexpr msgid_t MSG_ID = 152;
    static constexpr size_t LENGTH = 55;
    static constexpr size_t MIN_LENGTH = 55;
    static constexpr uint8_t CRC_EXTRA = 115;
    static constexpr auto NAME = "AQ_ESC_TELEMETRY";


    uint32_t time_boot_ms; /*<  Timestamp of the component clock since boot time in ms. */
    uint8_t seq; /*<  Sequence number of message (first set of 4 motors is #1, next 4 is #2, etc). */
    uint8_t num_motors; /*<  Total number of active ESCs/motors on the system. */
    uint8_t num_in_seq; /*<  Number of active ESCs in this sequence (1 through this many array members will be populated with data) */
    std::array<uint8_t, 4> escid; /*<  ESC/Motor ID */
    std::array<uint16_t, 4> status_age; /*<  Age of each ESC telemetry reading in ms compared to boot time. A value of 0xFFFF means timeout/no data. */
    std::array<uint8_t, 4> data_version; /*<  Version of data structure (determines contents). */
    std::array<uint32_t, 4> data0; /*<  Data bits 1-32 for each ESC. */
    std::array<uint32_t, 4> data1; /*<  Data bits 33-64 for each ESC. */


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
        ss << "  time_boot_ms: " << time_boot_ms << std::endl;
        ss << "  seq: " << +seq << std::endl;
        ss << "  num_motors: " << +num_motors << std::endl;
        ss << "  num_in_seq: " << +num_in_seq << std::endl;
        ss << "  escid: [" << to_string(escid) << "]" << std::endl;
        ss << "  status_age: [" << to_string(status_age) << "]" << std::endl;
        ss << "  data_version: [" << to_string(data_version) << "]" << std::endl;
        ss << "  data0: [" << to_string(data0) << "]" << std::endl;
        ss << "  data1: [" << to_string(data1) << "]" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << time_boot_ms;                  // offset: 0
        map << data0;                         // offset: 4
        map << data1;                         // offset: 20
        map << status_age;                    // offset: 36
        map << seq;                           // offset: 44
        map << num_motors;                    // offset: 45
        map << num_in_seq;                    // offset: 46
        map << escid;                         // offset: 47
        map << data_version;                  // offset: 51
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> time_boot_ms;                  // offset: 0
        map >> data0;                         // offset: 4
        map >> data1;                         // offset: 20
        map >> status_age;                    // offset: 36
        map >> seq;                           // offset: 44
        map >> num_motors;                    // offset: 45
        map >> num_in_seq;                    // offset: 46
        map >> escid;                         // offset: 47
        map >> data_version;                  // offset: 51
    }
};

} // namespace msg
} // namespace autoquad
} // namespace mavlink
