// MESSAGE SERIAL_UDB_EXTRA_F16 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F16 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F16 format
 */
struct SERIAL_UDB_EXTRA_F16 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 180;
    static constexpr size_t LENGTH = 110;
    static constexpr size_t MIN_LENGTH = 110;
    static constexpr uint8_t CRC_EXTRA = 222;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F16";


    std::array<uint8_t, 40> sue_ID_LEAD_PILOT; /*<  Serial UDB Extra Name of Expected Lead Pilot */
    std::array<uint8_t, 70> sue_ID_DIY_DRONES_URL; /*<  Serial UDB Extra URL of Lead Pilot or Team */


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
        ss << "  sue_ID_LEAD_PILOT: [" << to_string(sue_ID_LEAD_PILOT) << "]" << std::endl;
        ss << "  sue_ID_DIY_DRONES_URL: [" << to_string(sue_ID_DIY_DRONES_URL) << "]" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_ID_LEAD_PILOT;             // offset: 0
        map << sue_ID_DIY_DRONES_URL;         // offset: 40
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_ID_LEAD_PILOT;             // offset: 0
        map >> sue_ID_DIY_DRONES_URL;         // offset: 40
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
