// MESSAGE ASLCTRL_DATA support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief ASLCTRL_DATA message
 *
 * ASL-fixed-wing controller data
 */
struct ASLCTRL_DATA : mavlink::Message {
    static constexpr msgid_t MSG_ID = 203;
    static constexpr size_t LENGTH = 98;
    static constexpr size_t MIN_LENGTH = 98;
    static constexpr uint8_t CRC_EXTRA = 172;
    static constexpr auto NAME = "ASLCTRL_DATA";


    uint64_t timestamp; /*< [us]  Timestamp */
    uint8_t aslctrl_mode; /*<   ASLCTRL control-mode (manual, stabilized, auto, etc...) */
    float h; /*<   See sourcecode for a description of these values...  */
    float hRef; /*<    */
    float hRef_t; /*<    */
    float PitchAngle; /*< [deg] Pitch angle */
    float PitchAngleRef; /*< [deg] Pitch angle reference */
    float q; /*<    */
    float qRef; /*<    */
    float uElev; /*<    */
    float uThrot; /*<    */
    float uThrot2; /*<    */
    float nZ; /*<    */
    float AirspeedRef; /*< [m/s] Airspeed reference */
    uint8_t SpoilersEngaged; /*<    */
    float YawAngle; /*< [deg] Yaw angle */
    float YawAngleRef; /*< [deg] Yaw angle reference */
    float RollAngle; /*< [deg] Roll angle */
    float RollAngleRef; /*< [deg] Roll angle reference */
    float p; /*<    */
    float pRef; /*<    */
    float r; /*<    */
    float rRef; /*<    */
    float uAil; /*<    */
    float uRud; /*<    */


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
        ss << "  aslctrl_mode: " << +aslctrl_mode << std::endl;
        ss << "  h: " << h << std::endl;
        ss << "  hRef: " << hRef << std::endl;
        ss << "  hRef_t: " << hRef_t << std::endl;
        ss << "  PitchAngle: " << PitchAngle << std::endl;
        ss << "  PitchAngleRef: " << PitchAngleRef << std::endl;
        ss << "  q: " << q << std::endl;
        ss << "  qRef: " << qRef << std::endl;
        ss << "  uElev: " << uElev << std::endl;
        ss << "  uThrot: " << uThrot << std::endl;
        ss << "  uThrot2: " << uThrot2 << std::endl;
        ss << "  nZ: " << nZ << std::endl;
        ss << "  AirspeedRef: " << AirspeedRef << std::endl;
        ss << "  SpoilersEngaged: " << +SpoilersEngaged << std::endl;
        ss << "  YawAngle: " << YawAngle << std::endl;
        ss << "  YawAngleRef: " << YawAngleRef << std::endl;
        ss << "  RollAngle: " << RollAngle << std::endl;
        ss << "  RollAngleRef: " << RollAngleRef << std::endl;
        ss << "  p: " << p << std::endl;
        ss << "  pRef: " << pRef << std::endl;
        ss << "  r: " << r << std::endl;
        ss << "  rRef: " << rRef << std::endl;
        ss << "  uAil: " << uAil << std::endl;
        ss << "  uRud: " << uRud << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << timestamp;                     // offset: 0
        map << h;                             // offset: 8
        map << hRef;                          // offset: 12
        map << hRef_t;                        // offset: 16
        map << PitchAngle;                    // offset: 20
        map << PitchAngleRef;                 // offset: 24
        map << q;                             // offset: 28
        map << qRef;                          // offset: 32
        map << uElev;                         // offset: 36
        map << uThrot;                        // offset: 40
        map << uThrot2;                       // offset: 44
        map << nZ;                            // offset: 48
        map << AirspeedRef;                   // offset: 52
        map << YawAngle;                      // offset: 56
        map << YawAngleRef;                   // offset: 60
        map << RollAngle;                     // offset: 64
        map << RollAngleRef;                  // offset: 68
        map << p;                             // offset: 72
        map << pRef;                          // offset: 76
        map << r;                             // offset: 80
        map << rRef;                          // offset: 84
        map << uAil;                          // offset: 88
        map << uRud;                          // offset: 92
        map << aslctrl_mode;                  // offset: 96
        map << SpoilersEngaged;               // offset: 97
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> timestamp;                     // offset: 0
        map >> h;                             // offset: 8
        map >> hRef;                          // offset: 12
        map >> hRef_t;                        // offset: 16
        map >> PitchAngle;                    // offset: 20
        map >> PitchAngleRef;                 // offset: 24
        map >> q;                             // offset: 28
        map >> qRef;                          // offset: 32
        map >> uElev;                         // offset: 36
        map >> uThrot;                        // offset: 40
        map >> uThrot2;                       // offset: 44
        map >> nZ;                            // offset: 48
        map >> AirspeedRef;                   // offset: 52
        map >> YawAngle;                      // offset: 56
        map >> YawAngleRef;                   // offset: 60
        map >> RollAngle;                     // offset: 64
        map >> RollAngleRef;                  // offset: 68
        map >> p;                             // offset: 72
        map >> pRef;                          // offset: 76
        map >> r;                             // offset: 80
        map >> rRef;                          // offset: 84
        map >> uAil;                          // offset: 88
        map >> uRud;                          // offset: 92
        map >> aslctrl_mode;                  // offset: 96
        map >> SpoilersEngaged;               // offset: 97
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
