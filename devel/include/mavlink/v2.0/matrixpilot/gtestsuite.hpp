/** @file
 *	@brief MAVLink comm testsuite protocol generated from matrixpilot.xml
 *	@see http://mavlink.org
 */

#pragma once

#include <gtest/gtest.h>
#include "matrixpilot.hpp"

#ifdef TEST_INTEROP
using namespace mavlink;
#undef MAVLINK_HELPER
#include "mavlink.h"
#endif


TEST(matrixpilot, FLEXIFUNCTION_SET)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::FLEXIFUNCTION_SET packet_in{};
    packet_in.target_system = 5;
    packet_in.target_component = 72;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_SET packet1{};
    mavlink::matrixpilot::msg::FLEXIFUNCTION_SET packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, FLEXIFUNCTION_SET)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_flexifunction_set_t packet_c {
         5, 72
    };

    mavlink::matrixpilot::msg::FLEXIFUNCTION_SET packet_in{};
    packet_in.target_system = 5;
    packet_in.target_component = 72;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_SET packet2{};

    mavlink_msg_flexifunction_set_encode(1, 1, &msg, &packet_c);

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

TEST(matrixpilot, FLEXIFUNCTION_READ_REQ)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::FLEXIFUNCTION_READ_REQ packet_in{};
    packet_in.target_system = 17;
    packet_in.target_component = 84;
    packet_in.read_req_type = 17235;
    packet_in.data_index = 17339;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_READ_REQ packet1{};
    mavlink::matrixpilot::msg::FLEXIFUNCTION_READ_REQ packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
    EXPECT_EQ(packet1.read_req_type, packet2.read_req_type);
    EXPECT_EQ(packet1.data_index, packet2.data_index);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, FLEXIFUNCTION_READ_REQ)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_flexifunction_read_req_t packet_c {
         17235, 17339, 17, 84
    };

    mavlink::matrixpilot::msg::FLEXIFUNCTION_READ_REQ packet_in{};
    packet_in.target_system = 17;
    packet_in.target_component = 84;
    packet_in.read_req_type = 17235;
    packet_in.data_index = 17339;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_READ_REQ packet2{};

    mavlink_msg_flexifunction_read_req_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);
    EXPECT_EQ(packet_in.read_req_type, packet2.read_req_type);
    EXPECT_EQ(packet_in.data_index, packet2.data_index);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, FLEXIFUNCTION_BUFFER_FUNCTION)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::FLEXIFUNCTION_BUFFER_FUNCTION packet_in{};
    packet_in.target_system = 29;
    packet_in.target_component = 96;
    packet_in.func_index = 17235;
    packet_in.func_count = 17339;
    packet_in.data_address = 17443;
    packet_in.data_size = 17547;
    packet_in.data = {{ -93, -92, -91, -90, -89, -88, -87, -86, -85, -84, -83, -82, -81, -80, -79, -78, -77, -76, -75, -74, -73, -72, -71, -70, -69, -68, -67, -66, -65, -64, -63, -62, -61, -60, -59, -58, -57, -56, -55, -54, -53, -52, -51, -50, -49, -48, -47, -46 }};

    mavlink::matrixpilot::msg::FLEXIFUNCTION_BUFFER_FUNCTION packet1{};
    mavlink::matrixpilot::msg::FLEXIFUNCTION_BUFFER_FUNCTION packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
    EXPECT_EQ(packet1.func_index, packet2.func_index);
    EXPECT_EQ(packet1.func_count, packet2.func_count);
    EXPECT_EQ(packet1.data_address, packet2.data_address);
    EXPECT_EQ(packet1.data_size, packet2.data_size);
    EXPECT_EQ(packet1.data, packet2.data);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, FLEXIFUNCTION_BUFFER_FUNCTION)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_flexifunction_buffer_function_t packet_c {
         17235, 17339, 17443, 17547, 29, 96, { -93, -92, -91, -90, -89, -88, -87, -86, -85, -84, -83, -82, -81, -80, -79, -78, -77, -76, -75, -74, -73, -72, -71, -70, -69, -68, -67, -66, -65, -64, -63, -62, -61, -60, -59, -58, -57, -56, -55, -54, -53, -52, -51, -50, -49, -48, -47, -46 }
    };

    mavlink::matrixpilot::msg::FLEXIFUNCTION_BUFFER_FUNCTION packet_in{};
    packet_in.target_system = 29;
    packet_in.target_component = 96;
    packet_in.func_index = 17235;
    packet_in.func_count = 17339;
    packet_in.data_address = 17443;
    packet_in.data_size = 17547;
    packet_in.data = {{ -93, -92, -91, -90, -89, -88, -87, -86, -85, -84, -83, -82, -81, -80, -79, -78, -77, -76, -75, -74, -73, -72, -71, -70, -69, -68, -67, -66, -65, -64, -63, -62, -61, -60, -59, -58, -57, -56, -55, -54, -53, -52, -51, -50, -49, -48, -47, -46 }};

    mavlink::matrixpilot::msg::FLEXIFUNCTION_BUFFER_FUNCTION packet2{};

    mavlink_msg_flexifunction_buffer_function_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);
    EXPECT_EQ(packet_in.func_index, packet2.func_index);
    EXPECT_EQ(packet_in.func_count, packet2.func_count);
    EXPECT_EQ(packet_in.data_address, packet2.data_address);
    EXPECT_EQ(packet_in.data_size, packet2.data_size);
    EXPECT_EQ(packet_in.data, packet2.data);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, FLEXIFUNCTION_BUFFER_FUNCTION_ACK)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::FLEXIFUNCTION_BUFFER_FUNCTION_ACK packet_in{};
    packet_in.target_system = 17;
    packet_in.target_component = 84;
    packet_in.func_index = 17235;
    packet_in.result = 17339;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_BUFFER_FUNCTION_ACK packet1{};
    mavlink::matrixpilot::msg::FLEXIFUNCTION_BUFFER_FUNCTION_ACK packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
    EXPECT_EQ(packet1.func_index, packet2.func_index);
    EXPECT_EQ(packet1.result, packet2.result);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, FLEXIFUNCTION_BUFFER_FUNCTION_ACK)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_flexifunction_buffer_function_ack_t packet_c {
         17235, 17339, 17, 84
    };

    mavlink::matrixpilot::msg::FLEXIFUNCTION_BUFFER_FUNCTION_ACK packet_in{};
    packet_in.target_system = 17;
    packet_in.target_component = 84;
    packet_in.func_index = 17235;
    packet_in.result = 17339;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_BUFFER_FUNCTION_ACK packet2{};

    mavlink_msg_flexifunction_buffer_function_ack_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);
    EXPECT_EQ(packet_in.func_index, packet2.func_index);
    EXPECT_EQ(packet_in.result, packet2.result);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, FLEXIFUNCTION_DIRECTORY)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::FLEXIFUNCTION_DIRECTORY packet_in{};
    packet_in.target_system = 5;
    packet_in.target_component = 72;
    packet_in.directory_type = 139;
    packet_in.start_index = 206;
    packet_in.count = 17;
    packet_in.directory_data = {{ 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, -128, -127, -126, -125 }};

    mavlink::matrixpilot::msg::FLEXIFUNCTION_DIRECTORY packet1{};
    mavlink::matrixpilot::msg::FLEXIFUNCTION_DIRECTORY packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
    EXPECT_EQ(packet1.directory_type, packet2.directory_type);
    EXPECT_EQ(packet1.start_index, packet2.start_index);
    EXPECT_EQ(packet1.count, packet2.count);
    EXPECT_EQ(packet1.directory_data, packet2.directory_data);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, FLEXIFUNCTION_DIRECTORY)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_flexifunction_directory_t packet_c {
         5, 72, 139, 206, 17, { 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, -128, -127, -126, -125 }
    };

    mavlink::matrixpilot::msg::FLEXIFUNCTION_DIRECTORY packet_in{};
    packet_in.target_system = 5;
    packet_in.target_component = 72;
    packet_in.directory_type = 139;
    packet_in.start_index = 206;
    packet_in.count = 17;
    packet_in.directory_data = {{ 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, -128, -127, -126, -125 }};

    mavlink::matrixpilot::msg::FLEXIFUNCTION_DIRECTORY packet2{};

    mavlink_msg_flexifunction_directory_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);
    EXPECT_EQ(packet_in.directory_type, packet2.directory_type);
    EXPECT_EQ(packet_in.start_index, packet2.start_index);
    EXPECT_EQ(packet_in.count, packet2.count);
    EXPECT_EQ(packet_in.directory_data, packet2.directory_data);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, FLEXIFUNCTION_DIRECTORY_ACK)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::FLEXIFUNCTION_DIRECTORY_ACK packet_in{};
    packet_in.target_system = 139;
    packet_in.target_component = 206;
    packet_in.directory_type = 17;
    packet_in.start_index = 84;
    packet_in.count = 151;
    packet_in.result = 17235;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_DIRECTORY_ACK packet1{};
    mavlink::matrixpilot::msg::FLEXIFUNCTION_DIRECTORY_ACK packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
    EXPECT_EQ(packet1.directory_type, packet2.directory_type);
    EXPECT_EQ(packet1.start_index, packet2.start_index);
    EXPECT_EQ(packet1.count, packet2.count);
    EXPECT_EQ(packet1.result, packet2.result);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, FLEXIFUNCTION_DIRECTORY_ACK)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_flexifunction_directory_ack_t packet_c {
         17235, 139, 206, 17, 84, 151
    };

    mavlink::matrixpilot::msg::FLEXIFUNCTION_DIRECTORY_ACK packet_in{};
    packet_in.target_system = 139;
    packet_in.target_component = 206;
    packet_in.directory_type = 17;
    packet_in.start_index = 84;
    packet_in.count = 151;
    packet_in.result = 17235;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_DIRECTORY_ACK packet2{};

    mavlink_msg_flexifunction_directory_ack_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);
    EXPECT_EQ(packet_in.directory_type, packet2.directory_type);
    EXPECT_EQ(packet_in.start_index, packet2.start_index);
    EXPECT_EQ(packet_in.count, packet2.count);
    EXPECT_EQ(packet_in.result, packet2.result);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, FLEXIFUNCTION_COMMAND)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::FLEXIFUNCTION_COMMAND packet_in{};
    packet_in.target_system = 5;
    packet_in.target_component = 72;
    packet_in.command_type = 139;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_COMMAND packet1{};
    mavlink::matrixpilot::msg::FLEXIFUNCTION_COMMAND packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
    EXPECT_EQ(packet1.command_type, packet2.command_type);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, FLEXIFUNCTION_COMMAND)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_flexifunction_command_t packet_c {
         5, 72, 139
    };

    mavlink::matrixpilot::msg::FLEXIFUNCTION_COMMAND packet_in{};
    packet_in.target_system = 5;
    packet_in.target_component = 72;
    packet_in.command_type = 139;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_COMMAND packet2{};

    mavlink_msg_flexifunction_command_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);
    EXPECT_EQ(packet_in.command_type, packet2.command_type);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, FLEXIFUNCTION_COMMAND_ACK)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::FLEXIFUNCTION_COMMAND_ACK packet_in{};
    packet_in.command_type = 17235;
    packet_in.result = 17339;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_COMMAND_ACK packet1{};
    mavlink::matrixpilot::msg::FLEXIFUNCTION_COMMAND_ACK packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.command_type, packet2.command_type);
    EXPECT_EQ(packet1.result, packet2.result);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, FLEXIFUNCTION_COMMAND_ACK)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_flexifunction_command_ack_t packet_c {
         17235, 17339
    };

    mavlink::matrixpilot::msg::FLEXIFUNCTION_COMMAND_ACK packet_in{};
    packet_in.command_type = 17235;
    packet_in.result = 17339;

    mavlink::matrixpilot::msg::FLEXIFUNCTION_COMMAND_ACK packet2{};

    mavlink_msg_flexifunction_command_ack_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.command_type, packet2.command_type);
    EXPECT_EQ(packet_in.result, packet2.result);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F2_A)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F2_A packet_in{};
    packet_in.sue_time = 963497464;
    packet_in.sue_status = 185;
    packet_in.sue_latitude = 963497672;
    packet_in.sue_longitude = 963497880;
    packet_in.sue_altitude = 963498088;
    packet_in.sue_waypoint_index = 18067;
    packet_in.sue_rmat0 = 18171;
    packet_in.sue_rmat1 = 18275;
    packet_in.sue_rmat2 = 18379;
    packet_in.sue_rmat3 = 18483;
    packet_in.sue_rmat4 = 18587;
    packet_in.sue_rmat5 = 18691;
    packet_in.sue_rmat6 = 18795;
    packet_in.sue_rmat7 = 18899;
    packet_in.sue_rmat8 = 19003;
    packet_in.sue_cog = 19107;
    packet_in.sue_sog = 19211;
    packet_in.sue_cpu_load = 19315;
    packet_in.sue_air_speed_3DIMU = 19419;
    packet_in.sue_estimated_wind_0 = 19523;
    packet_in.sue_estimated_wind_1 = 19627;
    packet_in.sue_estimated_wind_2 = 19731;
    packet_in.sue_magFieldEarth0 = 19835;
    packet_in.sue_magFieldEarth1 = 19939;
    packet_in.sue_magFieldEarth2 = 20043;
    packet_in.sue_svs = 20147;
    packet_in.sue_hdop = 20251;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F2_A packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F2_A packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_time, packet2.sue_time);
    EXPECT_EQ(packet1.sue_status, packet2.sue_status);
    EXPECT_EQ(packet1.sue_latitude, packet2.sue_latitude);
    EXPECT_EQ(packet1.sue_longitude, packet2.sue_longitude);
    EXPECT_EQ(packet1.sue_altitude, packet2.sue_altitude);
    EXPECT_EQ(packet1.sue_waypoint_index, packet2.sue_waypoint_index);
    EXPECT_EQ(packet1.sue_rmat0, packet2.sue_rmat0);
    EXPECT_EQ(packet1.sue_rmat1, packet2.sue_rmat1);
    EXPECT_EQ(packet1.sue_rmat2, packet2.sue_rmat2);
    EXPECT_EQ(packet1.sue_rmat3, packet2.sue_rmat3);
    EXPECT_EQ(packet1.sue_rmat4, packet2.sue_rmat4);
    EXPECT_EQ(packet1.sue_rmat5, packet2.sue_rmat5);
    EXPECT_EQ(packet1.sue_rmat6, packet2.sue_rmat6);
    EXPECT_EQ(packet1.sue_rmat7, packet2.sue_rmat7);
    EXPECT_EQ(packet1.sue_rmat8, packet2.sue_rmat8);
    EXPECT_EQ(packet1.sue_cog, packet2.sue_cog);
    EXPECT_EQ(packet1.sue_sog, packet2.sue_sog);
    EXPECT_EQ(packet1.sue_cpu_load, packet2.sue_cpu_load);
    EXPECT_EQ(packet1.sue_air_speed_3DIMU, packet2.sue_air_speed_3DIMU);
    EXPECT_EQ(packet1.sue_estimated_wind_0, packet2.sue_estimated_wind_0);
    EXPECT_EQ(packet1.sue_estimated_wind_1, packet2.sue_estimated_wind_1);
    EXPECT_EQ(packet1.sue_estimated_wind_2, packet2.sue_estimated_wind_2);
    EXPECT_EQ(packet1.sue_magFieldEarth0, packet2.sue_magFieldEarth0);
    EXPECT_EQ(packet1.sue_magFieldEarth1, packet2.sue_magFieldEarth1);
    EXPECT_EQ(packet1.sue_magFieldEarth2, packet2.sue_magFieldEarth2);
    EXPECT_EQ(packet1.sue_svs, packet2.sue_svs);
    EXPECT_EQ(packet1.sue_hdop, packet2.sue_hdop);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F2_A)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f2_a_t packet_c {
         963497464, 963497672, 963497880, 963498088, 18067, 18171, 18275, 18379, 18483, 18587, 18691, 18795, 18899, 19003, 19107, 19211, 19315, 19419, 19523, 19627, 19731, 19835, 19939, 20043, 20147, 20251, 185
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F2_A packet_in{};
    packet_in.sue_time = 963497464;
    packet_in.sue_status = 185;
    packet_in.sue_latitude = 963497672;
    packet_in.sue_longitude = 963497880;
    packet_in.sue_altitude = 963498088;
    packet_in.sue_waypoint_index = 18067;
    packet_in.sue_rmat0 = 18171;
    packet_in.sue_rmat1 = 18275;
    packet_in.sue_rmat2 = 18379;
    packet_in.sue_rmat3 = 18483;
    packet_in.sue_rmat4 = 18587;
    packet_in.sue_rmat5 = 18691;
    packet_in.sue_rmat6 = 18795;
    packet_in.sue_rmat7 = 18899;
    packet_in.sue_rmat8 = 19003;
    packet_in.sue_cog = 19107;
    packet_in.sue_sog = 19211;
    packet_in.sue_cpu_load = 19315;
    packet_in.sue_air_speed_3DIMU = 19419;
    packet_in.sue_estimated_wind_0 = 19523;
    packet_in.sue_estimated_wind_1 = 19627;
    packet_in.sue_estimated_wind_2 = 19731;
    packet_in.sue_magFieldEarth0 = 19835;
    packet_in.sue_magFieldEarth1 = 19939;
    packet_in.sue_magFieldEarth2 = 20043;
    packet_in.sue_svs = 20147;
    packet_in.sue_hdop = 20251;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F2_A packet2{};

    mavlink_msg_serial_udb_extra_f2_a_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_time, packet2.sue_time);
    EXPECT_EQ(packet_in.sue_status, packet2.sue_status);
    EXPECT_EQ(packet_in.sue_latitude, packet2.sue_latitude);
    EXPECT_EQ(packet_in.sue_longitude, packet2.sue_longitude);
    EXPECT_EQ(packet_in.sue_altitude, packet2.sue_altitude);
    EXPECT_EQ(packet_in.sue_waypoint_index, packet2.sue_waypoint_index);
    EXPECT_EQ(packet_in.sue_rmat0, packet2.sue_rmat0);
    EXPECT_EQ(packet_in.sue_rmat1, packet2.sue_rmat1);
    EXPECT_EQ(packet_in.sue_rmat2, packet2.sue_rmat2);
    EXPECT_EQ(packet_in.sue_rmat3, packet2.sue_rmat3);
    EXPECT_EQ(packet_in.sue_rmat4, packet2.sue_rmat4);
    EXPECT_EQ(packet_in.sue_rmat5, packet2.sue_rmat5);
    EXPECT_EQ(packet_in.sue_rmat6, packet2.sue_rmat6);
    EXPECT_EQ(packet_in.sue_rmat7, packet2.sue_rmat7);
    EXPECT_EQ(packet_in.sue_rmat8, packet2.sue_rmat8);
    EXPECT_EQ(packet_in.sue_cog, packet2.sue_cog);
    EXPECT_EQ(packet_in.sue_sog, packet2.sue_sog);
    EXPECT_EQ(packet_in.sue_cpu_load, packet2.sue_cpu_load);
    EXPECT_EQ(packet_in.sue_air_speed_3DIMU, packet2.sue_air_speed_3DIMU);
    EXPECT_EQ(packet_in.sue_estimated_wind_0, packet2.sue_estimated_wind_0);
    EXPECT_EQ(packet_in.sue_estimated_wind_1, packet2.sue_estimated_wind_1);
    EXPECT_EQ(packet_in.sue_estimated_wind_2, packet2.sue_estimated_wind_2);
    EXPECT_EQ(packet_in.sue_magFieldEarth0, packet2.sue_magFieldEarth0);
    EXPECT_EQ(packet_in.sue_magFieldEarth1, packet2.sue_magFieldEarth1);
    EXPECT_EQ(packet_in.sue_magFieldEarth2, packet2.sue_magFieldEarth2);
    EXPECT_EQ(packet_in.sue_svs, packet2.sue_svs);
    EXPECT_EQ(packet_in.sue_hdop, packet2.sue_hdop);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F2_B)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F2_B packet_in{};
    packet_in.sue_time = 963497464;
    packet_in.sue_pwm_input_1 = 18067;
    packet_in.sue_pwm_input_2 = 18171;
    packet_in.sue_pwm_input_3 = 18275;
    packet_in.sue_pwm_input_4 = 18379;
    packet_in.sue_pwm_input_5 = 18483;
    packet_in.sue_pwm_input_6 = 18587;
    packet_in.sue_pwm_input_7 = 18691;
    packet_in.sue_pwm_input_8 = 18795;
    packet_in.sue_pwm_input_9 = 18899;
    packet_in.sue_pwm_input_10 = 19003;
    packet_in.sue_pwm_input_11 = 19107;
    packet_in.sue_pwm_input_12 = 19211;
    packet_in.sue_pwm_output_1 = 19315;
    packet_in.sue_pwm_output_2 = 19419;
    packet_in.sue_pwm_output_3 = 19523;
    packet_in.sue_pwm_output_4 = 19627;
    packet_in.sue_pwm_output_5 = 19731;
    packet_in.sue_pwm_output_6 = 19835;
    packet_in.sue_pwm_output_7 = 19939;
    packet_in.sue_pwm_output_8 = 20043;
    packet_in.sue_pwm_output_9 = 20147;
    packet_in.sue_pwm_output_10 = 20251;
    packet_in.sue_pwm_output_11 = 20355;
    packet_in.sue_pwm_output_12 = 20459;
    packet_in.sue_imu_location_x = 20563;
    packet_in.sue_imu_location_y = 20667;
    packet_in.sue_imu_location_z = 20771;
    packet_in.sue_location_error_earth_x = 20875;
    packet_in.sue_location_error_earth_y = 20979;
    packet_in.sue_location_error_earth_z = 21083;
    packet_in.sue_flags = 963497672;
    packet_in.sue_osc_fails = 21187;
    packet_in.sue_imu_velocity_x = 21291;
    packet_in.sue_imu_velocity_y = 21395;
    packet_in.sue_imu_velocity_z = 21499;
    packet_in.sue_waypoint_goal_x = 21603;
    packet_in.sue_waypoint_goal_y = 21707;
    packet_in.sue_waypoint_goal_z = 21811;
    packet_in.sue_aero_x = 21915;
    packet_in.sue_aero_y = 22019;
    packet_in.sue_aero_z = 22123;
    packet_in.sue_barom_temp = 22227;
    packet_in.sue_barom_press = 963497880;
    packet_in.sue_barom_alt = 963498088;
    packet_in.sue_bat_volt = 22331;
    packet_in.sue_bat_amp = 22435;
    packet_in.sue_bat_amp_hours = 22539;
    packet_in.sue_desired_height = 22643;
    packet_in.sue_memory_stack_free = 22747;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F2_B packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F2_B packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_time, packet2.sue_time);
    EXPECT_EQ(packet1.sue_pwm_input_1, packet2.sue_pwm_input_1);
    EXPECT_EQ(packet1.sue_pwm_input_2, packet2.sue_pwm_input_2);
    EXPECT_EQ(packet1.sue_pwm_input_3, packet2.sue_pwm_input_3);
    EXPECT_EQ(packet1.sue_pwm_input_4, packet2.sue_pwm_input_4);
    EXPECT_EQ(packet1.sue_pwm_input_5, packet2.sue_pwm_input_5);
    EXPECT_EQ(packet1.sue_pwm_input_6, packet2.sue_pwm_input_6);
    EXPECT_EQ(packet1.sue_pwm_input_7, packet2.sue_pwm_input_7);
    EXPECT_EQ(packet1.sue_pwm_input_8, packet2.sue_pwm_input_8);
    EXPECT_EQ(packet1.sue_pwm_input_9, packet2.sue_pwm_input_9);
    EXPECT_EQ(packet1.sue_pwm_input_10, packet2.sue_pwm_input_10);
    EXPECT_EQ(packet1.sue_pwm_input_11, packet2.sue_pwm_input_11);
    EXPECT_EQ(packet1.sue_pwm_input_12, packet2.sue_pwm_input_12);
    EXPECT_EQ(packet1.sue_pwm_output_1, packet2.sue_pwm_output_1);
    EXPECT_EQ(packet1.sue_pwm_output_2, packet2.sue_pwm_output_2);
    EXPECT_EQ(packet1.sue_pwm_output_3, packet2.sue_pwm_output_3);
    EXPECT_EQ(packet1.sue_pwm_output_4, packet2.sue_pwm_output_4);
    EXPECT_EQ(packet1.sue_pwm_output_5, packet2.sue_pwm_output_5);
    EXPECT_EQ(packet1.sue_pwm_output_6, packet2.sue_pwm_output_6);
    EXPECT_EQ(packet1.sue_pwm_output_7, packet2.sue_pwm_output_7);
    EXPECT_EQ(packet1.sue_pwm_output_8, packet2.sue_pwm_output_8);
    EXPECT_EQ(packet1.sue_pwm_output_9, packet2.sue_pwm_output_9);
    EXPECT_EQ(packet1.sue_pwm_output_10, packet2.sue_pwm_output_10);
    EXPECT_EQ(packet1.sue_pwm_output_11, packet2.sue_pwm_output_11);
    EXPECT_EQ(packet1.sue_pwm_output_12, packet2.sue_pwm_output_12);
    EXPECT_EQ(packet1.sue_imu_location_x, packet2.sue_imu_location_x);
    EXPECT_EQ(packet1.sue_imu_location_y, packet2.sue_imu_location_y);
    EXPECT_EQ(packet1.sue_imu_location_z, packet2.sue_imu_location_z);
    EXPECT_EQ(packet1.sue_location_error_earth_x, packet2.sue_location_error_earth_x);
    EXPECT_EQ(packet1.sue_location_error_earth_y, packet2.sue_location_error_earth_y);
    EXPECT_EQ(packet1.sue_location_error_earth_z, packet2.sue_location_error_earth_z);
    EXPECT_EQ(packet1.sue_flags, packet2.sue_flags);
    EXPECT_EQ(packet1.sue_osc_fails, packet2.sue_osc_fails);
    EXPECT_EQ(packet1.sue_imu_velocity_x, packet2.sue_imu_velocity_x);
    EXPECT_EQ(packet1.sue_imu_velocity_y, packet2.sue_imu_velocity_y);
    EXPECT_EQ(packet1.sue_imu_velocity_z, packet2.sue_imu_velocity_z);
    EXPECT_EQ(packet1.sue_waypoint_goal_x, packet2.sue_waypoint_goal_x);
    EXPECT_EQ(packet1.sue_waypoint_goal_y, packet2.sue_waypoint_goal_y);
    EXPECT_EQ(packet1.sue_waypoint_goal_z, packet2.sue_waypoint_goal_z);
    EXPECT_EQ(packet1.sue_aero_x, packet2.sue_aero_x);
    EXPECT_EQ(packet1.sue_aero_y, packet2.sue_aero_y);
    EXPECT_EQ(packet1.sue_aero_z, packet2.sue_aero_z);
    EXPECT_EQ(packet1.sue_barom_temp, packet2.sue_barom_temp);
    EXPECT_EQ(packet1.sue_barom_press, packet2.sue_barom_press);
    EXPECT_EQ(packet1.sue_barom_alt, packet2.sue_barom_alt);
    EXPECT_EQ(packet1.sue_bat_volt, packet2.sue_bat_volt);
    EXPECT_EQ(packet1.sue_bat_amp, packet2.sue_bat_amp);
    EXPECT_EQ(packet1.sue_bat_amp_hours, packet2.sue_bat_amp_hours);
    EXPECT_EQ(packet1.sue_desired_height, packet2.sue_desired_height);
    EXPECT_EQ(packet1.sue_memory_stack_free, packet2.sue_memory_stack_free);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F2_B)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f2_b_t packet_c {
         963497464, 963497672, 963497880, 963498088, 18067, 18171, 18275, 18379, 18483, 18587, 18691, 18795, 18899, 19003, 19107, 19211, 19315, 19419, 19523, 19627, 19731, 19835, 19939, 20043, 20147, 20251, 20355, 20459, 20563, 20667, 20771, 20875, 20979, 21083, 21187, 21291, 21395, 21499, 21603, 21707, 21811, 21915, 22019, 22123, 22227, 22331, 22435, 22539, 22643, 22747
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F2_B packet_in{};
    packet_in.sue_time = 963497464;
    packet_in.sue_pwm_input_1 = 18067;
    packet_in.sue_pwm_input_2 = 18171;
    packet_in.sue_pwm_input_3 = 18275;
    packet_in.sue_pwm_input_4 = 18379;
    packet_in.sue_pwm_input_5 = 18483;
    packet_in.sue_pwm_input_6 = 18587;
    packet_in.sue_pwm_input_7 = 18691;
    packet_in.sue_pwm_input_8 = 18795;
    packet_in.sue_pwm_input_9 = 18899;
    packet_in.sue_pwm_input_10 = 19003;
    packet_in.sue_pwm_input_11 = 19107;
    packet_in.sue_pwm_input_12 = 19211;
    packet_in.sue_pwm_output_1 = 19315;
    packet_in.sue_pwm_output_2 = 19419;
    packet_in.sue_pwm_output_3 = 19523;
    packet_in.sue_pwm_output_4 = 19627;
    packet_in.sue_pwm_output_5 = 19731;
    packet_in.sue_pwm_output_6 = 19835;
    packet_in.sue_pwm_output_7 = 19939;
    packet_in.sue_pwm_output_8 = 20043;
    packet_in.sue_pwm_output_9 = 20147;
    packet_in.sue_pwm_output_10 = 20251;
    packet_in.sue_pwm_output_11 = 20355;
    packet_in.sue_pwm_output_12 = 20459;
    packet_in.sue_imu_location_x = 20563;
    packet_in.sue_imu_location_y = 20667;
    packet_in.sue_imu_location_z = 20771;
    packet_in.sue_location_error_earth_x = 20875;
    packet_in.sue_location_error_earth_y = 20979;
    packet_in.sue_location_error_earth_z = 21083;
    packet_in.sue_flags = 963497672;
    packet_in.sue_osc_fails = 21187;
    packet_in.sue_imu_velocity_x = 21291;
    packet_in.sue_imu_velocity_y = 21395;
    packet_in.sue_imu_velocity_z = 21499;
    packet_in.sue_waypoint_goal_x = 21603;
    packet_in.sue_waypoint_goal_y = 21707;
    packet_in.sue_waypoint_goal_z = 21811;
    packet_in.sue_aero_x = 21915;
    packet_in.sue_aero_y = 22019;
    packet_in.sue_aero_z = 22123;
    packet_in.sue_barom_temp = 22227;
    packet_in.sue_barom_press = 963497880;
    packet_in.sue_barom_alt = 963498088;
    packet_in.sue_bat_volt = 22331;
    packet_in.sue_bat_amp = 22435;
    packet_in.sue_bat_amp_hours = 22539;
    packet_in.sue_desired_height = 22643;
    packet_in.sue_memory_stack_free = 22747;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F2_B packet2{};

    mavlink_msg_serial_udb_extra_f2_b_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_time, packet2.sue_time);
    EXPECT_EQ(packet_in.sue_pwm_input_1, packet2.sue_pwm_input_1);
    EXPECT_EQ(packet_in.sue_pwm_input_2, packet2.sue_pwm_input_2);
    EXPECT_EQ(packet_in.sue_pwm_input_3, packet2.sue_pwm_input_3);
    EXPECT_EQ(packet_in.sue_pwm_input_4, packet2.sue_pwm_input_4);
    EXPECT_EQ(packet_in.sue_pwm_input_5, packet2.sue_pwm_input_5);
    EXPECT_EQ(packet_in.sue_pwm_input_6, packet2.sue_pwm_input_6);
    EXPECT_EQ(packet_in.sue_pwm_input_7, packet2.sue_pwm_input_7);
    EXPECT_EQ(packet_in.sue_pwm_input_8, packet2.sue_pwm_input_8);
    EXPECT_EQ(packet_in.sue_pwm_input_9, packet2.sue_pwm_input_9);
    EXPECT_EQ(packet_in.sue_pwm_input_10, packet2.sue_pwm_input_10);
    EXPECT_EQ(packet_in.sue_pwm_input_11, packet2.sue_pwm_input_11);
    EXPECT_EQ(packet_in.sue_pwm_input_12, packet2.sue_pwm_input_12);
    EXPECT_EQ(packet_in.sue_pwm_output_1, packet2.sue_pwm_output_1);
    EXPECT_EQ(packet_in.sue_pwm_output_2, packet2.sue_pwm_output_2);
    EXPECT_EQ(packet_in.sue_pwm_output_3, packet2.sue_pwm_output_3);
    EXPECT_EQ(packet_in.sue_pwm_output_4, packet2.sue_pwm_output_4);
    EXPECT_EQ(packet_in.sue_pwm_output_5, packet2.sue_pwm_output_5);
    EXPECT_EQ(packet_in.sue_pwm_output_6, packet2.sue_pwm_output_6);
    EXPECT_EQ(packet_in.sue_pwm_output_7, packet2.sue_pwm_output_7);
    EXPECT_EQ(packet_in.sue_pwm_output_8, packet2.sue_pwm_output_8);
    EXPECT_EQ(packet_in.sue_pwm_output_9, packet2.sue_pwm_output_9);
    EXPECT_EQ(packet_in.sue_pwm_output_10, packet2.sue_pwm_output_10);
    EXPECT_EQ(packet_in.sue_pwm_output_11, packet2.sue_pwm_output_11);
    EXPECT_EQ(packet_in.sue_pwm_output_12, packet2.sue_pwm_output_12);
    EXPECT_EQ(packet_in.sue_imu_location_x, packet2.sue_imu_location_x);
    EXPECT_EQ(packet_in.sue_imu_location_y, packet2.sue_imu_location_y);
    EXPECT_EQ(packet_in.sue_imu_location_z, packet2.sue_imu_location_z);
    EXPECT_EQ(packet_in.sue_location_error_earth_x, packet2.sue_location_error_earth_x);
    EXPECT_EQ(packet_in.sue_location_error_earth_y, packet2.sue_location_error_earth_y);
    EXPECT_EQ(packet_in.sue_location_error_earth_z, packet2.sue_location_error_earth_z);
    EXPECT_EQ(packet_in.sue_flags, packet2.sue_flags);
    EXPECT_EQ(packet_in.sue_osc_fails, packet2.sue_osc_fails);
    EXPECT_EQ(packet_in.sue_imu_velocity_x, packet2.sue_imu_velocity_x);
    EXPECT_EQ(packet_in.sue_imu_velocity_y, packet2.sue_imu_velocity_y);
    EXPECT_EQ(packet_in.sue_imu_velocity_z, packet2.sue_imu_velocity_z);
    EXPECT_EQ(packet_in.sue_waypoint_goal_x, packet2.sue_waypoint_goal_x);
    EXPECT_EQ(packet_in.sue_waypoint_goal_y, packet2.sue_waypoint_goal_y);
    EXPECT_EQ(packet_in.sue_waypoint_goal_z, packet2.sue_waypoint_goal_z);
    EXPECT_EQ(packet_in.sue_aero_x, packet2.sue_aero_x);
    EXPECT_EQ(packet_in.sue_aero_y, packet2.sue_aero_y);
    EXPECT_EQ(packet_in.sue_aero_z, packet2.sue_aero_z);
    EXPECT_EQ(packet_in.sue_barom_temp, packet2.sue_barom_temp);
    EXPECT_EQ(packet_in.sue_barom_press, packet2.sue_barom_press);
    EXPECT_EQ(packet_in.sue_barom_alt, packet2.sue_barom_alt);
    EXPECT_EQ(packet_in.sue_bat_volt, packet2.sue_bat_volt);
    EXPECT_EQ(packet_in.sue_bat_amp, packet2.sue_bat_amp);
    EXPECT_EQ(packet_in.sue_bat_amp_hours, packet2.sue_bat_amp_hours);
    EXPECT_EQ(packet_in.sue_desired_height, packet2.sue_desired_height);
    EXPECT_EQ(packet_in.sue_memory_stack_free, packet2.sue_memory_stack_free);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F4)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F4 packet_in{};
    packet_in.sue_ROLL_STABILIZATION_AILERONS = 5;
    packet_in.sue_ROLL_STABILIZATION_RUDDER = 72;
    packet_in.sue_PITCH_STABILIZATION = 139;
    packet_in.sue_YAW_STABILIZATION_RUDDER = 206;
    packet_in.sue_YAW_STABILIZATION_AILERON = 17;
    packet_in.sue_AILERON_NAVIGATION = 84;
    packet_in.sue_RUDDER_NAVIGATION = 151;
    packet_in.sue_ALTITUDEHOLD_STABILIZED = 218;
    packet_in.sue_ALTITUDEHOLD_WAYPOINT = 29;
    packet_in.sue_RACING_MODE = 96;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F4 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F4 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_ROLL_STABILIZATION_AILERONS, packet2.sue_ROLL_STABILIZATION_AILERONS);
    EXPECT_EQ(packet1.sue_ROLL_STABILIZATION_RUDDER, packet2.sue_ROLL_STABILIZATION_RUDDER);
    EXPECT_EQ(packet1.sue_PITCH_STABILIZATION, packet2.sue_PITCH_STABILIZATION);
    EXPECT_EQ(packet1.sue_YAW_STABILIZATION_RUDDER, packet2.sue_YAW_STABILIZATION_RUDDER);
    EXPECT_EQ(packet1.sue_YAW_STABILIZATION_AILERON, packet2.sue_YAW_STABILIZATION_AILERON);
    EXPECT_EQ(packet1.sue_AILERON_NAVIGATION, packet2.sue_AILERON_NAVIGATION);
    EXPECT_EQ(packet1.sue_RUDDER_NAVIGATION, packet2.sue_RUDDER_NAVIGATION);
    EXPECT_EQ(packet1.sue_ALTITUDEHOLD_STABILIZED, packet2.sue_ALTITUDEHOLD_STABILIZED);
    EXPECT_EQ(packet1.sue_ALTITUDEHOLD_WAYPOINT, packet2.sue_ALTITUDEHOLD_WAYPOINT);
    EXPECT_EQ(packet1.sue_RACING_MODE, packet2.sue_RACING_MODE);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F4)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f4_t packet_c {
         5, 72, 139, 206, 17, 84, 151, 218, 29, 96
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F4 packet_in{};
    packet_in.sue_ROLL_STABILIZATION_AILERONS = 5;
    packet_in.sue_ROLL_STABILIZATION_RUDDER = 72;
    packet_in.sue_PITCH_STABILIZATION = 139;
    packet_in.sue_YAW_STABILIZATION_RUDDER = 206;
    packet_in.sue_YAW_STABILIZATION_AILERON = 17;
    packet_in.sue_AILERON_NAVIGATION = 84;
    packet_in.sue_RUDDER_NAVIGATION = 151;
    packet_in.sue_ALTITUDEHOLD_STABILIZED = 218;
    packet_in.sue_ALTITUDEHOLD_WAYPOINT = 29;
    packet_in.sue_RACING_MODE = 96;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F4 packet2{};

    mavlink_msg_serial_udb_extra_f4_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_ROLL_STABILIZATION_AILERONS, packet2.sue_ROLL_STABILIZATION_AILERONS);
    EXPECT_EQ(packet_in.sue_ROLL_STABILIZATION_RUDDER, packet2.sue_ROLL_STABILIZATION_RUDDER);
    EXPECT_EQ(packet_in.sue_PITCH_STABILIZATION, packet2.sue_PITCH_STABILIZATION);
    EXPECT_EQ(packet_in.sue_YAW_STABILIZATION_RUDDER, packet2.sue_YAW_STABILIZATION_RUDDER);
    EXPECT_EQ(packet_in.sue_YAW_STABILIZATION_AILERON, packet2.sue_YAW_STABILIZATION_AILERON);
    EXPECT_EQ(packet_in.sue_AILERON_NAVIGATION, packet2.sue_AILERON_NAVIGATION);
    EXPECT_EQ(packet_in.sue_RUDDER_NAVIGATION, packet2.sue_RUDDER_NAVIGATION);
    EXPECT_EQ(packet_in.sue_ALTITUDEHOLD_STABILIZED, packet2.sue_ALTITUDEHOLD_STABILIZED);
    EXPECT_EQ(packet_in.sue_ALTITUDEHOLD_WAYPOINT, packet2.sue_ALTITUDEHOLD_WAYPOINT);
    EXPECT_EQ(packet_in.sue_RACING_MODE, packet2.sue_RACING_MODE);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F5)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F5 packet_in{};
    packet_in.sue_YAWKP_AILERON = 17.0;
    packet_in.sue_YAWKD_AILERON = 45.0;
    packet_in.sue_ROLLKP = 73.0;
    packet_in.sue_ROLLKD = 101.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F5 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F5 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_YAWKP_AILERON, packet2.sue_YAWKP_AILERON);
    EXPECT_EQ(packet1.sue_YAWKD_AILERON, packet2.sue_YAWKD_AILERON);
    EXPECT_EQ(packet1.sue_ROLLKP, packet2.sue_ROLLKP);
    EXPECT_EQ(packet1.sue_ROLLKD, packet2.sue_ROLLKD);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F5)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f5_t packet_c {
         17.0, 45.0, 73.0, 101.0
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F5 packet_in{};
    packet_in.sue_YAWKP_AILERON = 17.0;
    packet_in.sue_YAWKD_AILERON = 45.0;
    packet_in.sue_ROLLKP = 73.0;
    packet_in.sue_ROLLKD = 101.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F5 packet2{};

    mavlink_msg_serial_udb_extra_f5_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_YAWKP_AILERON, packet2.sue_YAWKP_AILERON);
    EXPECT_EQ(packet_in.sue_YAWKD_AILERON, packet2.sue_YAWKD_AILERON);
    EXPECT_EQ(packet_in.sue_ROLLKP, packet2.sue_ROLLKP);
    EXPECT_EQ(packet_in.sue_ROLLKD, packet2.sue_ROLLKD);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F6)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F6 packet_in{};
    packet_in.sue_PITCHGAIN = 17.0;
    packet_in.sue_PITCHKD = 45.0;
    packet_in.sue_RUDDER_ELEV_MIX = 73.0;
    packet_in.sue_ROLL_ELEV_MIX = 101.0;
    packet_in.sue_ELEVATOR_BOOST = 129.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F6 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F6 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_PITCHGAIN, packet2.sue_PITCHGAIN);
    EXPECT_EQ(packet1.sue_PITCHKD, packet2.sue_PITCHKD);
    EXPECT_EQ(packet1.sue_RUDDER_ELEV_MIX, packet2.sue_RUDDER_ELEV_MIX);
    EXPECT_EQ(packet1.sue_ROLL_ELEV_MIX, packet2.sue_ROLL_ELEV_MIX);
    EXPECT_EQ(packet1.sue_ELEVATOR_BOOST, packet2.sue_ELEVATOR_BOOST);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F6)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f6_t packet_c {
         17.0, 45.0, 73.0, 101.0, 129.0
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F6 packet_in{};
    packet_in.sue_PITCHGAIN = 17.0;
    packet_in.sue_PITCHKD = 45.0;
    packet_in.sue_RUDDER_ELEV_MIX = 73.0;
    packet_in.sue_ROLL_ELEV_MIX = 101.0;
    packet_in.sue_ELEVATOR_BOOST = 129.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F6 packet2{};

    mavlink_msg_serial_udb_extra_f6_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_PITCHGAIN, packet2.sue_PITCHGAIN);
    EXPECT_EQ(packet_in.sue_PITCHKD, packet2.sue_PITCHKD);
    EXPECT_EQ(packet_in.sue_RUDDER_ELEV_MIX, packet2.sue_RUDDER_ELEV_MIX);
    EXPECT_EQ(packet_in.sue_ROLL_ELEV_MIX, packet2.sue_ROLL_ELEV_MIX);
    EXPECT_EQ(packet_in.sue_ELEVATOR_BOOST, packet2.sue_ELEVATOR_BOOST);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F7)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F7 packet_in{};
    packet_in.sue_YAWKP_RUDDER = 17.0;
    packet_in.sue_YAWKD_RUDDER = 45.0;
    packet_in.sue_ROLLKP_RUDDER = 73.0;
    packet_in.sue_ROLLKD_RUDDER = 101.0;
    packet_in.sue_RUDDER_BOOST = 129.0;
    packet_in.sue_RTL_PITCH_DOWN = 157.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F7 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F7 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_YAWKP_RUDDER, packet2.sue_YAWKP_RUDDER);
    EXPECT_EQ(packet1.sue_YAWKD_RUDDER, packet2.sue_YAWKD_RUDDER);
    EXPECT_EQ(packet1.sue_ROLLKP_RUDDER, packet2.sue_ROLLKP_RUDDER);
    EXPECT_EQ(packet1.sue_ROLLKD_RUDDER, packet2.sue_ROLLKD_RUDDER);
    EXPECT_EQ(packet1.sue_RUDDER_BOOST, packet2.sue_RUDDER_BOOST);
    EXPECT_EQ(packet1.sue_RTL_PITCH_DOWN, packet2.sue_RTL_PITCH_DOWN);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F7)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f7_t packet_c {
         17.0, 45.0, 73.0, 101.0, 129.0, 157.0
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F7 packet_in{};
    packet_in.sue_YAWKP_RUDDER = 17.0;
    packet_in.sue_YAWKD_RUDDER = 45.0;
    packet_in.sue_ROLLKP_RUDDER = 73.0;
    packet_in.sue_ROLLKD_RUDDER = 101.0;
    packet_in.sue_RUDDER_BOOST = 129.0;
    packet_in.sue_RTL_PITCH_DOWN = 157.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F7 packet2{};

    mavlink_msg_serial_udb_extra_f7_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_YAWKP_RUDDER, packet2.sue_YAWKP_RUDDER);
    EXPECT_EQ(packet_in.sue_YAWKD_RUDDER, packet2.sue_YAWKD_RUDDER);
    EXPECT_EQ(packet_in.sue_ROLLKP_RUDDER, packet2.sue_ROLLKP_RUDDER);
    EXPECT_EQ(packet_in.sue_ROLLKD_RUDDER, packet2.sue_ROLLKD_RUDDER);
    EXPECT_EQ(packet_in.sue_RUDDER_BOOST, packet2.sue_RUDDER_BOOST);
    EXPECT_EQ(packet_in.sue_RTL_PITCH_DOWN, packet2.sue_RTL_PITCH_DOWN);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F8)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F8 packet_in{};
    packet_in.sue_HEIGHT_TARGET_MAX = 17.0;
    packet_in.sue_HEIGHT_TARGET_MIN = 45.0;
    packet_in.sue_ALT_HOLD_THROTTLE_MIN = 73.0;
    packet_in.sue_ALT_HOLD_THROTTLE_MAX = 101.0;
    packet_in.sue_ALT_HOLD_PITCH_MIN = 129.0;
    packet_in.sue_ALT_HOLD_PITCH_MAX = 157.0;
    packet_in.sue_ALT_HOLD_PITCH_HIGH = 185.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F8 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F8 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_HEIGHT_TARGET_MAX, packet2.sue_HEIGHT_TARGET_MAX);
    EXPECT_EQ(packet1.sue_HEIGHT_TARGET_MIN, packet2.sue_HEIGHT_TARGET_MIN);
    EXPECT_EQ(packet1.sue_ALT_HOLD_THROTTLE_MIN, packet2.sue_ALT_HOLD_THROTTLE_MIN);
    EXPECT_EQ(packet1.sue_ALT_HOLD_THROTTLE_MAX, packet2.sue_ALT_HOLD_THROTTLE_MAX);
    EXPECT_EQ(packet1.sue_ALT_HOLD_PITCH_MIN, packet2.sue_ALT_HOLD_PITCH_MIN);
    EXPECT_EQ(packet1.sue_ALT_HOLD_PITCH_MAX, packet2.sue_ALT_HOLD_PITCH_MAX);
    EXPECT_EQ(packet1.sue_ALT_HOLD_PITCH_HIGH, packet2.sue_ALT_HOLD_PITCH_HIGH);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F8)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f8_t packet_c {
         17.0, 45.0, 73.0, 101.0, 129.0, 157.0, 185.0
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F8 packet_in{};
    packet_in.sue_HEIGHT_TARGET_MAX = 17.0;
    packet_in.sue_HEIGHT_TARGET_MIN = 45.0;
    packet_in.sue_ALT_HOLD_THROTTLE_MIN = 73.0;
    packet_in.sue_ALT_HOLD_THROTTLE_MAX = 101.0;
    packet_in.sue_ALT_HOLD_PITCH_MIN = 129.0;
    packet_in.sue_ALT_HOLD_PITCH_MAX = 157.0;
    packet_in.sue_ALT_HOLD_PITCH_HIGH = 185.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F8 packet2{};

    mavlink_msg_serial_udb_extra_f8_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_HEIGHT_TARGET_MAX, packet2.sue_HEIGHT_TARGET_MAX);
    EXPECT_EQ(packet_in.sue_HEIGHT_TARGET_MIN, packet2.sue_HEIGHT_TARGET_MIN);
    EXPECT_EQ(packet_in.sue_ALT_HOLD_THROTTLE_MIN, packet2.sue_ALT_HOLD_THROTTLE_MIN);
    EXPECT_EQ(packet_in.sue_ALT_HOLD_THROTTLE_MAX, packet2.sue_ALT_HOLD_THROTTLE_MAX);
    EXPECT_EQ(packet_in.sue_ALT_HOLD_PITCH_MIN, packet2.sue_ALT_HOLD_PITCH_MIN);
    EXPECT_EQ(packet_in.sue_ALT_HOLD_PITCH_MAX, packet2.sue_ALT_HOLD_PITCH_MAX);
    EXPECT_EQ(packet_in.sue_ALT_HOLD_PITCH_HIGH, packet2.sue_ALT_HOLD_PITCH_HIGH);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F13)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F13 packet_in{};
    packet_in.sue_week_no = 17859;
    packet_in.sue_lat_origin = 963497464;
    packet_in.sue_lon_origin = 963497672;
    packet_in.sue_alt_origin = 963497880;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F13 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F13 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_week_no, packet2.sue_week_no);
    EXPECT_EQ(packet1.sue_lat_origin, packet2.sue_lat_origin);
    EXPECT_EQ(packet1.sue_lon_origin, packet2.sue_lon_origin);
    EXPECT_EQ(packet1.sue_alt_origin, packet2.sue_alt_origin);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F13)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f13_t packet_c {
         963497464, 963497672, 963497880, 17859
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F13 packet_in{};
    packet_in.sue_week_no = 17859;
    packet_in.sue_lat_origin = 963497464;
    packet_in.sue_lon_origin = 963497672;
    packet_in.sue_alt_origin = 963497880;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F13 packet2{};

    mavlink_msg_serial_udb_extra_f13_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_week_no, packet2.sue_week_no);
    EXPECT_EQ(packet_in.sue_lat_origin, packet2.sue_lat_origin);
    EXPECT_EQ(packet_in.sue_lon_origin, packet2.sue_lon_origin);
    EXPECT_EQ(packet_in.sue_alt_origin, packet2.sue_alt_origin);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F14)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F14 packet_in{};
    packet_in.sue_WIND_ESTIMATION = 163;
    packet_in.sue_GPS_TYPE = 230;
    packet_in.sue_DR = 41;
    packet_in.sue_BOARD_TYPE = 108;
    packet_in.sue_AIRFRAME = 175;
    packet_in.sue_RCON = 17443;
    packet_in.sue_TRAP_FLAGS = 17547;
    packet_in.sue_TRAP_SOURCE = 963497464;
    packet_in.sue_osc_fail_count = 17651;
    packet_in.sue_CLOCK_CONFIG = 242;
    packet_in.sue_FLIGHT_PLAN_TYPE = 53;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F14 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F14 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_WIND_ESTIMATION, packet2.sue_WIND_ESTIMATION);
    EXPECT_EQ(packet1.sue_GPS_TYPE, packet2.sue_GPS_TYPE);
    EXPECT_EQ(packet1.sue_DR, packet2.sue_DR);
    EXPECT_EQ(packet1.sue_BOARD_TYPE, packet2.sue_BOARD_TYPE);
    EXPECT_EQ(packet1.sue_AIRFRAME, packet2.sue_AIRFRAME);
    EXPECT_EQ(packet1.sue_RCON, packet2.sue_RCON);
    EXPECT_EQ(packet1.sue_TRAP_FLAGS, packet2.sue_TRAP_FLAGS);
    EXPECT_EQ(packet1.sue_TRAP_SOURCE, packet2.sue_TRAP_SOURCE);
    EXPECT_EQ(packet1.sue_osc_fail_count, packet2.sue_osc_fail_count);
    EXPECT_EQ(packet1.sue_CLOCK_CONFIG, packet2.sue_CLOCK_CONFIG);
    EXPECT_EQ(packet1.sue_FLIGHT_PLAN_TYPE, packet2.sue_FLIGHT_PLAN_TYPE);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F14)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f14_t packet_c {
         963497464, 17443, 17547, 17651, 163, 230, 41, 108, 175, 242, 53
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F14 packet_in{};
    packet_in.sue_WIND_ESTIMATION = 163;
    packet_in.sue_GPS_TYPE = 230;
    packet_in.sue_DR = 41;
    packet_in.sue_BOARD_TYPE = 108;
    packet_in.sue_AIRFRAME = 175;
    packet_in.sue_RCON = 17443;
    packet_in.sue_TRAP_FLAGS = 17547;
    packet_in.sue_TRAP_SOURCE = 963497464;
    packet_in.sue_osc_fail_count = 17651;
    packet_in.sue_CLOCK_CONFIG = 242;
    packet_in.sue_FLIGHT_PLAN_TYPE = 53;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F14 packet2{};

    mavlink_msg_serial_udb_extra_f14_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_WIND_ESTIMATION, packet2.sue_WIND_ESTIMATION);
    EXPECT_EQ(packet_in.sue_GPS_TYPE, packet2.sue_GPS_TYPE);
    EXPECT_EQ(packet_in.sue_DR, packet2.sue_DR);
    EXPECT_EQ(packet_in.sue_BOARD_TYPE, packet2.sue_BOARD_TYPE);
    EXPECT_EQ(packet_in.sue_AIRFRAME, packet2.sue_AIRFRAME);
    EXPECT_EQ(packet_in.sue_RCON, packet2.sue_RCON);
    EXPECT_EQ(packet_in.sue_TRAP_FLAGS, packet2.sue_TRAP_FLAGS);
    EXPECT_EQ(packet_in.sue_TRAP_SOURCE, packet2.sue_TRAP_SOURCE);
    EXPECT_EQ(packet_in.sue_osc_fail_count, packet2.sue_osc_fail_count);
    EXPECT_EQ(packet_in.sue_CLOCK_CONFIG, packet2.sue_CLOCK_CONFIG);
    EXPECT_EQ(packet_in.sue_FLIGHT_PLAN_TYPE, packet2.sue_FLIGHT_PLAN_TYPE);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F15)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F15 packet_in{};
    packet_in.sue_ID_VEHICLE_MODEL_NAME = {{ 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44 }};
    packet_in.sue_ID_VEHICLE_REGISTRATION = {{ 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144 }};

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F15 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F15 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_ID_VEHICLE_MODEL_NAME, packet2.sue_ID_VEHICLE_MODEL_NAME);
    EXPECT_EQ(packet1.sue_ID_VEHICLE_REGISTRATION, packet2.sue_ID_VEHICLE_REGISTRATION);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F15)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f15_t packet_c {
         { 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44 }, { 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144 }
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F15 packet_in{};
    packet_in.sue_ID_VEHICLE_MODEL_NAME = {{ 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44 }};
    packet_in.sue_ID_VEHICLE_REGISTRATION = {{ 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144 }};

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F15 packet2{};

    mavlink_msg_serial_udb_extra_f15_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_ID_VEHICLE_MODEL_NAME, packet2.sue_ID_VEHICLE_MODEL_NAME);
    EXPECT_EQ(packet_in.sue_ID_VEHICLE_REGISTRATION, packet2.sue_ID_VEHICLE_REGISTRATION);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F16)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F16 packet_in{};
    packet_in.sue_ID_LEAD_PILOT = {{ 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44 }};
    packet_in.sue_ID_DIY_DRONES_URL = {{ 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194 }};

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F16 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F16 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_ID_LEAD_PILOT, packet2.sue_ID_LEAD_PILOT);
    EXPECT_EQ(packet1.sue_ID_DIY_DRONES_URL, packet2.sue_ID_DIY_DRONES_URL);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F16)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f16_t packet_c {
         { 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44 }, { 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194 }
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F16 packet_in{};
    packet_in.sue_ID_LEAD_PILOT = {{ 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44 }};
    packet_in.sue_ID_DIY_DRONES_URL = {{ 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194 }};

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F16 packet2{};

    mavlink_msg_serial_udb_extra_f16_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_ID_LEAD_PILOT, packet2.sue_ID_LEAD_PILOT);
    EXPECT_EQ(packet_in.sue_ID_DIY_DRONES_URL, packet2.sue_ID_DIY_DRONES_URL);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, ALTITUDES)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::ALTITUDES packet_in{};
    packet_in.time_boot_ms = 963497464;
    packet_in.alt_gps = 963497672;
    packet_in.alt_imu = 963497880;
    packet_in.alt_barometric = 963498088;
    packet_in.alt_optical_flow = 963498296;
    packet_in.alt_range_finder = 963498504;
    packet_in.alt_extra = 963498712;

    mavlink::matrixpilot::msg::ALTITUDES packet1{};
    mavlink::matrixpilot::msg::ALTITUDES packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.time_boot_ms, packet2.time_boot_ms);
    EXPECT_EQ(packet1.alt_gps, packet2.alt_gps);
    EXPECT_EQ(packet1.alt_imu, packet2.alt_imu);
    EXPECT_EQ(packet1.alt_barometric, packet2.alt_barometric);
    EXPECT_EQ(packet1.alt_optical_flow, packet2.alt_optical_flow);
    EXPECT_EQ(packet1.alt_range_finder, packet2.alt_range_finder);
    EXPECT_EQ(packet1.alt_extra, packet2.alt_extra);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, ALTITUDES)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_altitudes_t packet_c {
         963497464, 963497672, 963497880, 963498088, 963498296, 963498504, 963498712
    };

    mavlink::matrixpilot::msg::ALTITUDES packet_in{};
    packet_in.time_boot_ms = 963497464;
    packet_in.alt_gps = 963497672;
    packet_in.alt_imu = 963497880;
    packet_in.alt_barometric = 963498088;
    packet_in.alt_optical_flow = 963498296;
    packet_in.alt_range_finder = 963498504;
    packet_in.alt_extra = 963498712;

    mavlink::matrixpilot::msg::ALTITUDES packet2{};

    mavlink_msg_altitudes_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.time_boot_ms, packet2.time_boot_ms);
    EXPECT_EQ(packet_in.alt_gps, packet2.alt_gps);
    EXPECT_EQ(packet_in.alt_imu, packet2.alt_imu);
    EXPECT_EQ(packet_in.alt_barometric, packet2.alt_barometric);
    EXPECT_EQ(packet_in.alt_optical_flow, packet2.alt_optical_flow);
    EXPECT_EQ(packet_in.alt_range_finder, packet2.alt_range_finder);
    EXPECT_EQ(packet_in.alt_extra, packet2.alt_extra);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, AIRSPEEDS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::AIRSPEEDS packet_in{};
    packet_in.time_boot_ms = 963497464;
    packet_in.airspeed_imu = 17443;
    packet_in.airspeed_pitot = 17547;
    packet_in.airspeed_hot_wire = 17651;
    packet_in.airspeed_ultrasonic = 17755;
    packet_in.aoa = 17859;
    packet_in.aoy = 17963;

    mavlink::matrixpilot::msg::AIRSPEEDS packet1{};
    mavlink::matrixpilot::msg::AIRSPEEDS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.time_boot_ms, packet2.time_boot_ms);
    EXPECT_EQ(packet1.airspeed_imu, packet2.airspeed_imu);
    EXPECT_EQ(packet1.airspeed_pitot, packet2.airspeed_pitot);
    EXPECT_EQ(packet1.airspeed_hot_wire, packet2.airspeed_hot_wire);
    EXPECT_EQ(packet1.airspeed_ultrasonic, packet2.airspeed_ultrasonic);
    EXPECT_EQ(packet1.aoa, packet2.aoa);
    EXPECT_EQ(packet1.aoy, packet2.aoy);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, AIRSPEEDS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_airspeeds_t packet_c {
         963497464, 17443, 17547, 17651, 17755, 17859, 17963
    };

    mavlink::matrixpilot::msg::AIRSPEEDS packet_in{};
    packet_in.time_boot_ms = 963497464;
    packet_in.airspeed_imu = 17443;
    packet_in.airspeed_pitot = 17547;
    packet_in.airspeed_hot_wire = 17651;
    packet_in.airspeed_ultrasonic = 17755;
    packet_in.aoa = 17859;
    packet_in.aoy = 17963;

    mavlink::matrixpilot::msg::AIRSPEEDS packet2{};

    mavlink_msg_airspeeds_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.time_boot_ms, packet2.time_boot_ms);
    EXPECT_EQ(packet_in.airspeed_imu, packet2.airspeed_imu);
    EXPECT_EQ(packet_in.airspeed_pitot, packet2.airspeed_pitot);
    EXPECT_EQ(packet_in.airspeed_hot_wire, packet2.airspeed_hot_wire);
    EXPECT_EQ(packet_in.airspeed_ultrasonic, packet2.airspeed_ultrasonic);
    EXPECT_EQ(packet_in.aoa, packet2.aoa);
    EXPECT_EQ(packet_in.aoy, packet2.aoy);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F17)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F17 packet_in{};
    packet_in.sue_feed_forward = 17.0;
    packet_in.sue_turn_rate_nav = 45.0;
    packet_in.sue_turn_rate_fbw = 73.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F17 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F17 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_feed_forward, packet2.sue_feed_forward);
    EXPECT_EQ(packet1.sue_turn_rate_nav, packet2.sue_turn_rate_nav);
    EXPECT_EQ(packet1.sue_turn_rate_fbw, packet2.sue_turn_rate_fbw);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F17)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f17_t packet_c {
         17.0, 45.0, 73.0
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F17 packet_in{};
    packet_in.sue_feed_forward = 17.0;
    packet_in.sue_turn_rate_nav = 45.0;
    packet_in.sue_turn_rate_fbw = 73.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F17 packet2{};

    mavlink_msg_serial_udb_extra_f17_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_feed_forward, packet2.sue_feed_forward);
    EXPECT_EQ(packet_in.sue_turn_rate_nav, packet2.sue_turn_rate_nav);
    EXPECT_EQ(packet_in.sue_turn_rate_fbw, packet2.sue_turn_rate_fbw);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F18)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F18 packet_in{};
    packet_in.angle_of_attack_normal = 17.0;
    packet_in.angle_of_attack_inverted = 45.0;
    packet_in.elevator_trim_normal = 73.0;
    packet_in.elevator_trim_inverted = 101.0;
    packet_in.reference_speed = 129.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F18 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F18 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.angle_of_attack_normal, packet2.angle_of_attack_normal);
    EXPECT_EQ(packet1.angle_of_attack_inverted, packet2.angle_of_attack_inverted);
    EXPECT_EQ(packet1.elevator_trim_normal, packet2.elevator_trim_normal);
    EXPECT_EQ(packet1.elevator_trim_inverted, packet2.elevator_trim_inverted);
    EXPECT_EQ(packet1.reference_speed, packet2.reference_speed);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F18)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f18_t packet_c {
         17.0, 45.0, 73.0, 101.0, 129.0
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F18 packet_in{};
    packet_in.angle_of_attack_normal = 17.0;
    packet_in.angle_of_attack_inverted = 45.0;
    packet_in.elevator_trim_normal = 73.0;
    packet_in.elevator_trim_inverted = 101.0;
    packet_in.reference_speed = 129.0;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F18 packet2{};

    mavlink_msg_serial_udb_extra_f18_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.angle_of_attack_normal, packet2.angle_of_attack_normal);
    EXPECT_EQ(packet_in.angle_of_attack_inverted, packet2.angle_of_attack_inverted);
    EXPECT_EQ(packet_in.elevator_trim_normal, packet2.elevator_trim_normal);
    EXPECT_EQ(packet_in.elevator_trim_inverted, packet2.elevator_trim_inverted);
    EXPECT_EQ(packet_in.reference_speed, packet2.reference_speed);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F19)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F19 packet_in{};
    packet_in.sue_aileron_output_channel = 5;
    packet_in.sue_aileron_reversed = 72;
    packet_in.sue_elevator_output_channel = 139;
    packet_in.sue_elevator_reversed = 206;
    packet_in.sue_throttle_output_channel = 17;
    packet_in.sue_throttle_reversed = 84;
    packet_in.sue_rudder_output_channel = 151;
    packet_in.sue_rudder_reversed = 218;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F19 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F19 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_aileron_output_channel, packet2.sue_aileron_output_channel);
    EXPECT_EQ(packet1.sue_aileron_reversed, packet2.sue_aileron_reversed);
    EXPECT_EQ(packet1.sue_elevator_output_channel, packet2.sue_elevator_output_channel);
    EXPECT_EQ(packet1.sue_elevator_reversed, packet2.sue_elevator_reversed);
    EXPECT_EQ(packet1.sue_throttle_output_channel, packet2.sue_throttle_output_channel);
    EXPECT_EQ(packet1.sue_throttle_reversed, packet2.sue_throttle_reversed);
    EXPECT_EQ(packet1.sue_rudder_output_channel, packet2.sue_rudder_output_channel);
    EXPECT_EQ(packet1.sue_rudder_reversed, packet2.sue_rudder_reversed);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F19)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f19_t packet_c {
         5, 72, 139, 206, 17, 84, 151, 218
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F19 packet_in{};
    packet_in.sue_aileron_output_channel = 5;
    packet_in.sue_aileron_reversed = 72;
    packet_in.sue_elevator_output_channel = 139;
    packet_in.sue_elevator_reversed = 206;
    packet_in.sue_throttle_output_channel = 17;
    packet_in.sue_throttle_reversed = 84;
    packet_in.sue_rudder_output_channel = 151;
    packet_in.sue_rudder_reversed = 218;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F19 packet2{};

    mavlink_msg_serial_udb_extra_f19_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_aileron_output_channel, packet2.sue_aileron_output_channel);
    EXPECT_EQ(packet_in.sue_aileron_reversed, packet2.sue_aileron_reversed);
    EXPECT_EQ(packet_in.sue_elevator_output_channel, packet2.sue_elevator_output_channel);
    EXPECT_EQ(packet_in.sue_elevator_reversed, packet2.sue_elevator_reversed);
    EXPECT_EQ(packet_in.sue_throttle_output_channel, packet2.sue_throttle_output_channel);
    EXPECT_EQ(packet_in.sue_throttle_reversed, packet2.sue_throttle_reversed);
    EXPECT_EQ(packet_in.sue_rudder_output_channel, packet2.sue_rudder_output_channel);
    EXPECT_EQ(packet_in.sue_rudder_reversed, packet2.sue_rudder_reversed);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F20)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F20 packet_in{};
    packet_in.sue_number_of_inputs = 77;
    packet_in.sue_trim_value_input_1 = 17235;
    packet_in.sue_trim_value_input_2 = 17339;
    packet_in.sue_trim_value_input_3 = 17443;
    packet_in.sue_trim_value_input_4 = 17547;
    packet_in.sue_trim_value_input_5 = 17651;
    packet_in.sue_trim_value_input_6 = 17755;
    packet_in.sue_trim_value_input_7 = 17859;
    packet_in.sue_trim_value_input_8 = 17963;
    packet_in.sue_trim_value_input_9 = 18067;
    packet_in.sue_trim_value_input_10 = 18171;
    packet_in.sue_trim_value_input_11 = 18275;
    packet_in.sue_trim_value_input_12 = 18379;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F20 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F20 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_number_of_inputs, packet2.sue_number_of_inputs);
    EXPECT_EQ(packet1.sue_trim_value_input_1, packet2.sue_trim_value_input_1);
    EXPECT_EQ(packet1.sue_trim_value_input_2, packet2.sue_trim_value_input_2);
    EXPECT_EQ(packet1.sue_trim_value_input_3, packet2.sue_trim_value_input_3);
    EXPECT_EQ(packet1.sue_trim_value_input_4, packet2.sue_trim_value_input_4);
    EXPECT_EQ(packet1.sue_trim_value_input_5, packet2.sue_trim_value_input_5);
    EXPECT_EQ(packet1.sue_trim_value_input_6, packet2.sue_trim_value_input_6);
    EXPECT_EQ(packet1.sue_trim_value_input_7, packet2.sue_trim_value_input_7);
    EXPECT_EQ(packet1.sue_trim_value_input_8, packet2.sue_trim_value_input_8);
    EXPECT_EQ(packet1.sue_trim_value_input_9, packet2.sue_trim_value_input_9);
    EXPECT_EQ(packet1.sue_trim_value_input_10, packet2.sue_trim_value_input_10);
    EXPECT_EQ(packet1.sue_trim_value_input_11, packet2.sue_trim_value_input_11);
    EXPECT_EQ(packet1.sue_trim_value_input_12, packet2.sue_trim_value_input_12);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F20)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f20_t packet_c {
         17235, 17339, 17443, 17547, 17651, 17755, 17859, 17963, 18067, 18171, 18275, 18379, 77
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F20 packet_in{};
    packet_in.sue_number_of_inputs = 77;
    packet_in.sue_trim_value_input_1 = 17235;
    packet_in.sue_trim_value_input_2 = 17339;
    packet_in.sue_trim_value_input_3 = 17443;
    packet_in.sue_trim_value_input_4 = 17547;
    packet_in.sue_trim_value_input_5 = 17651;
    packet_in.sue_trim_value_input_6 = 17755;
    packet_in.sue_trim_value_input_7 = 17859;
    packet_in.sue_trim_value_input_8 = 17963;
    packet_in.sue_trim_value_input_9 = 18067;
    packet_in.sue_trim_value_input_10 = 18171;
    packet_in.sue_trim_value_input_11 = 18275;
    packet_in.sue_trim_value_input_12 = 18379;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F20 packet2{};

    mavlink_msg_serial_udb_extra_f20_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_number_of_inputs, packet2.sue_number_of_inputs);
    EXPECT_EQ(packet_in.sue_trim_value_input_1, packet2.sue_trim_value_input_1);
    EXPECT_EQ(packet_in.sue_trim_value_input_2, packet2.sue_trim_value_input_2);
    EXPECT_EQ(packet_in.sue_trim_value_input_3, packet2.sue_trim_value_input_3);
    EXPECT_EQ(packet_in.sue_trim_value_input_4, packet2.sue_trim_value_input_4);
    EXPECT_EQ(packet_in.sue_trim_value_input_5, packet2.sue_trim_value_input_5);
    EXPECT_EQ(packet_in.sue_trim_value_input_6, packet2.sue_trim_value_input_6);
    EXPECT_EQ(packet_in.sue_trim_value_input_7, packet2.sue_trim_value_input_7);
    EXPECT_EQ(packet_in.sue_trim_value_input_8, packet2.sue_trim_value_input_8);
    EXPECT_EQ(packet_in.sue_trim_value_input_9, packet2.sue_trim_value_input_9);
    EXPECT_EQ(packet_in.sue_trim_value_input_10, packet2.sue_trim_value_input_10);
    EXPECT_EQ(packet_in.sue_trim_value_input_11, packet2.sue_trim_value_input_11);
    EXPECT_EQ(packet_in.sue_trim_value_input_12, packet2.sue_trim_value_input_12);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F21)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F21 packet_in{};
    packet_in.sue_accel_x_offset = 17235;
    packet_in.sue_accel_y_offset = 17339;
    packet_in.sue_accel_z_offset = 17443;
    packet_in.sue_gyro_x_offset = 17547;
    packet_in.sue_gyro_y_offset = 17651;
    packet_in.sue_gyro_z_offset = 17755;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F21 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F21 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_accel_x_offset, packet2.sue_accel_x_offset);
    EXPECT_EQ(packet1.sue_accel_y_offset, packet2.sue_accel_y_offset);
    EXPECT_EQ(packet1.sue_accel_z_offset, packet2.sue_accel_z_offset);
    EXPECT_EQ(packet1.sue_gyro_x_offset, packet2.sue_gyro_x_offset);
    EXPECT_EQ(packet1.sue_gyro_y_offset, packet2.sue_gyro_y_offset);
    EXPECT_EQ(packet1.sue_gyro_z_offset, packet2.sue_gyro_z_offset);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F21)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f21_t packet_c {
         17235, 17339, 17443, 17547, 17651, 17755
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F21 packet_in{};
    packet_in.sue_accel_x_offset = 17235;
    packet_in.sue_accel_y_offset = 17339;
    packet_in.sue_accel_z_offset = 17443;
    packet_in.sue_gyro_x_offset = 17547;
    packet_in.sue_gyro_y_offset = 17651;
    packet_in.sue_gyro_z_offset = 17755;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F21 packet2{};

    mavlink_msg_serial_udb_extra_f21_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_accel_x_offset, packet2.sue_accel_x_offset);
    EXPECT_EQ(packet_in.sue_accel_y_offset, packet2.sue_accel_y_offset);
    EXPECT_EQ(packet_in.sue_accel_z_offset, packet2.sue_accel_z_offset);
    EXPECT_EQ(packet_in.sue_gyro_x_offset, packet2.sue_gyro_x_offset);
    EXPECT_EQ(packet_in.sue_gyro_y_offset, packet2.sue_gyro_y_offset);
    EXPECT_EQ(packet_in.sue_gyro_z_offset, packet2.sue_gyro_z_offset);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(matrixpilot, SERIAL_UDB_EXTRA_F22)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F22 packet_in{};
    packet_in.sue_accel_x_at_calibration = 17235;
    packet_in.sue_accel_y_at_calibration = 17339;
    packet_in.sue_accel_z_at_calibration = 17443;
    packet_in.sue_gyro_x_at_calibration = 17547;
    packet_in.sue_gyro_y_at_calibration = 17651;
    packet_in.sue_gyro_z_at_calibration = 17755;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F22 packet1{};
    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F22 packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.sue_accel_x_at_calibration, packet2.sue_accel_x_at_calibration);
    EXPECT_EQ(packet1.sue_accel_y_at_calibration, packet2.sue_accel_y_at_calibration);
    EXPECT_EQ(packet1.sue_accel_z_at_calibration, packet2.sue_accel_z_at_calibration);
    EXPECT_EQ(packet1.sue_gyro_x_at_calibration, packet2.sue_gyro_x_at_calibration);
    EXPECT_EQ(packet1.sue_gyro_y_at_calibration, packet2.sue_gyro_y_at_calibration);
    EXPECT_EQ(packet1.sue_gyro_z_at_calibration, packet2.sue_gyro_z_at_calibration);
}

#ifdef TEST_INTEROP
TEST(matrixpilot_interop, SERIAL_UDB_EXTRA_F22)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_serial_udb_extra_f22_t packet_c {
         17235, 17339, 17443, 17547, 17651, 17755
    };

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F22 packet_in{};
    packet_in.sue_accel_x_at_calibration = 17235;
    packet_in.sue_accel_y_at_calibration = 17339;
    packet_in.sue_accel_z_at_calibration = 17443;
    packet_in.sue_gyro_x_at_calibration = 17547;
    packet_in.sue_gyro_y_at_calibration = 17651;
    packet_in.sue_gyro_z_at_calibration = 17755;

    mavlink::matrixpilot::msg::SERIAL_UDB_EXTRA_F22 packet2{};

    mavlink_msg_serial_udb_extra_f22_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.sue_accel_x_at_calibration, packet2.sue_accel_x_at_calibration);
    EXPECT_EQ(packet_in.sue_accel_y_at_calibration, packet2.sue_accel_y_at_calibration);
    EXPECT_EQ(packet_in.sue_accel_z_at_calibration, packet2.sue_accel_z_at_calibration);
    EXPECT_EQ(packet_in.sue_gyro_x_at_calibration, packet2.sue_gyro_x_at_calibration);
    EXPECT_EQ(packet_in.sue_gyro_y_at_calibration, packet2.sue_gyro_y_at_calibration);
    EXPECT_EQ(packet_in.sue_gyro_z_at_calibration, packet2.sue_gyro_z_at_calibration);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif
