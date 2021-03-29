// MESSAGE GSM_LINK_STATUS support class

#pragma once

namespace mavlink {
namespace ASLUAV {
namespace msg {

/**
 * @brief GSM_LINK_STATUS message
 *
 * Status of GSM modem (connected to onboard computer)
 */
struct GSM_LINK_STATUS : mavlink::Message {
    static constexpr msgid_t MSG_ID = 213;
    static constexpr size_t LENGTH = 14;
    static constexpr size_t MIN_LENGTH = 14;
    static constexpr uint8_t CRC_EXTRA = 200;
    static constexpr auto NAME = "GSM_LINK_STATUS";


    uint64_t timestamp; /*< [us] Timestamp (of OBC) */
    uint8_t gsm_modem_type; /*<  GSM modem used */
    uint8_t gsm_link_type; /*<  GSM link type */
    uint8_t rssi; /*<  RSSI as reported by modem (unconverted) */
    uint8_t rsrp_rscp; /*<  RSRP (LTE) or RSCP (WCDMA) as reported by modem (unconverted) */
    uint8_t sinr_ecio; /*<  SINR (LTE) or ECIO (WCDMA) as reported by modem (unconverted) */
    uint8_t rsrq; /*<  RSRQ (LTE only) as reported by modem (unconverted) */


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
        ss << "  gsm_modem_type: " << +gsm_modem_type << std::endl;
        ss << "  gsm_link_type: " << +gsm_link_type << std::endl;
        ss << "  rssi: " << +rssi << std::endl;
        ss << "  rsrp_rscp: " << +rsrp_rscp << std::endl;
        ss << "  sinr_ecio: " << +sinr_ecio << std::endl;
        ss << "  rsrq: " << +rsrq << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << timestamp;                     // offset: 0
        map << gsm_modem_type;                // offset: 8
        map << gsm_link_type;                 // offset: 9
        map << rssi;                          // offset: 10
        map << rsrp_rscp;                     // offset: 11
        map << sinr_ecio;                     // offset: 12
        map << rsrq;                          // offset: 13
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> timestamp;                     // offset: 0
        map >> gsm_modem_type;                // offset: 8
        map >> gsm_link_type;                 // offset: 9
        map >> rssi;                          // offset: 10
        map >> rsrp_rscp;                     // offset: 11
        map >> sinr_ecio;                     // offset: 12
        map >> rsrq;                          // offset: 13
    }
};

} // namespace msg
} // namespace ASLUAV
} // namespace mavlink
