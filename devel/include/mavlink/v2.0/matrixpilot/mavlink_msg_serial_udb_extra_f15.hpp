// MESSAGE SERIAL_UDB_EXTRA_F15 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F15 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F15 format
 */
struct SERIAL_UDB_EXTRA_F15 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 179;
    static constexpr size_t LENGTH = 60;
    static constexpr size_t MIN_LENGTH = 60;
    static constexpr uint8_t CRC_EXTRA = 7;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F15";


    std::array<uint8_t, 40> sue_ID_VEHICLE_MODEL_NAME; /*<  Serial UDB Extra Model Name Of Vehicle */
    std::array<uint8_t, 20> sue_ID_VEHICLE_REGISTRATION; /*<  Serial UDB Extra Registraton Number of Vehicle */


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
        ss << "  sue_ID_VEHICLE_MODEL_NAME: [" << to_string(sue_ID_VEHICLE_MODEL_NAME) << "]" << std::endl;
        ss << "  sue_ID_VEHICLE_REGISTRATION: [" << to_string(sue_ID_VEHICLE_REGISTRATION) << "]" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_ID_VEHICLE_MODEL_NAME;     // offset: 0
        map << sue_ID_VEHICLE_REGISTRATION;   // offset: 40
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_ID_VEHICLE_MODEL_NAME;     // offset: 0
        map >> sue_ID_VEHICLE_REGISTRATION;   // offset: 40
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
