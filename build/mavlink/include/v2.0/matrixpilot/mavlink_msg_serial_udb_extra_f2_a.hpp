// MESSAGE SERIAL_UDB_EXTRA_F2_A support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F2_A message
 *
 * Backwards compatible MAVLink version of SERIAL_UDB_EXTRA - F2: Format Part A
 */
struct SERIAL_UDB_EXTRA_F2_A : mavlink::Message {
    static constexpr msgid_t MSG_ID = 170;
    static constexpr size_t LENGTH = 61;
    static constexpr size_t MIN_LENGTH = 61;
    static constexpr uint8_t CRC_EXTRA = 103;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F2_A";


    uint32_t sue_time; /*<  Serial UDB Extra Time */
    uint8_t sue_status; /*<  Serial UDB Extra Status */
    int32_t sue_latitude; /*<  Serial UDB Extra Latitude */
    int32_t sue_longitude; /*<  Serial UDB Extra Longitude */
    int32_t sue_altitude; /*<  Serial UDB Extra Altitude */
    uint16_t sue_waypoint_index; /*<  Serial UDB Extra Waypoint Index */
    int16_t sue_rmat0; /*<  Serial UDB Extra Rmat 0 */
    int16_t sue_rmat1; /*<  Serial UDB Extra Rmat 1 */
    int16_t sue_rmat2; /*<  Serial UDB Extra Rmat 2 */
    int16_t sue_rmat3; /*<  Serial UDB Extra Rmat 3 */
    int16_t sue_rmat4; /*<  Serial UDB Extra Rmat 4 */
    int16_t sue_rmat5; /*<  Serial UDB Extra Rmat 5 */
    int16_t sue_rmat6; /*<  Serial UDB Extra Rmat 6 */
    int16_t sue_rmat7; /*<  Serial UDB Extra Rmat 7 */
    int16_t sue_rmat8; /*<  Serial UDB Extra Rmat 8 */
    uint16_t sue_cog; /*<  Serial UDB Extra GPS Course Over Ground */
    int16_t sue_sog; /*<  Serial UDB Extra Speed Over Ground */
    uint16_t sue_cpu_load; /*<  Serial UDB Extra CPU Load */
    uint16_t sue_air_speed_3DIMU; /*<  Serial UDB Extra 3D IMU Air Speed */
    int16_t sue_estimated_wind_0; /*<  Serial UDB Extra Estimated Wind 0 */
    int16_t sue_estimated_wind_1; /*<  Serial UDB Extra Estimated Wind 1 */
    int16_t sue_estimated_wind_2; /*<  Serial UDB Extra Estimated Wind 2 */
    int16_t sue_magFieldEarth0; /*<  Serial UDB Extra Magnetic Field Earth 0  */
    int16_t sue_magFieldEarth1; /*<  Serial UDB Extra Magnetic Field Earth 1  */
    int16_t sue_magFieldEarth2; /*<  Serial UDB Extra Magnetic Field Earth 2  */
    int16_t sue_svs; /*<  Serial UDB Extra Number of Sattelites in View */
    int16_t sue_hdop; /*<  Serial UDB Extra GPS Horizontal Dilution of Precision */


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
        ss << "  sue_time: " << sue_time << std::endl;
        ss << "  sue_status: " << +sue_status << std::endl;
        ss << "  sue_latitude: " << sue_latitude << std::endl;
        ss << "  sue_longitude: " << sue_longitude << std::endl;
        ss << "  sue_altitude: " << sue_altitude << std::endl;
        ss << "  sue_waypoint_index: " << sue_waypoint_index << std::endl;
        ss << "  sue_rmat0: " << sue_rmat0 << std::endl;
        ss << "  sue_rmat1: " << sue_rmat1 << std::endl;
        ss << "  sue_rmat2: " << sue_rmat2 << std::endl;
        ss << "  sue_rmat3: " << sue_rmat3 << std::endl;
        ss << "  sue_rmat4: " << sue_rmat4 << std::endl;
        ss << "  sue_rmat5: " << sue_rmat5 << std::endl;
        ss << "  sue_rmat6: " << sue_rmat6 << std::endl;
        ss << "  sue_rmat7: " << sue_rmat7 << std::endl;
        ss << "  sue_rmat8: " << sue_rmat8 << std::endl;
        ss << "  sue_cog: " << sue_cog << std::endl;
        ss << "  sue_sog: " << sue_sog << std::endl;
        ss << "  sue_cpu_load: " << sue_cpu_load << std::endl;
        ss << "  sue_air_speed_3DIMU: " << sue_air_speed_3DIMU << std::endl;
        ss << "  sue_estimated_wind_0: " << sue_estimated_wind_0 << std::endl;
        ss << "  sue_estimated_wind_1: " << sue_estimated_wind_1 << std::endl;
        ss << "  sue_estimated_wind_2: " << sue_estimated_wind_2 << std::endl;
        ss << "  sue_magFieldEarth0: " << sue_magFieldEarth0 << std::endl;
        ss << "  sue_magFieldEarth1: " << sue_magFieldEarth1 << std::endl;
        ss << "  sue_magFieldEarth2: " << sue_magFieldEarth2 << std::endl;
        ss << "  sue_svs: " << sue_svs << std::endl;
        ss << "  sue_hdop: " << sue_hdop << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_time;                      // offset: 0
        map << sue_latitude;                  // offset: 4
        map << sue_longitude;                 // offset: 8
        map << sue_altitude;                  // offset: 12
        map << sue_waypoint_index;            // offset: 16
        map << sue_rmat0;                     // offset: 18
        map << sue_rmat1;                     // offset: 20
        map << sue_rmat2;                     // offset: 22
        map << sue_rmat3;                     // offset: 24
        map << sue_rmat4;                     // offset: 26
        map << sue_rmat5;                     // offset: 28
        map << sue_rmat6;                     // offset: 30
        map << sue_rmat7;                     // offset: 32
        map << sue_rmat8;                     // offset: 34
        map << sue_cog;                       // offset: 36
        map << sue_sog;                       // offset: 38
        map << sue_cpu_load;                  // offset: 40
        map << sue_air_speed_3DIMU;           // offset: 42
        map << sue_estimated_wind_0;          // offset: 44
        map << sue_estimated_wind_1;          // offset: 46
        map << sue_estimated_wind_2;          // offset: 48
        map << sue_magFieldEarth0;            // offset: 50
        map << sue_magFieldEarth1;            // offset: 52
        map << sue_magFieldEarth2;            // offset: 54
        map << sue_svs;                       // offset: 56
        map << sue_hdop;                      // offset: 58
        map << sue_status;                    // offset: 60
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_time;                      // offset: 0
        map >> sue_latitude;                  // offset: 4
        map >> sue_longitude;                 // offset: 8
        map >> sue_altitude;                  // offset: 12
        map >> sue_waypoint_index;            // offset: 16
        map >> sue_rmat0;                     // offset: 18
        map >> sue_rmat1;                     // offset: 20
        map >> sue_rmat2;                     // offset: 22
        map >> sue_rmat3;                     // offset: 24
        map >> sue_rmat4;                     // offset: 26
        map >> sue_rmat5;                     // offset: 28
        map >> sue_rmat6;                     // offset: 30
        map >> sue_rmat7;                     // offset: 32
        map >> sue_rmat8;                     // offset: 34
        map >> sue_cog;                       // offset: 36
        map >> sue_sog;                       // offset: 38
        map >> sue_cpu_load;                  // offset: 40
        map >> sue_air_speed_3DIMU;           // offset: 42
        map >> sue_estimated_wind_0;          // offset: 44
        map >> sue_estimated_wind_1;          // offset: 46
        map >> sue_estimated_wind_2;          // offset: 48
        map >> sue_magFieldEarth0;            // offset: 50
        map >> sue_magFieldEarth1;            // offset: 52
        map >> sue_magFieldEarth2;            // offset: 54
        map >> sue_svs;                       // offset: 56
        map >> sue_hdop;                      // offset: 58
        map >> sue_status;                    // offset: 60
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
