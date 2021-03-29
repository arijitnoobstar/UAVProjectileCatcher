// MESSAGE COMPONENT_INFORMATION support class

#pragma once

namespace mavlink {
namespace common {
namespace msg {

/**
 * @brief COMPONENT_INFORMATION message
 *
 * Information about a component. For camera components instead use CAMERA_INFORMATION, and for autopilots use AUTOPILOT_VERSION. Components including GCSes should consider supporting requests of this message via MAV_CMD_REQUEST_MESSAGE.
 */
struct COMPONENT_INFORMATION : mavlink::Message {
    static constexpr msgid_t MSG_ID = 395;
    static constexpr size_t LENGTH = 156;
    static constexpr size_t MIN_LENGTH = 156;
    static constexpr uint8_t CRC_EXTRA = 163;
    static constexpr auto NAME = "COMPONENT_INFORMATION";


    uint32_t time_boot_ms; /*< [ms] Timestamp (time since system boot). */
    uint32_t metadata_type; /*<  The type of metadata being requested. */
    uint32_t metadata_uid; /*<  Unique uid for this metadata which a gcs can use for created cached metadata and understanding whether it's cache it up to date or whether it needs to download new data. */
    std::array<char, 70> metadata_uri; /*<  Component definition URI. If prefix mavlinkftp:// file is downloaded from vehicle over mavlink ftp protocol. If prefix http[s]:// file is downloaded over internet. Files are json format. They can end in .gz to indicate file is in gzip format. */
    uint32_t translation_uid; /*<  Unique uid for the translation file associated with the metadata. */
    std::array<char, 70> translation_uri; /*<  The translations for strings within the metadata file. If null the either do not exist or may be included in the metadata file itself. The translations specified here supercede any which may be in the metadata file itself. The uri format is the same as component_metadata_uri . Files are in Json Translation spec format. Empty string indicates no tranlsation file. */


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
        ss << "  time_boot_ms: " << time_boot_ms << std::endl;
        ss << "  metadata_type: " << metadata_type << std::endl;
        ss << "  metadata_uid: " << metadata_uid << std::endl;
        ss << "  metadata_uri: \"" << to_string(metadata_uri) << "\"" << std::endl;
        ss << "  translation_uid: " << translation_uid << std::endl;
        ss << "  translation_uri: \"" << to_string(translation_uri) << "\"" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << time_boot_ms;                  // offset: 0
        map << metadata_type;                 // offset: 4
        map << metadata_uid;                  // offset: 8
        map << translation_uid;               // offset: 12
        map << metadata_uri;                  // offset: 16
        map << translation_uri;               // offset: 86
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> time_boot_ms;                  // offset: 0
        map >> metadata_type;                 // offset: 4
        map >> metadata_uid;                  // offset: 8
        map >> translation_uid;               // offset: 12
        map >> metadata_uri;                  // offset: 16
        map >> translation_uri;               // offset: 86
    }
};

} // namespace msg
} // namespace common
} // namespace mavlink
