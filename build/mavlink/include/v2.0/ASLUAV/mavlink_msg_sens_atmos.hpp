// MESSAGE SENS_ATMOS support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief SENS_ATMOS message
 *
 * Atmospheric sensors (temperature, humidity, ...) 
 */
struct SENS_ATMOS : mavlink::Message {
    static constexpr msgid_t MSG_ID = 208;
    static constexpr size_t LENGTH = 16;
    static constexpr size_t MIN_LENGTH = 16;
    static constexpr uint8_t CRC_EXTRA = 144;
    static constexpr auto NAME = "SENS_ATMOS";


    uint64_t timestamp; /*< [us] Time since system boot */
    float TempAmbient; /*< [degC]  Ambient temperature */
    float Humidity; /*< [%]  Relative humidity */


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
        ss << "  TempAmbient: " << TempAmbient << std::endl;
        ss << "  Humidity: " << Humidity << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << timestamp;                     // offset: 0
        map << TempAmbient;                   // offset: 8
        map << Humidity;                      // offset: 12
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> timestamp;                     // offset: 0
        map >> TempAmbient;                   // offset: 8
        map >> Humidity;                      // offset: 12
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
