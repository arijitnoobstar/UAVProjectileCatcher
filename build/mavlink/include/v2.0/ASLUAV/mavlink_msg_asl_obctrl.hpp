// MESSAGE ASL_OBCTRL support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief ASL_OBCTRL message
 *
 * Off-board controls/commands for ASLUAVs
 */
struct ASL_OBCTRL : mavlink::Message {
    static constexpr msgid_t MSG_ID = 207;
    static constexpr size_t LENGTH = 33;
    static constexpr size_t MIN_LENGTH = 33;
    static constexpr uint8_t CRC_EXTRA = 234;
    static constexpr auto NAME = "ASL_OBCTRL";


    uint64_t timestamp; /*< [us]  Time since system start */
    float uElev; /*<   Elevator command [~] */
    float uThrot; /*<   Throttle command [~] */
    float uThrot2; /*<   Throttle 2 command [~] */
    float uAilL; /*<   Left aileron command [~] */
    float uAilR; /*<   Right aileron command [~] */
    float uRud; /*<   Rudder command [~] */
    uint8_t obctrl_status; /*<   Off-board computer status */


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
        ss << "  uElev: " << uElev << std::endl;
        ss << "  uThrot: " << uThrot << std::endl;
        ss << "  uThrot2: " << uThrot2 << std::endl;
        ss << "  uAilL: " << uAilL << std::endl;
        ss << "  uAilR: " << uAilR << std::endl;
        ss << "  uRud: " << uRud << std::endl;
        ss << "  obctrl_status: " << +obctrl_status << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << timestamp;                     // offset: 0
        map << uElev;                         // offset: 8
        map << uThrot;                        // offset: 12
        map << uThrot2;                       // offset: 16
        map << uAilL;                         // offset: 20
        map << uAilR;                         // offset: 24
        map << uRud;                          // offset: 28
        map << obctrl_status;                 // offset: 32
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> timestamp;                     // offset: 0
        map >> uElev;                         // offset: 8
        map >> uThrot;                        // offset: 12
        map >> uThrot2;                       // offset: 16
        map >> uAilL;                         // offset: 20
        map >> uAilR;                         // offset: 24
        map >> uRud;                          // offset: 28
        map >> obctrl_status;                 // offset: 32
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
