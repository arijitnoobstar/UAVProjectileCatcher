// MESSAGE FW_SOARING_DATA support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief FW_SOARING_DATA message
 *
 * Fixed-wing soaring (i.e. thermal seeking) data
 */
struct FW_SOARING_DATA : mavlink::Message {
    static constexpr msgid_t MSG_ID = 210;
    static constexpr size_t LENGTH = 102;
    static constexpr size_t MIN_LENGTH = 102;
    static constexpr uint8_t CRC_EXTRA = 20;
    static constexpr auto NAME = "FW_SOARING_DATA";


    uint64_t timestamp; /*< [ms] Timestamp */
    uint64_t timestampModeChanged; /*< [ms] Timestamp since last mode change */
    float xW; /*< [m/s] Thermal core updraft strength */
    float xR; /*< [m] Thermal radius */
    float xLat; /*< [deg] Thermal center latitude */
    float xLon; /*< [deg] Thermal center longitude */
    float VarW; /*<  Variance W */
    float VarR; /*<  Variance R */
    float VarLat; /*<  Variance Lat */
    float VarLon; /*<  Variance Lon  */
    float LoiterRadius; /*< [m] Suggested loiter radius */
    float LoiterDirection; /*<  Suggested loiter direction */
    float DistToSoarPoint; /*< [m] Distance to soar point */
    float vSinkExp; /*< [m/s] Expected sink rate at current airspeed, roll and throttle */
    float z1_LocalUpdraftSpeed; /*< [m/s] Measurement / updraft speed at current/local airplane position */
    float z2_DeltaRoll; /*< [deg] Measurement / roll angle tracking error */
    float z1_exp; /*<  Expected measurement 1 */
    float z2_exp; /*<  Expected measurement 2 */
    float ThermalGSNorth; /*< [m/s] Thermal drift (from estimator prediction step only) */
    float ThermalGSEast; /*< [m/s] Thermal drift (from estimator prediction step only) */
    float TSE_dot; /*< [m/s]  Total specific energy change (filtered) */
    float DebugVar1; /*<   Debug variable 1 */
    float DebugVar2; /*<   Debug variable 2 */
    uint8_t ControlMode; /*<  Control Mode [-] */
    uint8_t valid; /*<  Data valid [-] */


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
        ss << "  timestampModeChanged: " << timestampModeChanged << std::endl;
        ss << "  xW: " << xW << std::endl;
        ss << "  xR: " << xR << std::endl;
        ss << "  xLat: " << xLat << std::endl;
        ss << "  xLon: " << xLon << std::endl;
        ss << "  VarW: " << VarW << std::endl;
        ss << "  VarR: " << VarR << std::endl;
        ss << "  VarLat: " << VarLat << std::endl;
        ss << "  VarLon: " << VarLon << std::endl;
        ss << "  LoiterRadius: " << LoiterRadius << std::endl;
        ss << "  LoiterDirection: " << LoiterDirection << std::endl;
        ss << "  DistToSoarPoint: " << DistToSoarPoint << std::endl;
        ss << "  vSinkExp: " << vSinkExp << std::endl;
        ss << "  z1_LocalUpdraftSpeed: " << z1_LocalUpdraftSpeed << std::endl;
        ss << "  z2_DeltaRoll: " << z2_DeltaRoll << std::endl;
        ss << "  z1_exp: " << z1_exp << std::endl;
        ss << "  z2_exp: " << z2_exp << std::endl;
        ss << "  ThermalGSNorth: " << ThermalGSNorth << std::endl;
        ss << "  ThermalGSEast: " << ThermalGSEast << std::endl;
        ss << "  TSE_dot: " << TSE_dot << std::endl;
        ss << "  DebugVar1: " << DebugVar1 << std::endl;
        ss << "  DebugVar2: " << DebugVar2 << std::endl;
        ss << "  ControlMode: " << +ControlMode << std::endl;
        ss << "  valid: " << +valid << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << timestamp;                     // offset: 0
        map << timestampModeChanged;          // offset: 8
        map << xW;                            // offset: 16
        map << xR;                            // offset: 20
        map << xLat;                          // offset: 24
        map << xLon;                          // offset: 28
        map << VarW;                          // offset: 32
        map << VarR;                          // offset: 36
        map << VarLat;                        // offset: 40
        map << VarLon;                        // offset: 44
        map << LoiterRadius;                  // offset: 48
        map << LoiterDirection;               // offset: 52
        map << DistToSoarPoint;               // offset: 56
        map << vSinkExp;                      // offset: 60
        map << z1_LocalUpdraftSpeed;          // offset: 64
        map << z2_DeltaRoll;                  // offset: 68
        map << z1_exp;                        // offset: 72
        map << z2_exp;                        // offset: 76
        map << ThermalGSNorth;                // offset: 80
        map << ThermalGSEast;                 // offset: 84
        map << TSE_dot;                       // offset: 88
        map << DebugVar1;                     // offset: 92
        map << DebugVar2;                     // offset: 96
        map << ControlMode;                   // offset: 100
        map << valid;                         // offset: 101
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> timestamp;                     // offset: 0
        map >> timestampModeChanged;          // offset: 8
        map >> xW;                            // offset: 16
        map >> xR;                            // offset: 20
        map >> xLat;                          // offset: 24
        map >> xLon;                          // offset: 28
        map >> VarW;                          // offset: 32
        map >> VarR;                          // offset: 36
        map >> VarLat;                        // offset: 40
        map >> VarLon;                        // offset: 44
        map >> LoiterRadius;                  // offset: 48
        map >> LoiterDirection;               // offset: 52
        map >> DistToSoarPoint;               // offset: 56
        map >> vSinkExp;                      // offset: 60
        map >> z1_LocalUpdraftSpeed;          // offset: 64
        map >> z2_DeltaRoll;                  // offset: 68
        map >> z1_exp;                        // offset: 72
        map >> z2_exp;                        // offset: 76
        map >> ThermalGSNorth;                // offset: 80
        map >> ThermalGSEast;                 // offset: 84
        map >> TSE_dot;                       // offset: 88
        map >> DebugVar1;                     // offset: 92
        map >> DebugVar2;                     // offset: 96
        map >> ControlMode;                   // offset: 100
        map >> valid;                         // offset: 101
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
