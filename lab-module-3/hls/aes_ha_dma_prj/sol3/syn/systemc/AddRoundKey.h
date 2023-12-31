// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _AddRoundKey_HH_
#define _AddRoundKey_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct AddRoundKey : public sc_module {
    // Port declarations 45
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<6> > round;
    sc_in< sc_lv<8> > state_0_0_read;
    sc_in< sc_lv<8> > state_0_1_read;
    sc_in< sc_lv<8> > state_0_2_read;
    sc_in< sc_lv<8> > state_0_3_read;
    sc_in< sc_lv<8> > state_1_0_read;
    sc_in< sc_lv<8> > state_1_1_read;
    sc_in< sc_lv<8> > state_1_2_read;
    sc_in< sc_lv<8> > state_1_3_read;
    sc_in< sc_lv<8> > state_2_0_read;
    sc_in< sc_lv<8> > state_2_1_read;
    sc_in< sc_lv<8> > state_2_2_read;
    sc_in< sc_lv<8> > state_2_3_read;
    sc_in< sc_lv<8> > state_3_0_read;
    sc_in< sc_lv<8> > state_3_1_read;
    sc_in< sc_lv<8> > state_3_2_read;
    sc_in< sc_lv<8> > state_3_3_read;
    sc_out< sc_lv<8> > RoundKey_address0;
    sc_out< sc_logic > RoundKey_ce0;
    sc_in< sc_lv<8> > RoundKey_q0;
    sc_out< sc_lv<8> > RoundKey_address1;
    sc_out< sc_logic > RoundKey_ce1;
    sc_in< sc_lv<8> > RoundKey_q1;
    sc_out< sc_lv<8> > ap_return_0;
    sc_out< sc_lv<8> > ap_return_1;
    sc_out< sc_lv<8> > ap_return_2;
    sc_out< sc_lv<8> > ap_return_3;
    sc_out< sc_lv<8> > ap_return_4;
    sc_out< sc_lv<8> > ap_return_5;
    sc_out< sc_lv<8> > ap_return_6;
    sc_out< sc_lv<8> > ap_return_7;
    sc_out< sc_lv<8> > ap_return_8;
    sc_out< sc_lv<8> > ap_return_9;
    sc_out< sc_lv<8> > ap_return_10;
    sc_out< sc_lv<8> > ap_return_11;
    sc_out< sc_lv<8> > ap_return_12;
    sc_out< sc_lv<8> > ap_return_13;
    sc_out< sc_lv<8> > ap_return_14;
    sc_out< sc_lv<8> > ap_return_15;


    // Module declarations
    AddRoundKey(sc_module_name name);
    SC_HAS_PROCESS(AddRoundKey);

    ~AddRoundKey();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > shl_ln_fu_321_p3;
    sc_signal< sc_lv<8> > shl_ln_reg_663;
    sc_signal< sc_lv<8> > RoundKey_load_reg_691;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > RoundKey_load_1_reg_696;
    sc_signal< sc_lv<8> > RoundKey_load_2_reg_711;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > RoundKey_load_3_reg_716;
    sc_signal< sc_lv<8> > RoundKey_load_4_reg_731;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > RoundKey_load_5_reg_736;
    sc_signal< sc_lv<8> > RoundKey_load_6_reg_751;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > RoundKey_load_7_reg_756;
    sc_signal< sc_lv<8> > RoundKey_load_8_reg_771;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > RoundKey_load_9_reg_776;
    sc_signal< sc_lv<8> > RoundKey_load_10_reg_791;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > RoundKey_load_11_reg_796;
    sc_signal< sc_lv<8> > RoundKey_load_12_reg_811;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > RoundKey_load_13_reg_816;
    sc_signal< sc_lv<64> > zext_ln274_fu_329_p1;
    sc_signal< sc_lv<64> > zext_ln274_1_fu_340_p1;
    sc_signal< sc_lv<64> > zext_ln274_2_fu_350_p1;
    sc_signal< sc_lv<64> > zext_ln274_3_fu_360_p1;
    sc_signal< sc_lv<64> > zext_ln274_4_fu_370_p1;
    sc_signal< sc_lv<64> > zext_ln274_5_fu_380_p1;
    sc_signal< sc_lv<64> > zext_ln274_6_fu_390_p1;
    sc_signal< sc_lv<64> > zext_ln274_7_fu_400_p1;
    sc_signal< sc_lv<64> > zext_ln274_8_fu_410_p1;
    sc_signal< sc_lv<64> > zext_ln274_9_fu_420_p1;
    sc_signal< sc_lv<64> > zext_ln274_10_fu_430_p1;
    sc_signal< sc_lv<64> > zext_ln274_11_fu_440_p1;
    sc_signal< sc_lv<64> > zext_ln274_12_fu_450_p1;
    sc_signal< sc_lv<64> > zext_ln274_13_fu_460_p1;
    sc_signal< sc_lv<64> > zext_ln274_14_fu_470_p1;
    sc_signal< sc_lv<64> > zext_ln274_15_fu_480_p1;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<4> > trunc_ln274_fu_317_p1;
    sc_signal< sc_lv<8> > or_ln274_fu_334_p2;
    sc_signal< sc_lv<8> > or_ln274_1_fu_345_p2;
    sc_signal< sc_lv<8> > or_ln274_2_fu_355_p2;
    sc_signal< sc_lv<8> > or_ln274_3_fu_365_p2;
    sc_signal< sc_lv<8> > or_ln274_4_fu_375_p2;
    sc_signal< sc_lv<8> > or_ln274_5_fu_385_p2;
    sc_signal< sc_lv<8> > or_ln274_6_fu_395_p2;
    sc_signal< sc_lv<8> > or_ln274_7_fu_405_p2;
    sc_signal< sc_lv<8> > or_ln274_8_fu_415_p2;
    sc_signal< sc_lv<8> > or_ln274_9_fu_425_p2;
    sc_signal< sc_lv<8> > or_ln274_10_fu_435_p2;
    sc_signal< sc_lv<8> > or_ln274_11_fu_445_p2;
    sc_signal< sc_lv<8> > or_ln274_12_fu_455_p2;
    sc_signal< sc_lv<8> > or_ln274_13_fu_465_p2;
    sc_signal< sc_lv<8> > or_ln274_14_fu_475_p2;
    sc_signal< sc_lv<8> > xor_ln274_fu_485_p2;
    sc_signal< sc_lv<8> > xor_ln274_1_fu_490_p2;
    sc_signal< sc_lv<8> > xor_ln274_2_fu_495_p2;
    sc_signal< sc_lv<8> > xor_ln274_3_fu_500_p2;
    sc_signal< sc_lv<8> > xor_ln274_4_fu_505_p2;
    sc_signal< sc_lv<8> > xor_ln274_5_fu_510_p2;
    sc_signal< sc_lv<8> > xor_ln274_6_fu_515_p2;
    sc_signal< sc_lv<8> > xor_ln274_7_fu_520_p2;
    sc_signal< sc_lv<8> > xor_ln274_8_fu_525_p2;
    sc_signal< sc_lv<8> > xor_ln274_9_fu_530_p2;
    sc_signal< sc_lv<8> > xor_ln274_10_fu_535_p2;
    sc_signal< sc_lv<8> > xor_ln274_11_fu_540_p2;
    sc_signal< sc_lv<8> > xor_ln274_12_fu_545_p2;
    sc_signal< sc_lv<8> > xor_ln274_13_fu_550_p2;
    sc_signal< sc_lv<8> > xor_ln274_14_fu_555_p2;
    sc_signal< sc_lv<8> > xor_ln274_15_fu_561_p2;
    sc_signal< sc_lv<8> > ap_return_0_preg;
    sc_signal< sc_lv<8> > ap_return_1_preg;
    sc_signal< sc_lv<8> > ap_return_2_preg;
    sc_signal< sc_lv<8> > ap_return_3_preg;
    sc_signal< sc_lv<8> > ap_return_4_preg;
    sc_signal< sc_lv<8> > ap_return_5_preg;
    sc_signal< sc_lv<8> > ap_return_6_preg;
    sc_signal< sc_lv<8> > ap_return_7_preg;
    sc_signal< sc_lv<8> > ap_return_8_preg;
    sc_signal< sc_lv<8> > ap_return_9_preg;
    sc_signal< sc_lv<8> > ap_return_10_preg;
    sc_signal< sc_lv<8> > ap_return_11_preg;
    sc_signal< sc_lv<8> > ap_return_12_preg;
    sc_signal< sc_lv<8> > ap_return_13_preg;
    sc_signal< sc_lv<8> > ap_return_14_preg;
    sc_signal< sc_lv<8> > ap_return_15_preg;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<8> ap_const_lv8_3;
    static const sc_lv<8> ap_const_lv8_4;
    static const sc_lv<8> ap_const_lv8_5;
    static const sc_lv<8> ap_const_lv8_6;
    static const sc_lv<8> ap_const_lv8_7;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<8> ap_const_lv8_9;
    static const sc_lv<8> ap_const_lv8_A;
    static const sc_lv<8> ap_const_lv8_B;
    static const sc_lv<8> ap_const_lv8_C;
    static const sc_lv<8> ap_const_lv8_D;
    static const sc_lv<8> ap_const_lv8_E;
    static const sc_lv<8> ap_const_lv8_F;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_RoundKey_address0();
    void thread_RoundKey_address1();
    void thread_RoundKey_ce0();
    void thread_RoundKey_ce1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_10();
    void thread_ap_return_11();
    void thread_ap_return_12();
    void thread_ap_return_13();
    void thread_ap_return_14();
    void thread_ap_return_15();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_ap_return_6();
    void thread_ap_return_7();
    void thread_ap_return_8();
    void thread_ap_return_9();
    void thread_or_ln274_10_fu_435_p2();
    void thread_or_ln274_11_fu_445_p2();
    void thread_or_ln274_12_fu_455_p2();
    void thread_or_ln274_13_fu_465_p2();
    void thread_or_ln274_14_fu_475_p2();
    void thread_or_ln274_1_fu_345_p2();
    void thread_or_ln274_2_fu_355_p2();
    void thread_or_ln274_3_fu_365_p2();
    void thread_or_ln274_4_fu_375_p2();
    void thread_or_ln274_5_fu_385_p2();
    void thread_or_ln274_6_fu_395_p2();
    void thread_or_ln274_7_fu_405_p2();
    void thread_or_ln274_8_fu_415_p2();
    void thread_or_ln274_9_fu_425_p2();
    void thread_or_ln274_fu_334_p2();
    void thread_shl_ln_fu_321_p3();
    void thread_trunc_ln274_fu_317_p1();
    void thread_xor_ln274_10_fu_535_p2();
    void thread_xor_ln274_11_fu_540_p2();
    void thread_xor_ln274_12_fu_545_p2();
    void thread_xor_ln274_13_fu_550_p2();
    void thread_xor_ln274_14_fu_555_p2();
    void thread_xor_ln274_15_fu_561_p2();
    void thread_xor_ln274_1_fu_490_p2();
    void thread_xor_ln274_2_fu_495_p2();
    void thread_xor_ln274_3_fu_500_p2();
    void thread_xor_ln274_4_fu_505_p2();
    void thread_xor_ln274_5_fu_510_p2();
    void thread_xor_ln274_6_fu_515_p2();
    void thread_xor_ln274_7_fu_520_p2();
    void thread_xor_ln274_8_fu_525_p2();
    void thread_xor_ln274_9_fu_530_p2();
    void thread_xor_ln274_fu_485_p2();
    void thread_zext_ln274_10_fu_430_p1();
    void thread_zext_ln274_11_fu_440_p1();
    void thread_zext_ln274_12_fu_450_p1();
    void thread_zext_ln274_13_fu_460_p1();
    void thread_zext_ln274_14_fu_470_p1();
    void thread_zext_ln274_15_fu_480_p1();
    void thread_zext_ln274_1_fu_340_p1();
    void thread_zext_ln274_2_fu_350_p1();
    void thread_zext_ln274_3_fu_360_p1();
    void thread_zext_ln274_4_fu_370_p1();
    void thread_zext_ln274_5_fu_380_p1();
    void thread_zext_ln274_6_fu_390_p1();
    void thread_zext_ln274_7_fu_400_p1();
    void thread_zext_ln274_8_fu_410_p1();
    void thread_zext_ln274_9_fu_420_p1();
    void thread_zext_ln274_fu_329_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
