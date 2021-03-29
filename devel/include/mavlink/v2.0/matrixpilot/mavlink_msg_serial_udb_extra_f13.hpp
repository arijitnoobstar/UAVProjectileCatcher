// MESSAGE SERIAL_UDB_EXTRA_F13 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F13 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F13: format
 */
struct SERIAL_UDB_EXTRA_F13 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 177;
    static constexpr size_t LENGTH = 14;
    static constexpr size_t MIN_LENGTH = 14;
    static constexpr uint8_t CRC_EXTRA = 249;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F13";


    int16_t sue_week_no; /*<  Serial UDB Extra GPS Week Number */
    int32_t sue_lat_origin; /*<  Serial UDB Extra MP Origin Latitude */
    int32_t sue_lon_origin; /*<  Serial UDB Extra MP Origin Longitude */
    int32_t sue_alt_origin; /*<  Serial UDB Extra MP Origin Altitude Above Sea Level */


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
        ss << "  sue_week_no: " << sue_week_no << std::endl;
        ss << "  sue_lat_origin: " << sue_lat_origin << std::endl;
        ss << "  sue_lon_origin: " << sue_lon_origin << std::endl;
        ss << "  sue_alt_origin: " << sue_alt_origin << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_lat_origin;                // offset: 0
        map << sue_lon_origin;                // offset: 4
        map << sue_alt_origin;                // offset: 8
        map << sue_week_no;                   // offset: 12
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_lat_origin;                // offset: 0
        map >> sue_lon_origin;                // offset: 4
        map >> sue_alt_origin;                // offset: 8
        map >> sue_week_no;                   // offset: 12
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
