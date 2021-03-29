/** @file
 *	@brief MAVLink comm testsuite protocol generated from paparazzi.xml
 *	@see http://mavlink.org
 */

#pragma once

#include <gtest/gtest.h>
#include "paparazzi.hpp"

#ifdef TEST_INTEROP
using namespace mavlink;
#undef MAVLINK_HELPER
#include "mavlink.h"
#endif


TEST(paparazzi, SCRIPT_ITEM)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::paparazzi::msg::SCRIPT_ITEM packet_in{};
    packet_in.target_system = 139;
    packet_in.target_component = 206;
    packet_in.seq = 17235;
    packet_in.name = to_char_array("EFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZA");

    mavlink::paparazzi::msg::SCRIPT_ITEM packet1{};
    mavlink::paparazzi::msg::SCRIPT_ITEM packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
    EXPECT_EQ(packet1.seq, packet2.seq);
    EXPECT_EQ(packet1.name, packet2.name);
}

#ifdef TEST_INTEROP
TEST(paparazzi_interop, SCRIPT_ITEM)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_script_item_t packet_c {
         17235, 139, 206, "EFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZA"
    };

    mavlink::paparazzi::msg::SCRIPT_ITEM packet_in{};
    packet_in.target_system = 139;
    packet_in.target_component = 206;
    packet_in.seq = 17235;
    packet_in.name = to_char_array("EFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZA");

    mavlink::paparazzi::msg::SCRIPT_ITEM packet2{};

    mavlink_msg_script_item_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);
    EXPECT_EQ(packet_in.seq, packet2.seq);
    EXPECT_EQ(packet_in.name, packet2.name);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(paparazzi, SCRIPT_REQUEST)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::paparazzi::msg::SCRIPT_REQUEST packet_in{};
    packet_in.target_system = 139;
    packet_in.target_component = 206;
    packet_in.seq = 17235;

    mavlink::paparazzi::msg::SCRIPT_REQUEST packet1{};
    mavlink::paparazzi::msg::SCRIPT_REQUEST packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
    EXPECT_EQ(packet1.seq, packet2.seq);
}

#ifdef TEST_INTEROP
TEST(paparazzi_interop, SCRIPT_REQUEST)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_script_request_t packet_c {
         17235, 139, 206
    };

    mavlink::paparazzi::msg::SCRIPT_REQUEST packet_in{};
    packet_in.target_system = 139;
    packet_in.target_component = 206;
    packet_in.seq = 17235;

    mavlink::paparazzi::msg::SCRIPT_REQUEST packet2{};

    mavlink_msg_script_request_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);
    EXPECT_EQ(packet_in.seq, packet2.seq);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(paparazzi, SCRIPT_REQUEST_LIST)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::paparazzi::msg::SCRIPT_REQUEST_LIST packet_in{};
    packet_in.target_system = 5;
    packet_in.target_component = 72;

    mavlink::paparazzi::msg::SCRIPT_REQUEST_LIST packet1{};
    mavlink::paparazzi::msg::SCRIPT_REQUEST_LIST packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
}

#ifdef TEST_INTEROP
TEST(paparazzi_interop, SCRIPT_REQUEST_LIST)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_script_request_list_t packet_c {
         5, 72
    };

    mavlink::paparazzi::msg::SCRIPT_REQUEST_LIST packet_in{};
    packet_in.target_system = 5;
    packet_in.target_component = 72;

    mavlink::paparazzi::msg::SCRIPT_REQUEST_LIST packet2{};

    mavlink_msg_script_request_list_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(paparazzi, SCRIPT_COUNT)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::paparazzi::msg::SCRIPT_COUNT packet_in{};
    packet_in.target_system = 139;
    packet_in.target_component = 206;
    packet_in.count = 17235;

    mavlink::paparazzi::msg::SCRIPT_COUNT packet1{};
    mavlink::paparazzi::msg::SCRIPT_COUNT packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
    EXPECT_EQ(packet1.count, packet2.count);
}

#ifdef TEST_INTEROP
TEST(paparazzi_interop, SCRIPT_COUNT)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_script_count_t packet_c {
         17235, 139, 206
    };

    mavlink::paparazzi::msg::SCRIPT_COUNT packet_in{};
    packet_in.target_system = 139;
    packet_in.target_component = 206;
    packet_in.count = 17235;

    mavlink::paparazzi::msg::SCRIPT_COUNT packet2{};

    mavlink_msg_script_count_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);
    EXPECT_EQ(packet_in.count, packet2.count);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(paparazzi, SCRIPT_CURRENT)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::paparazzi::msg::SCRIPT_CURRENT packet_in{};
    packet_in.seq = 17235;

    mavlink::paparazzi::msg::SCRIPT_CURRENT packet1{};
    mavlink::paparazzi::msg::SCRIPT_CURRENT packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.seq, packet2.seq);
}

#ifdef TEST_INTEROP
TEST(paparazzi_interop, SCRIPT_CURRENT)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_script_current_t packet_c {
         17235
    };

    mavlink::paparazzi::msg::SCRIPT_CURRENT packet_in{};
    packet_in.seq = 17235;

    mavlink::paparazzi::msg::SCRIPT_CURRENT packet2{};

    mavlink_msg_script_current_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.seq, packet2.seq);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif
