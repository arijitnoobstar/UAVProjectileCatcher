// MESSAGE SENS_BATMON support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief SENS_BATMON message
 *
 * Battery pack monitoring data for Li-Ion batteries
 */
struct SENS_BATMON : mavlink::Message {
    static constexpr msgid_t MSG_ID = 209;
    static constexpr size_t LENGTH = 41;
    static constexpr size_t MIN_LENGTH = 41;
    static constexpr uint8_t CRC_EXTRA = 155;
    static constexpr auto NAME = "SENS_BATMON";


    uint64_t batmon_timestamp; /*< [us] Time since system start */
    float temperature; /*< [degC] Battery pack temperature */
    uint16_t voltage; /*< [mV] Battery pack voltage */
    int16_t current; /*< [mA] Battery pack current */
    uint8_t SoC; /*<  Battery pack state-of-charge */
    uint16_t batterystatus; /*<  Battery monitor status report bits in Hex */
    uint16_t serialnumber; /*<  Battery monitor serial number in Hex */
    uint32_t safetystatus; /*<  Battery monitor safetystatus report bits in Hex */
    uint32_t operationstatus; /*<  Battery monitor operation status report bits in Hex */
    uint16_t cellvoltage1; /*< [mV] Battery pack cell 1 voltage */
    uint16_t cellvoltage2; /*< [mV] Battery pack cell 2 voltage */
    uint16_t cellvoltage3; /*< [mV] Battery pack cell 3 voltage */
    uint16_t cellvoltage4; /*< [mV] Battery pack cell 4 voltage */
    uint16_t cellvoltage5; /*< [mV] Battery pack cell 5 voltage */
    uint16_t cellvoltage6; /*< [mV] Battery pack cell 6 voltage */


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
        ss << "  batmon_timestamp: " << batmon_timestamp << std::endl;
        ss << "  temperature: " << temperature << std::endl;
        ss << "  voltage: " << voltage << std::endl;
        ss << "  current: " << current << std::endl;
        ss << "  SoC: " << +SoC << std::endl;
        ss << "  batterystatus: " << batterystatus << std::endl;
        ss << "  serialnumber: " << serialnumber << std::endl;
        ss << "  safetystatus: " << safetystatus << std::endl;
        ss << "  operationstatus: " << operationstatus << std::endl;
        ss << "  cellvoltage1: " << cellvoltage1 << std::endl;
        ss << "  cellvoltage2: " << cellvoltage2 << std::endl;
        ss << "  cellvoltage3: " << cellvoltage3 << std::endl;
        ss << "  cellvoltage4: " << cellvoltage4 << std::endl;
        ss << "  cellvoltage5: " << cellvoltage5 << std::endl;
        ss << "  cellvoltage6: " << cellvoltage6 << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << batmon_timestamp;              // offset: 0
        map << temperature;                   // offset: 8
        map << safetystatus;                  // offset: 12
        map << operationstatus;               // offset: 16
        map << voltage;                       // offset: 20
        map << current;                       // offset: 22
        map << batterystatus;                 // offset: 24
        map << serialnumber;                  // offset: 26
        map << cellvoltage1;                  // offset: 28
        map << cellvoltage2;                  // offset: 30
        map << cellvoltage3;                  // offset: 32
        map << cellvoltage4;                  // offset: 34
        map << cellvoltage5;                  // offset: 36
        map << cellvoltage6;                  // offset: 38
        map << SoC;                           // offset: 40
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> batmon_timestamp;              // offset: 0
        map >> temperature;                   // offset: 8
        map >> safetystatus;                  // offset: 12
        map >> operationstatus;               // offset: 16
        map >> voltage;                       // offset: 20
        map >> current;                       // offset: 22
        map >> batterystatus;                 // offset: 24
        map >> serialnumber;                  // offset: 26
        map >> cellvoltage1;                  // offset: 28
        map >> cellvoltage2;                  // offset: 30
        map >> cellvoltage3;                  // offset: 32
        map >> cellvoltage4;                  // offset: 34
        map >> cellvoltage5;                  // offset: 36
        map >> cellvoltage6;                  // offset: 38
        map >> SoC;                           // offset: 40
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
