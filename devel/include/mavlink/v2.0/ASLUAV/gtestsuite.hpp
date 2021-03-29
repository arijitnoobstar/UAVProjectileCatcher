/** @file
 *	@brief MAVLink comm testsuite protocol generated from ASLUAV.xml
 *	@see http://mavlink.org
 */

#pragma once

#include <gtest/gtest.h>
#include "ASLUAV.hpp"

#ifdef TEST_INTEROP
using namespace mavlink;
#undef MAVLINK_HELPER
#include "mavlink.h"
#endif


TEST(ASLUAV, COMMAND_INT_STAMPED)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::COMMAND_INT_STAMPED packet_in{};
    packet_in.utc_time = 963497880;
    packet_in.vehicle_timestamp = 93372036854775807ULL;
    packet_in.target_system = 3;
    packet_in.target_component = 70;
    packet_in.frame = 137;
    packet_in.command = 19315;
    packet_in.current = 204;
    packet_in.autocontinue = 15;
    packet_in.param1 = 101.0;
    packet_in.param2 = 129.0;
    packet_in.param3 = 157.0;
    packet_in.param4 = 185.0;
    packet_in.x = 963498920;
    packet_in.y = 963499128;
    packet_in.z = 269.0;

    mavlink::ASLUAV::msg::COMMAND_INT_STAMPED packet1{};
    mavlink::ASLUAV::msg::COMMAND_INT_STAMPED packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.utc_time, packet2.utc_time);
    EXPECT_EQ(packet1.vehicle_timestamp, packet2.vehicle_timestamp);
    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
    EXPECT_EQ(packet1.frame, packet2.frame);
    EXPECT_EQ(packet1.command, packet2.command);
    EXPECT_EQ(packet1.current, packet2.current);
    EXPECT_EQ(packet1.autocontinue, packet2.autocontinue);
    EXPECT_EQ(packet1.param1, packet2.param1);
    EXPECT_EQ(packet1.param2, packet2.param2);
    EXPECT_EQ(packet1.param3, packet2.param3);
    EXPECT_EQ(packet1.param4, packet2.param4);
    EXPECT_EQ(packet1.x, packet2.x);
    EXPECT_EQ(packet1.y, packet2.y);
    EXPECT_EQ(packet1.z, packet2.z);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, COMMAND_INT_STAMPED)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_command_int_stamped_t packet_c {
         93372036854775807ULL, 963497880, 101.0, 129.0, 157.0, 185.0, 963498920, 963499128, 269.0, 19315, 3, 70, 137, 204, 15
    };

    mavlink::ASLUAV::msg::COMMAND_INT_STAMPED packet_in{};
    packet_in.utc_time = 963497880;
    packet_in.vehicle_timestamp = 93372036854775807ULL;
    packet_in.target_system = 3;
    packet_in.target_component = 70;
    packet_in.frame = 137;
    packet_in.command = 19315;
    packet_in.current = 204;
    packet_in.autocontinue = 15;
    packet_in.param1 = 101.0;
    packet_in.param2 = 129.0;
    packet_in.param3 = 157.0;
    packet_in.param4 = 185.0;
    packet_in.x = 963498920;
    packet_in.y = 963499128;
    packet_in.z = 269.0;

    mavlink::ASLUAV::msg::COMMAND_INT_STAMPED packet2{};

    mavlink_msg_command_int_stamped_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.utc_time, packet2.utc_time);
    EXPECT_EQ(packet_in.vehicle_timestamp, packet2.vehicle_timestamp);
    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);
    EXPECT_EQ(packet_in.frame, packet2.frame);
    EXPECT_EQ(packet_in.command, packet2.command);
    EXPECT_EQ(packet_in.current, packet2.current);
    EXPECT_EQ(packet_in.autocontinue, packet2.autocontinue);
    EXPECT_EQ(packet_in.param1, packet2.param1);
    EXPECT_EQ(packet_in.param2, packet2.param2);
    EXPECT_EQ(packet_in.param3, packet2.param3);
    EXPECT_EQ(packet_in.param4, packet2.param4);
    EXPECT_EQ(packet_in.x, packet2.x);
    EXPECT_EQ(packet_in.y, packet2.y);
    EXPECT_EQ(packet_in.z, packet2.z);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, COMMAND_LONG_STAMPED)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::COMMAND_LONG_STAMPED packet_in{};
    packet_in.utc_time = 963497880;
    packet_in.vehicle_timestamp = 93372036854775807ULL;
    packet_in.target_system = 3;
    packet_in.target_component = 70;
    packet_in.command = 19315;
    packet_in.confirmation = 137;
    packet_in.param1 = 101.0;
    packet_in.param2 = 129.0;
    packet_in.param3 = 157.0;
    packet_in.param4 = 185.0;
    packet_in.param5 = 213.0;
    packet_in.param6 = 241.0;
    packet_in.param7 = 269.0;

    mavlink::ASLUAV::msg::COMMAND_LONG_STAMPED packet1{};
    mavlink::ASLUAV::msg::COMMAND_LONG_STAMPED packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.utc_time, packet2.utc_time);
    EXPECT_EQ(packet1.vehicle_timestamp, packet2.vehicle_timestamp);
    EXPECT_EQ(packet1.target_system, packet2.target_system);
    EXPECT_EQ(packet1.target_component, packet2.target_component);
    EXPECT_EQ(packet1.command, packet2.command);
    EXPECT_EQ(packet1.confirmation, packet2.confirmation);
    EXPECT_EQ(packet1.param1, packet2.param1);
    EXPECT_EQ(packet1.param2, packet2.param2);
    EXPECT_EQ(packet1.param3, packet2.param3);
    EXPECT_EQ(packet1.param4, packet2.param4);
    EXPECT_EQ(packet1.param5, packet2.param5);
    EXPECT_EQ(packet1.param6, packet2.param6);
    EXPECT_EQ(packet1.param7, packet2.param7);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, COMMAND_LONG_STAMPED)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_command_long_stamped_t packet_c {
         93372036854775807ULL, 963497880, 101.0, 129.0, 157.0, 185.0, 213.0, 241.0, 269.0, 19315, 3, 70, 137
    };

    mavlink::ASLUAV::msg::COMMAND_LONG_STAMPED packet_in{};
    packet_in.utc_time = 963497880;
    packet_in.vehicle_timestamp = 93372036854775807ULL;
    packet_in.target_system = 3;
    packet_in.target_component = 70;
    packet_in.command = 19315;
    packet_in.confirmation = 137;
    packet_in.param1 = 101.0;
    packet_in.param2 = 129.0;
    packet_in.param3 = 157.0;
    packet_in.param4 = 185.0;
    packet_in.param5 = 213.0;
    packet_in.param6 = 241.0;
    packet_in.param7 = 269.0;

    mavlink::ASLUAV::msg::COMMAND_LONG_STAMPED packet2{};

    mavlink_msg_command_long_stamped_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.utc_time, packet2.utc_time);
    EXPECT_EQ(packet_in.vehicle_timestamp, packet2.vehicle_timestamp);
    EXPECT_EQ(packet_in.target_system, packet2.target_system);
    EXPECT_EQ(packet_in.target_component, packet2.target_component);
    EXPECT_EQ(packet_in.command, packet2.command);
    EXPECT_EQ(packet_in.confirmation, packet2.confirmation);
    EXPECT_EQ(packet_in.param1, packet2.param1);
    EXPECT_EQ(packet_in.param2, packet2.param2);
    EXPECT_EQ(packet_in.param3, packet2.param3);
    EXPECT_EQ(packet_in.param4, packet2.param4);
    EXPECT_EQ(packet_in.param5, packet2.param5);
    EXPECT_EQ(packet_in.param6, packet2.param6);
    EXPECT_EQ(packet_in.param7, packet2.param7);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, SENS_POWER)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::SENS_POWER packet_in{};
    packet_in.adc121_vspb_volt = 17.0;
    packet_in.adc121_cspb_amp = 45.0;
    packet_in.adc121_cs1_amp = 73.0;
    packet_in.adc121_cs2_amp = 101.0;

    mavlink::ASLUAV::msg::SENS_POWER packet1{};
    mavlink::ASLUAV::msg::SENS_POWER packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.adc121_vspb_volt, packet2.adc121_vspb_volt);
    EXPECT_EQ(packet1.adc121_cspb_amp, packet2.adc121_cspb_amp);
    EXPECT_EQ(packet1.adc121_cs1_amp, packet2.adc121_cs1_amp);
    EXPECT_EQ(packet1.adc121_cs2_amp, packet2.adc121_cs2_amp);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, SENS_POWER)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_sens_power_t packet_c {
         17.0, 45.0, 73.0, 101.0
    };

    mavlink::ASLUAV::msg::SENS_POWER packet_in{};
    packet_in.adc121_vspb_volt = 17.0;
    packet_in.adc121_cspb_amp = 45.0;
    packet_in.adc121_cs1_amp = 73.0;
    packet_in.adc121_cs2_amp = 101.0;

    mavlink::ASLUAV::msg::SENS_POWER packet2{};

    mavlink_msg_sens_power_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.adc121_vspb_volt, packet2.adc121_vspb_volt);
    EXPECT_EQ(packet_in.adc121_cspb_amp, packet2.adc121_cspb_amp);
    EXPECT_EQ(packet_in.adc121_cs1_amp, packet2.adc121_cs1_amp);
    EXPECT_EQ(packet_in.adc121_cs2_amp, packet2.adc121_cs2_amp);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, SENS_MPPT)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::SENS_MPPT packet_in{};
    packet_in.mppt_timestamp = 93372036854775807ULL;
    packet_in.mppt1_volt = 73.0;
    packet_in.mppt1_amp = 101.0;
    packet_in.mppt1_pwm = 18899;
    packet_in.mppt1_status = 247;
    packet_in.mppt2_volt = 129.0;
    packet_in.mppt2_amp = 157.0;
    packet_in.mppt2_pwm = 19003;
    packet_in.mppt2_status = 58;
    packet_in.mppt3_volt = 185.0;
    packet_in.mppt3_amp = 213.0;
    packet_in.mppt3_pwm = 19107;
    packet_in.mppt3_status = 125;

    mavlink::ASLUAV::msg::SENS_MPPT packet1{};
    mavlink::ASLUAV::msg::SENS_MPPT packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.mppt_timestamp, packet2.mppt_timestamp);
    EXPECT_EQ(packet1.mppt1_volt, packet2.mppt1_volt);
    EXPECT_EQ(packet1.mppt1_amp, packet2.mppt1_amp);
    EXPECT_EQ(packet1.mppt1_pwm, packet2.mppt1_pwm);
    EXPECT_EQ(packet1.mppt1_status, packet2.mppt1_status);
    EXPECT_EQ(packet1.mppt2_volt, packet2.mppt2_volt);
    EXPECT_EQ(packet1.mppt2_amp, packet2.mppt2_amp);
    EXPECT_EQ(packet1.mppt2_pwm, packet2.mppt2_pwm);
    EXPECT_EQ(packet1.mppt2_status, packet2.mppt2_status);
    EXPECT_EQ(packet1.mppt3_volt, packet2.mppt3_volt);
    EXPECT_EQ(packet1.mppt3_amp, packet2.mppt3_amp);
    EXPECT_EQ(packet1.mppt3_pwm, packet2.mppt3_pwm);
    EXPECT_EQ(packet1.mppt3_status, packet2.mppt3_status);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, SENS_MPPT)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_sens_mppt_t packet_c {
         93372036854775807ULL, 73.0, 101.0, 129.0, 157.0, 185.0, 213.0, 18899, 19003, 19107, 247, 58, 125
    };

    mavlink::ASLUAV::msg::SENS_MPPT packet_in{};
    packet_in.mppt_timestamp = 93372036854775807ULL;
    packet_in.mppt1_volt = 73.0;
    packet_in.mppt1_amp = 101.0;
    packet_in.mppt1_pwm = 18899;
    packet_in.mppt1_status = 247;
    packet_in.mppt2_volt = 129.0;
    packet_in.mppt2_amp = 157.0;
    packet_in.mppt2_pwm = 19003;
    packet_in.mppt2_status = 58;
    packet_in.mppt3_volt = 185.0;
    packet_in.mppt3_amp = 213.0;
    packet_in.mppt3_pwm = 19107;
    packet_in.mppt3_status = 125;

    mavlink::ASLUAV::msg::SENS_MPPT packet2{};

    mavlink_msg_sens_mppt_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.mppt_timestamp, packet2.mppt_timestamp);
    EXPECT_EQ(packet_in.mppt1_volt, packet2.mppt1_volt);
    EXPECT_EQ(packet_in.mppt1_amp, packet2.mppt1_amp);
    EXPECT_EQ(packet_in.mppt1_pwm, packet2.mppt1_pwm);
    EXPECT_EQ(packet_in.mppt1_status, packet2.mppt1_status);
    EXPECT_EQ(packet_in.mppt2_volt, packet2.mppt2_volt);
    EXPECT_EQ(packet_in.mppt2_amp, packet2.mppt2_amp);
    EXPECT_EQ(packet_in.mppt2_pwm, packet2.mppt2_pwm);
    EXPECT_EQ(packet_in.mppt2_status, packet2.mppt2_status);
    EXPECT_EQ(packet_in.mppt3_volt, packet2.mppt3_volt);
    EXPECT_EQ(packet_in.mppt3_amp, packet2.mppt3_amp);
    EXPECT_EQ(packet_in.mppt3_pwm, packet2.mppt3_pwm);
    EXPECT_EQ(packet_in.mppt3_status, packet2.mppt3_status);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, ASLCTRL_DATA)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::ASLCTRL_DATA packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.aslctrl_mode = 37;
    packet_in.h = 73.0;
    packet_in.hRef = 101.0;
    packet_in.hRef_t = 129.0;
    packet_in.PitchAngle = 157.0;
    packet_in.PitchAngleRef = 185.0;
    packet_in.q = 213.0;
    packet_in.qRef = 241.0;
    packet_in.uElev = 269.0;
    packet_in.uThrot = 297.0;
    packet_in.uThrot2 = 325.0;
    packet_in.nZ = 353.0;
    packet_in.AirspeedRef = 381.0;
    packet_in.SpoilersEngaged = 104;
    packet_in.YawAngle = 409.0;
    packet_in.YawAngleRef = 437.0;
    packet_in.RollAngle = 465.0;
    packet_in.RollAngleRef = 493.0;
    packet_in.p = 521.0;
    packet_in.pRef = 549.0;
    packet_in.r = 577.0;
    packet_in.rRef = 605.0;
    packet_in.uAil = 633.0;
    packet_in.uRud = 661.0;

    mavlink::ASLUAV::msg::ASLCTRL_DATA packet1{};
    mavlink::ASLUAV::msg::ASLCTRL_DATA packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.timestamp, packet2.timestamp);
    EXPECT_EQ(packet1.aslctrl_mode, packet2.aslctrl_mode);
    EXPECT_EQ(packet1.h, packet2.h);
    EXPECT_EQ(packet1.hRef, packet2.hRef);
    EXPECT_EQ(packet1.hRef_t, packet2.hRef_t);
    EXPECT_EQ(packet1.PitchAngle, packet2.PitchAngle);
    EXPECT_EQ(packet1.PitchAngleRef, packet2.PitchAngleRef);
    EXPECT_EQ(packet1.q, packet2.q);
    EXPECT_EQ(packet1.qRef, packet2.qRef);
    EXPECT_EQ(packet1.uElev, packet2.uElev);
    EXPECT_EQ(packet1.uThrot, packet2.uThrot);
    EXPECT_EQ(packet1.uThrot2, packet2.uThrot2);
    EXPECT_EQ(packet1.nZ, packet2.nZ);
    EXPECT_EQ(packet1.AirspeedRef, packet2.AirspeedRef);
    EXPECT_EQ(packet1.SpoilersEngaged, packet2.SpoilersEngaged);
    EXPECT_EQ(packet1.YawAngle, packet2.YawAngle);
    EXPECT_EQ(packet1.YawAngleRef, packet2.YawAngleRef);
    EXPECT_EQ(packet1.RollAngle, packet2.RollAngle);
    EXPECT_EQ(packet1.RollAngleRef, packet2.RollAngleRef);
    EXPECT_EQ(packet1.p, packet2.p);
    EXPECT_EQ(packet1.pRef, packet2.pRef);
    EXPECT_EQ(packet1.r, packet2.r);
    EXPECT_EQ(packet1.rRef, packet2.rRef);
    EXPECT_EQ(packet1.uAil, packet2.uAil);
    EXPECT_EQ(packet1.uRud, packet2.uRud);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, ASLCTRL_DATA)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_aslctrl_data_t packet_c {
         93372036854775807ULL, 73.0, 101.0, 129.0, 157.0, 185.0, 213.0, 241.0, 269.0, 297.0, 325.0, 353.0, 381.0, 409.0, 437.0, 465.0, 493.0, 521.0, 549.0, 577.0, 605.0, 633.0, 661.0, 37, 104
    };

    mavlink::ASLUAV::msg::ASLCTRL_DATA packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.aslctrl_mode = 37;
    packet_in.h = 73.0;
    packet_in.hRef = 101.0;
    packet_in.hRef_t = 129.0;
    packet_in.PitchAngle = 157.0;
    packet_in.PitchAngleRef = 185.0;
    packet_in.q = 213.0;
    packet_in.qRef = 241.0;
    packet_in.uElev = 269.0;
    packet_in.uThrot = 297.0;
    packet_in.uThrot2 = 325.0;
    packet_in.nZ = 353.0;
    packet_in.AirspeedRef = 381.0;
    packet_in.SpoilersEngaged = 104;
    packet_in.YawAngle = 409.0;
    packet_in.YawAngleRef = 437.0;
    packet_in.RollAngle = 465.0;
    packet_in.RollAngleRef = 493.0;
    packet_in.p = 521.0;
    packet_in.pRef = 549.0;
    packet_in.r = 577.0;
    packet_in.rRef = 605.0;
    packet_in.uAil = 633.0;
    packet_in.uRud = 661.0;

    mavlink::ASLUAV::msg::ASLCTRL_DATA packet2{};

    mavlink_msg_aslctrl_data_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.timestamp, packet2.timestamp);
    EXPECT_EQ(packet_in.aslctrl_mode, packet2.aslctrl_mode);
    EXPECT_EQ(packet_in.h, packet2.h);
    EXPECT_EQ(packet_in.hRef, packet2.hRef);
    EXPECT_EQ(packet_in.hRef_t, packet2.hRef_t);
    EXPECT_EQ(packet_in.PitchAngle, packet2.PitchAngle);
    EXPECT_EQ(packet_in.PitchAngleRef, packet2.PitchAngleRef);
    EXPECT_EQ(packet_in.q, packet2.q);
    EXPECT_EQ(packet_in.qRef, packet2.qRef);
    EXPECT_EQ(packet_in.uElev, packet2.uElev);
    EXPECT_EQ(packet_in.uThrot, packet2.uThrot);
    EXPECT_EQ(packet_in.uThrot2, packet2.uThrot2);
    EXPECT_EQ(packet_in.nZ, packet2.nZ);
    EXPECT_EQ(packet_in.AirspeedRef, packet2.AirspeedRef);
    EXPECT_EQ(packet_in.SpoilersEngaged, packet2.SpoilersEngaged);
    EXPECT_EQ(packet_in.YawAngle, packet2.YawAngle);
    EXPECT_EQ(packet_in.YawAngleRef, packet2.YawAngleRef);
    EXPECT_EQ(packet_in.RollAngle, packet2.RollAngle);
    EXPECT_EQ(packet_in.RollAngleRef, packet2.RollAngleRef);
    EXPECT_EQ(packet_in.p, packet2.p);
    EXPECT_EQ(packet_in.pRef, packet2.pRef);
    EXPECT_EQ(packet_in.r, packet2.r);
    EXPECT_EQ(packet_in.rRef, packet2.rRef);
    EXPECT_EQ(packet_in.uAil, packet2.uAil);
    EXPECT_EQ(packet_in.uRud, packet2.uRud);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, ASLCTRL_DEBUG)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::ASLCTRL_DEBUG packet_in{};
    packet_in.i32_1 = 963497464;
    packet_in.i8_1 = 113;
    packet_in.i8_2 = 180;
    packet_in.f_1 = 45.0;
    packet_in.f_2 = 73.0;
    packet_in.f_3 = 101.0;
    packet_in.f_4 = 129.0;
    packet_in.f_5 = 157.0;
    packet_in.f_6 = 185.0;
    packet_in.f_7 = 213.0;
    packet_in.f_8 = 241.0;

    mavlink::ASLUAV::msg::ASLCTRL_DEBUG packet1{};
    mavlink::ASLUAV::msg::ASLCTRL_DEBUG packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.i32_1, packet2.i32_1);
    EXPECT_EQ(packet1.i8_1, packet2.i8_1);
    EXPECT_EQ(packet1.i8_2, packet2.i8_2);
    EXPECT_EQ(packet1.f_1, packet2.f_1);
    EXPECT_EQ(packet1.f_2, packet2.f_2);
    EXPECT_EQ(packet1.f_3, packet2.f_3);
    EXPECT_EQ(packet1.f_4, packet2.f_4);
    EXPECT_EQ(packet1.f_5, packet2.f_5);
    EXPECT_EQ(packet1.f_6, packet2.f_6);
    EXPECT_EQ(packet1.f_7, packet2.f_7);
    EXPECT_EQ(packet1.f_8, packet2.f_8);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, ASLCTRL_DEBUG)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_aslctrl_debug_t packet_c {
         963497464, 45.0, 73.0, 101.0, 129.0, 157.0, 185.0, 213.0, 241.0, 113, 180
    };

    mavlink::ASLUAV::msg::ASLCTRL_DEBUG packet_in{};
    packet_in.i32_1 = 963497464;
    packet_in.i8_1 = 113;
    packet_in.i8_2 = 180;
    packet_in.f_1 = 45.0;
    packet_in.f_2 = 73.0;
    packet_in.f_3 = 101.0;
    packet_in.f_4 = 129.0;
    packet_in.f_5 = 157.0;
    packet_in.f_6 = 185.0;
    packet_in.f_7 = 213.0;
    packet_in.f_8 = 241.0;

    mavlink::ASLUAV::msg::ASLCTRL_DEBUG packet2{};

    mavlink_msg_aslctrl_debug_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.i32_1, packet2.i32_1);
    EXPECT_EQ(packet_in.i8_1, packet2.i8_1);
    EXPECT_EQ(packet_in.i8_2, packet2.i8_2);
    EXPECT_EQ(packet_in.f_1, packet2.f_1);
    EXPECT_EQ(packet_in.f_2, packet2.f_2);
    EXPECT_EQ(packet_in.f_3, packet2.f_3);
    EXPECT_EQ(packet_in.f_4, packet2.f_4);
    EXPECT_EQ(packet_in.f_5, packet2.f_5);
    EXPECT_EQ(packet_in.f_6, packet2.f_6);
    EXPECT_EQ(packet_in.f_7, packet2.f_7);
    EXPECT_EQ(packet_in.f_8, packet2.f_8);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, ASLUAV_STATUS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::ASLUAV_STATUS packet_in{};
    packet_in.LED_status = 17;
    packet_in.SATCOM_status = 84;
    packet_in.Servo_status = {{ 151, 152, 153, 154, 155, 156, 157, 158 }};
    packet_in.Motor_rpm = 17.0;

    mavlink::ASLUAV::msg::ASLUAV_STATUS packet1{};
    mavlink::ASLUAV::msg::ASLUAV_STATUS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.LED_status, packet2.LED_status);
    EXPECT_EQ(packet1.SATCOM_status, packet2.SATCOM_status);
    EXPECT_EQ(packet1.Servo_status, packet2.Servo_status);
    EXPECT_EQ(packet1.Motor_rpm, packet2.Motor_rpm);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, ASLUAV_STATUS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_asluav_status_t packet_c {
         17.0, 17, 84, { 151, 152, 153, 154, 155, 156, 157, 158 }
    };

    mavlink::ASLUAV::msg::ASLUAV_STATUS packet_in{};
    packet_in.LED_status = 17;
    packet_in.SATCOM_status = 84;
    packet_in.Servo_status = {{ 151, 152, 153, 154, 155, 156, 157, 158 }};
    packet_in.Motor_rpm = 17.0;

    mavlink::ASLUAV::msg::ASLUAV_STATUS packet2{};

    mavlink_msg_asluav_status_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.LED_status, packet2.LED_status);
    EXPECT_EQ(packet_in.SATCOM_status, packet2.SATCOM_status);
    EXPECT_EQ(packet_in.Servo_status, packet2.Servo_status);
    EXPECT_EQ(packet_in.Motor_rpm, packet2.Motor_rpm);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, EKF_EXT)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::EKF_EXT packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.Windspeed = 73.0;
    packet_in.WindDir = 101.0;
    packet_in.WindZ = 129.0;
    packet_in.Airspeed = 157.0;
    packet_in.beta = 185.0;
    packet_in.alpha = 213.0;

    mavlink::ASLUAV::msg::EKF_EXT packet1{};
    mavlink::ASLUAV::msg::EKF_EXT packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.timestamp, packet2.timestamp);
    EXPECT_EQ(packet1.Windspeed, packet2.Windspeed);
    EXPECT_EQ(packet1.WindDir, packet2.WindDir);
    EXPECT_EQ(packet1.WindZ, packet2.WindZ);
    EXPECT_EQ(packet1.Airspeed, packet2.Airspeed);
    EXPECT_EQ(packet1.beta, packet2.beta);
    EXPECT_EQ(packet1.alpha, packet2.alpha);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, EKF_EXT)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_ekf_ext_t packet_c {
         93372036854775807ULL, 73.0, 101.0, 129.0, 157.0, 185.0, 213.0
    };

    mavlink::ASLUAV::msg::EKF_EXT packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.Windspeed = 73.0;
    packet_in.WindDir = 101.0;
    packet_in.WindZ = 129.0;
    packet_in.Airspeed = 157.0;
    packet_in.beta = 185.0;
    packet_in.alpha = 213.0;

    mavlink::ASLUAV::msg::EKF_EXT packet2{};

    mavlink_msg_ekf_ext_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.timestamp, packet2.timestamp);
    EXPECT_EQ(packet_in.Windspeed, packet2.Windspeed);
    EXPECT_EQ(packet_in.WindDir, packet2.WindDir);
    EXPECT_EQ(packet_in.WindZ, packet2.WindZ);
    EXPECT_EQ(packet_in.Airspeed, packet2.Airspeed);
    EXPECT_EQ(packet_in.beta, packet2.beta);
    EXPECT_EQ(packet_in.alpha, packet2.alpha);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, ASL_OBCTRL)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::ASL_OBCTRL packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.uElev = 73.0;
    packet_in.uThrot = 101.0;
    packet_in.uThrot2 = 129.0;
    packet_in.uAilL = 157.0;
    packet_in.uAilR = 185.0;
    packet_in.uRud = 213.0;
    packet_in.obctrl_status = 101;

    mavlink::ASLUAV::msg::ASL_OBCTRL packet1{};
    mavlink::ASLUAV::msg::ASL_OBCTRL packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.timestamp, packet2.timestamp);
    EXPECT_EQ(packet1.uElev, packet2.uElev);
    EXPECT_EQ(packet1.uThrot, packet2.uThrot);
    EXPECT_EQ(packet1.uThrot2, packet2.uThrot2);
    EXPECT_EQ(packet1.uAilL, packet2.uAilL);
    EXPECT_EQ(packet1.uAilR, packet2.uAilR);
    EXPECT_EQ(packet1.uRud, packet2.uRud);
    EXPECT_EQ(packet1.obctrl_status, packet2.obctrl_status);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, ASL_OBCTRL)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_asl_obctrl_t packet_c {
         93372036854775807ULL, 73.0, 101.0, 129.0, 157.0, 185.0, 213.0, 101
    };

    mavlink::ASLUAV::msg::ASL_OBCTRL packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.uElev = 73.0;
    packet_in.uThrot = 101.0;
    packet_in.uThrot2 = 129.0;
    packet_in.uAilL = 157.0;
    packet_in.uAilR = 185.0;
    packet_in.uRud = 213.0;
    packet_in.obctrl_status = 101;

    mavlink::ASLUAV::msg::ASL_OBCTRL packet2{};

    mavlink_msg_asl_obctrl_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.timestamp, packet2.timestamp);
    EXPECT_EQ(packet_in.uElev, packet2.uElev);
    EXPECT_EQ(packet_in.uThrot, packet2.uThrot);
    EXPECT_EQ(packet_in.uThrot2, packet2.uThrot2);
    EXPECT_EQ(packet_in.uAilL, packet2.uAilL);
    EXPECT_EQ(packet_in.uAilR, packet2.uAilR);
    EXPECT_EQ(packet_in.uRud, packet2.uRud);
    EXPECT_EQ(packet_in.obctrl_status, packet2.obctrl_status);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, SENS_ATMOS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::SENS_ATMOS packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.TempAmbient = 73.0;
    packet_in.Humidity = 101.0;

    mavlink::ASLUAV::msg::SENS_ATMOS packet1{};
    mavlink::ASLUAV::msg::SENS_ATMOS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.timestamp, packet2.timestamp);
    EXPECT_EQ(packet1.TempAmbient, packet2.TempAmbient);
    EXPECT_EQ(packet1.Humidity, packet2.Humidity);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, SENS_ATMOS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_sens_atmos_t packet_c {
         93372036854775807ULL, 73.0, 101.0
    };

    mavlink::ASLUAV::msg::SENS_ATMOS packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.TempAmbient = 73.0;
    packet_in.Humidity = 101.0;

    mavlink::ASLUAV::msg::SENS_ATMOS packet2{};

    mavlink_msg_sens_atmos_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.timestamp, packet2.timestamp);
    EXPECT_EQ(packet_in.TempAmbient, packet2.TempAmbient);
    EXPECT_EQ(packet_in.Humidity, packet2.Humidity);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, SENS_BATMON)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::SENS_BATMON packet_in{};
    packet_in.batmon_timestamp = 93372036854775807ULL;
    packet_in.temperature = 73.0;
    packet_in.voltage = 18275;
    packet_in.current = 18379;
    packet_in.SoC = 125;
    packet_in.batterystatus = 18483;
    packet_in.serialnumber = 18587;
    packet_in.safetystatus = 963498088;
    packet_in.operationstatus = 963498296;
    packet_in.cellvoltage1 = 18691;
    packet_in.cellvoltage2 = 18795;
    packet_in.cellvoltage3 = 18899;
    packet_in.cellvoltage4 = 19003;
    packet_in.cellvoltage5 = 19107;
    packet_in.cellvoltage6 = 19211;

    mavlink::ASLUAV::msg::SENS_BATMON packet1{};
    mavlink::ASLUAV::msg::SENS_BATMON packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.batmon_timestamp, packet2.batmon_timestamp);
    EXPECT_EQ(packet1.temperature, packet2.temperature);
    EXPECT_EQ(packet1.voltage, packet2.voltage);
    EXPECT_EQ(packet1.current, packet2.current);
    EXPECT_EQ(packet1.SoC, packet2.SoC);
    EXPECT_EQ(packet1.batterystatus, packet2.batterystatus);
    EXPECT_EQ(packet1.serialnumber, packet2.serialnumber);
    EXPECT_EQ(packet1.safetystatus, packet2.safetystatus);
    EXPECT_EQ(packet1.operationstatus, packet2.operationstatus);
    EXPECT_EQ(packet1.cellvoltage1, packet2.cellvoltage1);
    EXPECT_EQ(packet1.cellvoltage2, packet2.cellvoltage2);
    EXPECT_EQ(packet1.cellvoltage3, packet2.cellvoltage3);
    EXPECT_EQ(packet1.cellvoltage4, packet2.cellvoltage4);
    EXPECT_EQ(packet1.cellvoltage5, packet2.cellvoltage5);
    EXPECT_EQ(packet1.cellvoltage6, packet2.cellvoltage6);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, SENS_BATMON)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_sens_batmon_t packet_c {
         93372036854775807ULL, 73.0, 963498088, 963498296, 18275, 18379, 18483, 18587, 18691, 18795, 18899, 19003, 19107, 19211, 125
    };

    mavlink::ASLUAV::msg::SENS_BATMON packet_in{};
    packet_in.batmon_timestamp = 93372036854775807ULL;
    packet_in.temperature = 73.0;
    packet_in.voltage = 18275;
    packet_in.current = 18379;
    packet_in.SoC = 125;
    packet_in.batterystatus = 18483;
    packet_in.serialnumber = 18587;
    packet_in.safetystatus = 963498088;
    packet_in.operationstatus = 963498296;
    packet_in.cellvoltage1 = 18691;
    packet_in.cellvoltage2 = 18795;
    packet_in.cellvoltage3 = 18899;
    packet_in.cellvoltage4 = 19003;
    packet_in.cellvoltage5 = 19107;
    packet_in.cellvoltage6 = 19211;

    mavlink::ASLUAV::msg::SENS_BATMON packet2{};

    mavlink_msg_sens_batmon_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.batmon_timestamp, packet2.batmon_timestamp);
    EXPECT_EQ(packet_in.temperature, packet2.temperature);
    EXPECT_EQ(packet_in.voltage, packet2.voltage);
    EXPECT_EQ(packet_in.current, packet2.current);
    EXPECT_EQ(packet_in.SoC, packet2.SoC);
    EXPECT_EQ(packet_in.batterystatus, packet2.batterystatus);
    EXPECT_EQ(packet_in.serialnumber, packet2.serialnumber);
    EXPECT_EQ(packet_in.safetystatus, packet2.safetystatus);
    EXPECT_EQ(packet_in.operationstatus, packet2.operationstatus);
    EXPECT_EQ(packet_in.cellvoltage1, packet2.cellvoltage1);
    EXPECT_EQ(packet_in.cellvoltage2, packet2.cellvoltage2);
    EXPECT_EQ(packet_in.cellvoltage3, packet2.cellvoltage3);
    EXPECT_EQ(packet_in.cellvoltage4, packet2.cellvoltage4);
    EXPECT_EQ(packet_in.cellvoltage5, packet2.cellvoltage5);
    EXPECT_EQ(packet_in.cellvoltage6, packet2.cellvoltage6);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, FW_SOARING_DATA)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::FW_SOARING_DATA packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.timestampModeChanged = 93372036854776311ULL;
    packet_in.xW = 129.0;
    packet_in.xR = 157.0;
    packet_in.xLat = 185.0;
    packet_in.xLon = 213.0;
    packet_in.VarW = 241.0;
    packet_in.VarR = 269.0;
    packet_in.VarLat = 297.0;
    packet_in.VarLon = 325.0;
    packet_in.LoiterRadius = 353.0;
    packet_in.LoiterDirection = 381.0;
    packet_in.DistToSoarPoint = 409.0;
    packet_in.vSinkExp = 437.0;
    packet_in.z1_LocalUpdraftSpeed = 465.0;
    packet_in.z2_DeltaRoll = 493.0;
    packet_in.z1_exp = 521.0;
    packet_in.z2_exp = 549.0;
    packet_in.ThermalGSNorth = 577.0;
    packet_in.ThermalGSEast = 605.0;
    packet_in.TSE_dot = 633.0;
    packet_in.DebugVar1 = 661.0;
    packet_in.DebugVar2 = 689.0;
    packet_in.ControlMode = 49;
    packet_in.valid = 116;

    mavlink::ASLUAV::msg::FW_SOARING_DATA packet1{};
    mavlink::ASLUAV::msg::FW_SOARING_DATA packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.timestamp, packet2.timestamp);
    EXPECT_EQ(packet1.timestampModeChanged, packet2.timestampModeChanged);
    EXPECT_EQ(packet1.xW, packet2.xW);
    EXPECT_EQ(packet1.xR, packet2.xR);
    EXPECT_EQ(packet1.xLat, packet2.xLat);
    EXPECT_EQ(packet1.xLon, packet2.xLon);
    EXPECT_EQ(packet1.VarW, packet2.VarW);
    EXPECT_EQ(packet1.VarR, packet2.VarR);
    EXPECT_EQ(packet1.VarLat, packet2.VarLat);
    EXPECT_EQ(packet1.VarLon, packet2.VarLon);
    EXPECT_EQ(packet1.LoiterRadius, packet2.LoiterRadius);
    EXPECT_EQ(packet1.LoiterDirection, packet2.LoiterDirection);
    EXPECT_EQ(packet1.DistToSoarPoint, packet2.DistToSoarPoint);
    EXPECT_EQ(packet1.vSinkExp, packet2.vSinkExp);
    EXPECT_EQ(packet1.z1_LocalUpdraftSpeed, packet2.z1_LocalUpdraftSpeed);
    EXPECT_EQ(packet1.z2_DeltaRoll, packet2.z2_DeltaRoll);
    EXPECT_EQ(packet1.z1_exp, packet2.z1_exp);
    EXPECT_EQ(packet1.z2_exp, packet2.z2_exp);
    EXPECT_EQ(packet1.ThermalGSNorth, packet2.ThermalGSNorth);
    EXPECT_EQ(packet1.ThermalGSEast, packet2.ThermalGSEast);
    EXPECT_EQ(packet1.TSE_dot, packet2.TSE_dot);
    EXPECT_EQ(packet1.DebugVar1, packet2.DebugVar1);
    EXPECT_EQ(packet1.DebugVar2, packet2.DebugVar2);
    EXPECT_EQ(packet1.ControlMode, packet2.ControlMode);
    EXPECT_EQ(packet1.valid, packet2.valid);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, FW_SOARING_DATA)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_fw_soaring_data_t packet_c {
         93372036854775807ULL, 93372036854776311ULL, 129.0, 157.0, 185.0, 213.0, 241.0, 269.0, 297.0, 325.0, 353.0, 381.0, 409.0, 437.0, 465.0, 493.0, 521.0, 549.0, 577.0, 605.0, 633.0, 661.0, 689.0, 49, 116
    };

    mavlink::ASLUAV::msg::FW_SOARING_DATA packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.timestampModeChanged = 93372036854776311ULL;
    packet_in.xW = 129.0;
    packet_in.xR = 157.0;
    packet_in.xLat = 185.0;
    packet_in.xLon = 213.0;
    packet_in.VarW = 241.0;
    packet_in.VarR = 269.0;
    packet_in.VarLat = 297.0;
    packet_in.VarLon = 325.0;
    packet_in.LoiterRadius = 353.0;
    packet_in.LoiterDirection = 381.0;
    packet_in.DistToSoarPoint = 409.0;
    packet_in.vSinkExp = 437.0;
    packet_in.z1_LocalUpdraftSpeed = 465.0;
    packet_in.z2_DeltaRoll = 493.0;
    packet_in.z1_exp = 521.0;
    packet_in.z2_exp = 549.0;
    packet_in.ThermalGSNorth = 577.0;
    packet_in.ThermalGSEast = 605.0;
    packet_in.TSE_dot = 633.0;
    packet_in.DebugVar1 = 661.0;
    packet_in.DebugVar2 = 689.0;
    packet_in.ControlMode = 49;
    packet_in.valid = 116;

    mavlink::ASLUAV::msg::FW_SOARING_DATA packet2{};

    mavlink_msg_fw_soaring_data_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.timestamp, packet2.timestamp);
    EXPECT_EQ(packet_in.timestampModeChanged, packet2.timestampModeChanged);
    EXPECT_EQ(packet_in.xW, packet2.xW);
    EXPECT_EQ(packet_in.xR, packet2.xR);
    EXPECT_EQ(packet_in.xLat, packet2.xLat);
    EXPECT_EQ(packet_in.xLon, packet2.xLon);
    EXPECT_EQ(packet_in.VarW, packet2.VarW);
    EXPECT_EQ(packet_in.VarR, packet2.VarR);
    EXPECT_EQ(packet_in.VarLat, packet2.VarLat);
    EXPECT_EQ(packet_in.VarLon, packet2.VarLon);
    EXPECT_EQ(packet_in.LoiterRadius, packet2.LoiterRadius);
    EXPECT_EQ(packet_in.LoiterDirection, packet2.LoiterDirection);
    EXPECT_EQ(packet_in.DistToSoarPoint, packet2.DistToSoarPoint);
    EXPECT_EQ(packet_in.vSinkExp, packet2.vSinkExp);
    EXPECT_EQ(packet_in.z1_LocalUpdraftSpeed, packet2.z1_LocalUpdraftSpeed);
    EXPECT_EQ(packet_in.z2_DeltaRoll, packet2.z2_DeltaRoll);
    EXPECT_EQ(packet_in.z1_exp, packet2.z1_exp);
    EXPECT_EQ(packet_in.z2_exp, packet2.z2_exp);
    EXPECT_EQ(packet_in.ThermalGSNorth, packet2.ThermalGSNorth);
    EXPECT_EQ(packet_in.ThermalGSEast, packet2.ThermalGSEast);
    EXPECT_EQ(packet_in.TSE_dot, packet2.TSE_dot);
    EXPECT_EQ(packet_in.DebugVar1, packet2.DebugVar1);
    EXPECT_EQ(packet_in.DebugVar2, packet2.DebugVar2);
    EXPECT_EQ(packet_in.ControlMode, packet2.ControlMode);
    EXPECT_EQ(packet_in.valid, packet2.valid);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, SENSORPOD_STATUS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::SENSORPOD_STATUS packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.visensor_rate_1 = 163;
    packet_in.visensor_rate_2 = 230;
    packet_in.visensor_rate_3 = 41;
    packet_in.visensor_rate_4 = 108;
    packet_in.recording_nodes_count = 175;
    packet_in.cpu_temp = 242;
    packet_in.free_space = 17651;

    mavlink::ASLUAV::msg::SENSORPOD_STATUS packet1{};
    mavlink::ASLUAV::msg::SENSORPOD_STATUS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.timestamp, packet2.timestamp);
    EXPECT_EQ(packet1.visensor_rate_1, packet2.visensor_rate_1);
    EXPECT_EQ(packet1.visensor_rate_2, packet2.visensor_rate_2);
    EXPECT_EQ(packet1.visensor_rate_3, packet2.visensor_rate_3);
    EXPECT_EQ(packet1.visensor_rate_4, packet2.visensor_rate_4);
    EXPECT_EQ(packet1.recording_nodes_count, packet2.recording_nodes_count);
    EXPECT_EQ(packet1.cpu_temp, packet2.cpu_temp);
    EXPECT_EQ(packet1.free_space, packet2.free_space);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, SENSORPOD_STATUS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_sensorpod_status_t packet_c {
         93372036854775807ULL, 17651, 163, 230, 41, 108, 175, 242
    };

    mavlink::ASLUAV::msg::SENSORPOD_STATUS packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.visensor_rate_1 = 163;
    packet_in.visensor_rate_2 = 230;
    packet_in.visensor_rate_3 = 41;
    packet_in.visensor_rate_4 = 108;
    packet_in.recording_nodes_count = 175;
    packet_in.cpu_temp = 242;
    packet_in.free_space = 17651;

    mavlink::ASLUAV::msg::SENSORPOD_STATUS packet2{};

    mavlink_msg_sensorpod_status_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.timestamp, packet2.timestamp);
    EXPECT_EQ(packet_in.visensor_rate_1, packet2.visensor_rate_1);
    EXPECT_EQ(packet_in.visensor_rate_2, packet2.visensor_rate_2);
    EXPECT_EQ(packet_in.visensor_rate_3, packet2.visensor_rate_3);
    EXPECT_EQ(packet_in.visensor_rate_4, packet2.visensor_rate_4);
    EXPECT_EQ(packet_in.recording_nodes_count, packet2.recording_nodes_count);
    EXPECT_EQ(packet_in.cpu_temp, packet2.cpu_temp);
    EXPECT_EQ(packet_in.free_space, packet2.free_space);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, SENS_POWER_BOARD)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::SENS_POWER_BOARD packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.pwr_brd_status = 137;
    packet_in.pwr_brd_led_status = 204;
    packet_in.pwr_brd_system_volt = 73.0;
    packet_in.pwr_brd_servo_volt = 101.0;
    packet_in.pwr_brd_digital_volt = 129.0;
    packet_in.pwr_brd_mot_l_amp = 157.0;
    packet_in.pwr_brd_mot_r_amp = 185.0;
    packet_in.pwr_brd_analog_amp = 213.0;
    packet_in.pwr_brd_digital_amp = 241.0;
    packet_in.pwr_brd_ext_amp = 269.0;
    packet_in.pwr_brd_aux_amp = 297.0;

    mavlink::ASLUAV::msg::SENS_POWER_BOARD packet1{};
    mavlink::ASLUAV::msg::SENS_POWER_BOARD packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.timestamp, packet2.timestamp);
    EXPECT_EQ(packet1.pwr_brd_status, packet2.pwr_brd_status);
    EXPECT_EQ(packet1.pwr_brd_led_status, packet2.pwr_brd_led_status);
    EXPECT_EQ(packet1.pwr_brd_system_volt, packet2.pwr_brd_system_volt);
    EXPECT_EQ(packet1.pwr_brd_servo_volt, packet2.pwr_brd_servo_volt);
    EXPECT_EQ(packet1.pwr_brd_digital_volt, packet2.pwr_brd_digital_volt);
    EXPECT_EQ(packet1.pwr_brd_mot_l_amp, packet2.pwr_brd_mot_l_amp);
    EXPECT_EQ(packet1.pwr_brd_mot_r_amp, packet2.pwr_brd_mot_r_amp);
    EXPECT_EQ(packet1.pwr_brd_analog_amp, packet2.pwr_brd_analog_amp);
    EXPECT_EQ(packet1.pwr_brd_digital_amp, packet2.pwr_brd_digital_amp);
    EXPECT_EQ(packet1.pwr_brd_ext_amp, packet2.pwr_brd_ext_amp);
    EXPECT_EQ(packet1.pwr_brd_aux_amp, packet2.pwr_brd_aux_amp);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, SENS_POWER_BOARD)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_sens_power_board_t packet_c {
         93372036854775807ULL, 73.0, 101.0, 129.0, 157.0, 185.0, 213.0, 241.0, 269.0, 297.0, 137, 204
    };

    mavlink::ASLUAV::msg::SENS_POWER_BOARD packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.pwr_brd_status = 137;
    packet_in.pwr_brd_led_status = 204;
    packet_in.pwr_brd_system_volt = 73.0;
    packet_in.pwr_brd_servo_volt = 101.0;
    packet_in.pwr_brd_digital_volt = 129.0;
    packet_in.pwr_brd_mot_l_amp = 157.0;
    packet_in.pwr_brd_mot_r_amp = 185.0;
    packet_in.pwr_brd_analog_amp = 213.0;
    packet_in.pwr_brd_digital_amp = 241.0;
    packet_in.pwr_brd_ext_amp = 269.0;
    packet_in.pwr_brd_aux_amp = 297.0;

    mavlink::ASLUAV::msg::SENS_POWER_BOARD packet2{};

    mavlink_msg_sens_power_board_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.timestamp, packet2.timestamp);
    EXPECT_EQ(packet_in.pwr_brd_status, packet2.pwr_brd_status);
    EXPECT_EQ(packet_in.pwr_brd_led_status, packet2.pwr_brd_led_status);
    EXPECT_EQ(packet_in.pwr_brd_system_volt, packet2.pwr_brd_system_volt);
    EXPECT_EQ(packet_in.pwr_brd_servo_volt, packet2.pwr_brd_servo_volt);
    EXPECT_EQ(packet_in.pwr_brd_digital_volt, packet2.pwr_brd_digital_volt);
    EXPECT_EQ(packet_in.pwr_brd_mot_l_amp, packet2.pwr_brd_mot_l_amp);
    EXPECT_EQ(packet_in.pwr_brd_mot_r_amp, packet2.pwr_brd_mot_r_amp);
    EXPECT_EQ(packet_in.pwr_brd_analog_amp, packet2.pwr_brd_analog_amp);
    EXPECT_EQ(packet_in.pwr_brd_digital_amp, packet2.pwr_brd_digital_amp);
    EXPECT_EQ(packet_in.pwr_brd_ext_amp, packet2.pwr_brd_ext_amp);
    EXPECT_EQ(packet_in.pwr_brd_aux_amp, packet2.pwr_brd_aux_amp);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif

TEST(ASLUAV, GSM_LINK_STATUS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::ASLUAV::msg::GSM_LINK_STATUS packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.gsm_modem_type = 29;
    packet_in.gsm_link_type = 96;
    packet_in.rssi = 163;
    packet_in.rsrp_rscp = 230;
    packet_in.sinr_ecio = 41;
    packet_in.rsrq = 108;

    mavlink::ASLUAV::msg::GSM_LINK_STATUS packet1{};
    mavlink::ASLUAV::msg::GSM_LINK_STATUS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.timestamp, packet2.timestamp);
    EXPECT_EQ(packet1.gsm_modem_type, packet2.gsm_modem_type);
    EXPECT_EQ(packet1.gsm_link_type, packet2.gsm_link_type);
    EXPECT_EQ(packet1.rssi, packet2.rssi);
    EXPECT_EQ(packet1.rsrp_rscp, packet2.rsrp_rscp);
    EXPECT_EQ(packet1.sinr_ecio, packet2.sinr_ecio);
    EXPECT_EQ(packet1.rsrq, packet2.rsrq);
}

#ifdef TEST_INTEROP
TEST(ASLUAV_interop, GSM_LINK_STATUS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_gsm_link_status_t packet_c {
         93372036854775807ULL, 29, 96, 163, 230, 41, 108
    };

    mavlink::ASLUAV::msg::GSM_LINK_STATUS packet_in{};
    packet_in.timestamp = 93372036854775807ULL;
    packet_in.gsm_modem_type = 29;
    packet_in.gsm_link_type = 96;
    packet_in.rssi = 163;
    packet_in.rsrp_rscp = 230;
    packet_in.sinr_ecio = 41;
    packet_in.rsrq = 108;

    mavlink::ASLUAV::msg::GSM_LINK_STATUS packet2{};

    mavlink_msg_gsm_link_status_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.timestamp, packet2.timestamp);
    EXPECT_EQ(packet_in.gsm_modem_type, packet2.gsm_modem_type);
    EXPECT_EQ(packet_in.gsm_link_type, packet2.gsm_link_type);
    EXPECT_EQ(packet_in.rssi, packet2.rssi);
    EXPECT_EQ(packet_in.rsrp_rscp, packet2.rsrp_rscp);
    EXPECT_EQ(packet_in.sinr_ecio, packet2.sinr_ecio);
    EXPECT_EQ(packet_in.rsrq, packet2.rsrq);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif
