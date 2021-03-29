// MESSAGE SERIAL_UDB_EXTRA_F6 support class

#pragma once

namespace mavlink {
namespace matrixpilot {
namespace msg {

/**
 * @brief SERIAL_UDB_EXTRA_F6 message
 *
 * Backwards compatible version of SERIAL_UDB_EXTRA F6: format
 */
struct SERIAL_UDB_EXTRA_F6 : mavlink::Message {
    static constexpr msgid_t MSG_ID = 174;
    static constexpr size_t LENGTH = 20;
    static constexpr size_t MIN_LENGTH = 20;
    static constexpr uint8_t CRC_EXTRA = 54;
    static constexpr auto NAME = "SERIAL_UDB_EXTRA_F6";


    float sue_PITCHGAIN; /*<  Serial UDB Extra PITCHGAIN Proportional Control */
    float sue_PITCHKD; /*<  Serial UDB Extra Pitch Rate Control */
    float sue_RUDDER_ELEV_MIX; /*<  Serial UDB Extra Rudder to Elevator Mix */
    float sue_ROLL_ELEV_MIX; /*<  Serial UDB Extra Roll to Elevator Mix */
    float sue_ELEVATOR_BOOST; /*<  Gain For Boosting Manual Elevator control When Plane Stabilized */


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
        ss << "  sue_PITCHGAIN: " << sue_PITCHGAIN << std::endl;
        ss << "  sue_PITCHKD: " << sue_PITCHKD << std::endl;
        ss << "  sue_RUDDER_ELEV_MIX: " << sue_RUDDER_ELEV_MIX << std::endl;
        ss << "  sue_ROLL_ELEV_MIX: " << sue_ROLL_ELEV_MIX << std::endl;
        ss << "  sue_ELEVATOR_BOOST: " << sue_ELEVATOR_BOOST << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << sue_PITCHGAIN;                 // offset: 0
        map << sue_PITCHKD;                   // offset: 4
        map << sue_RUDDER_ELEV_MIX;           // offset: 8
        map << sue_ROLL_ELEV_MIX;             // offset: 12
        map << sue_ELEVATOR_BOOST;            // offset: 16
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> sue_PITCHGAIN;                 // offset: 0
        map >> sue_PITCHKD;                   // offset: 4
        map >> sue_RUDDER_ELEV_MIX;           // offset: 8
        map >> sue_ROLL_ELEV_MIX;             // offset: 12
        map >> sue_ELEVATOR_BOOST;            // offset: 16
    }
};

} // namespace msg
} // namespace matrixpilot
} // namespace mavlink
