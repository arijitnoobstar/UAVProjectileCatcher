// MESSAGE EKF_EXT support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief EKF_EXT message
 *
 * Extended EKF state estimates for ASLUAVs
 */
struct EKF_EXT : mavlink::Message {
    static constexpr msgid_t MSG_ID = 206;
    static constexpr size_t LENGTH = 32;
    static constexpr size_t MIN_LENGTH = 32;
    static constexpr uint8_t CRC_EXTRA = 64;
    static constexpr auto NAME = "EKF_EXT";


    uint64_t timestamp; /*< [us]  Time since system start */
    float Windspeed; /*< [m/s]  Magnitude of wind velocity (in lateral inertial plane) */
    float WindDir; /*< [rad]  Wind heading angle from North */
    float WindZ; /*< [m/s]  Z (Down) component of inertial wind velocity */
    float Airspeed; /*< [m/s]  Magnitude of air velocity */
    float beta; /*< [rad]  Sideslip angle */
    float alpha; /*< [rad]  Angle of attack */


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
        ss << "  Windspeed: " << Windspeed << std::endl;
        ss << "  WindDir: " << WindDir << std::endl;
        ss << "  WindZ: " << WindZ << std::endl;
        ss << "  Airspeed: " << Airspeed << std::endl;
        ss << "  beta: " << beta << std::endl;
        ss << "  alpha: " << alpha << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << timestamp;                     // offset: 0
        map << Windspeed;                     // offset: 8
        map << WindDir;                       // offset: 12
        map << WindZ;                         // offset: 16
        map << Airspeed;                      // offset: 20
        map << beta;                          // offset: 24
        map << alpha;                         // offset: 28
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> timestamp;                     // offset: 0
        map >> Windspeed;                     // offset: 8
        map >> WindDir;                       // offset: 12
        map >> WindZ;                         // offset: 16
        map >> Airspeed;                      // offset: 20
        map >> beta;                          // offset: 24
        map >> alpha;                         // offset: 28
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
