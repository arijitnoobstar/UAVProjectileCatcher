/** @file
 *	@brief MAVLink comm testsuite protocol generated from autoquad.xml
 *	@see http://mavlink.org
 */

#pragma once

#include <gtest/gtest.h>
#include "autoquad.hpp"

#ifdef TEST_INTEROP
using namespace mavlink;
#undef MAVLINK_HELPER
#include "mavlink.h"
#endif


TEST(autoquad, AQ_TELEMETRY_F)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::autoquad::msg::AQ_TELEMETRY_F packet_in{};
    packet_in.Index = 21395;
    packet_in.value1 = 17.0;
    packet_in.value2 = 45.0;
    packet_in.value3 = 73.0;
    packet_in.value4 = 101.0;
    packet_in.value5 = 129.0;
    packet_in.value6 = 157.0;
    packet_in.value7 = 185.0;
    packet_in.value8 = 213.0;
    packet_in.value9 = 241.0;
    packet_in.value10 = 269.0;
    packet_in.value11 = 297.0;
    packet_in.value12 = 325.0;
    packet_in.value13 = 353.0;
    packet_in.value14 = 381.0;
    packet_in.value15 = 409.0;
    packet_in.value16 = 437.0;
    packet_in.value17 = 465.0;
    packet_in.value18 = 493.0;
    packet_in.value19 = 521.0;
    packet_in.value20 = 549.0;

    mavlink::autoquad::msg::AQ_TELEMETRY_F packet1{};
    mavlink::autoquad::msg::AQ_TELEMETRY_F packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.Index, packet2.Index);
    EXPECT_EQ(packet1.value1, packet2.value1);
    EXPECT_EQ(packet1.value2, packet2.value2);
    EXPECT_EQ(packet1.value3, packet2.value3);
    EXPECT_EQ(packet1.value4, packet2.value4);
    EXPECT_EQ(packet1.value5, packet2.value5);
    EXPECT_EQ(packet1.value6, packet2.value6);
    EXPECT_EQ(packet1.value7, packet2.value7);
    EXPECT_EQ(packet1.value8, packet2.value8);
    EXPECT_EQ(packet1.value9, packet2.value9);
    EXPECT_EQ(packet1.value10, packet2.value10);
    EXPECT_EQ(packet1.value11, packet2.value11);
    EXPECT_EQ(packet1.value12, packet2.value12);
    EXPECT_EQ(packet1.value13, packet2.value13);
    EXPECT_EQ(packet1.value14, packet2.value14);
    EXPECT_EQ(packet1.value15, packet2.value15);
    EXPECT_EQ(packet1.value16, packet2.value16);
    EXPECT_EQ(packet1.value17, packet2.value17);
    EXPECT_EQ(packet1.value18, packet2.value18);
    EXPECT_EQ(packet1.value19, packet2.value19);
    EXPECT_EQ(packet1.value20, packet2.value20);
}

#ifdef TEST_INTEROP
TEST(autoquad_interop, AQ_TELEMETRY_F)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_aq_telemetry_f_t packet_c {
         17.0, 45.0, 73.0, 101.0, 129.0, 157.0, 185.0, 213.0, 241.0, 269.0, 297.0, 325.0, 353.0, 381.0, 409.0, 437.0, 465.0, 493.0, 521.0, 549.0, 21395
    };

    mavlink::autoquad::msg::AQ_TELEMETRY_F packet_in{};
    packet_in.Index = 21395;
    packet_in.value1 = 17.0;
    packet_in.value2 = 45.0;
    packet_in.value3 = 73.0;
    packet_in.value4 = 101.0;
    packet_in.value5 = 129.0;
    packet_in.value6 = 157.0;
    packet_in.value7 = 185.0;
    packet_in.value8 = 213.0;
    packet_in.value9 = 241.0;
    packet_in.value10 = 269.0;
    packet_in.value11 = 297.0;
    packet_in.value12 = 325.0;
    packet_in.value13 = 353.0;
    packet_in.value14 = 381.0;
    packet_in.value15 = 409.0;
    packet_in.value16 = 437.0;
    packet_in.value17 = 465.0;
    packet_in.value18 = 493.0;
    packet_in.value19 = 521.0;
    packet_in.value20 = 549.0;

    mavlink::autoquad::msg::AQ_TELEMETRY_F packet2{};

    mavlink_msg_aq_telemetry_f_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.Index, packet2.Index);
    EXPECT_EQ(packet_in.value1, packet2.value1);
    EXPECT_EQ(packet_in.value2, packet2.value2);
    EXPECT_EQ(packet_in.value3, packet2.value3);
    EXPECT_EQ(packet_in.value4, packet2.value4);
    EXPECT_EQ(packet_in.value5, packet2.value5);
    EXPECT_EQ(packet_in.value6, packet2.value6);
    EXPECT_EQ(packet_in.value7, packet2.value7);
    EXPECT_EQ(packet_in.value8, packet2.value8);
    EXPECT_EQ(packet_in.value9, packet2.value9);
    EXPECT_EQ(packet_in.value10, packet2.value10);
    EXPECT_EQ(packet_in.value11, packet2.value11);
    EXPECT_EQ(packet_in.value12, packet2.value12);
    EXPECT_EQ(packet_in.value13, packet2.value13);
    EXPECT_EQ(packet_in.value14, packet2.value14);
    EXPECT_EQ(packet_in.value15, packet2.value15);
    EXPECT_EQ(packet_in.value16, packet2.value16);
    EXPECT_EQ(packet_in.value17, packet2.value17);
    EXPECT_EQ(packet_in.value18, packet2.value18);
    EXPECT_EQ(packet_in.value19, packet2.value19);
    EXPECT_EQ(packet_in.value20, packet2.value20);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(autoquad, AQ_ESC_TELEMETRY)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::autoquad::msg::AQ_ESC_TELEMETRY packet_in{};
    packet_in.time_boot_ms = 963497464;
    packet_in.seq = 137;
    packet_in.num_motors = 204;
    packet_in.num_in_seq = 15;
    packet_in.escid = {{ 82, 83, 84, 85 }};
    packet_in.status_age = {{ 19107, 19108, 19109, 19110 }};
    packet_in.data_version = {{ 94, 95, 96, 97 }};
    packet_in.data0 = {{ 963497672, 963497673, 963497674, 963497675 }};
    packet_in.data1 = {{ 963498504, 963498505, 963498506, 963498507 }};

    mavlink::autoquad::msg::AQ_ESC_TELEMETRY packet1{};
    mavlink::autoquad::msg::AQ_ESC_TELEMETRY packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.time_boot_ms, packet2.time_boot_ms);
    EXPECT_EQ(packet1.seq, packet2.seq);
    EXPECT_EQ(packet1.num_motors, packet2.num_motors);
    EXPECT_EQ(packet1.num_in_seq, packet2.num_in_seq);
    EXPECT_EQ(packet1.escid, packet2.escid);
    EXPECT_EQ(packet1.status_age, packet2.status_age);
    EXPECT_EQ(packet1.data_version, packet2.data_version);
    EXPECT_EQ(packet1.data0, packet2.data0);
    EXPECT_EQ(packet1.data1, packet2.data1);
}

#ifdef TEST_INTEROP
TEST(autoquad_interop, AQ_ESC_TELEMETRY)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_aq_esc_telemetry_t packet_c {
         963497464, { 963497672, 963497673, 963497674, 963497675 }, { 963498504, 963498505, 963498506, 963498507 }, { 19107, 19108, 19109, 19110 }, 137, 204, 15, { 82, 83, 84, 85 }, { 94, 95, 96, 97 }
    };

    mavlink::autoquad::msg::AQ_ESC_TELEMETRY packet_in{};
    packet_in.time_boot_ms = 963497464;
    packet_in.seq = 137;
    packet_in.num_motors = 204;
    packet_in.num_in_seq = 15;
    packet_in.escid = {{ 82, 83, 84, 85 }};
    packet_in.status_age = {{ 19107, 19108, 19109, 19110 }};
    packet_in.data_version = {{ 94, 95, 96, 97 }};
    packet_in.data0 = {{ 963497672, 963497673, 963497674, 963497675 }};
    packet_in.data1 = {{ 963498504, 963498505, 963498506, 963498507 }};

    mavlink::autoquad::msg::AQ_ESC_TELEMETRY packet2{};

    mavlink_msg_aq_esc_telemetry_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.time_boot_ms, packet2.time_boot_ms);
    EXPECT_EQ(packet_in.seq, packet2.seq);
    EXPECT_EQ(packet_in.num_motors, packet2.num_motors);
    EXPECT_EQ(packet_in.num_in_seq, packet2.num_in_seq);
    EXPECT_EQ(packet_in.escid, packet2.escid);
    EXPECT_EQ(packet_in.status_age, packet2.status_age);
    EXPECT_EQ(packet_in.data_version, packet2.data_version);
    EXPECT_EQ(packet_in.data0, packet2.data0);
    EXPECT_EQ(packet_in.data1, packet2.data1);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif
