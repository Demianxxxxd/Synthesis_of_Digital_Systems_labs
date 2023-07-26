// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _write_data_HH_
#define _write_data_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct write_data : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > buf_r_address0;
    sc_out< sc_logic > buf_r_ce0;
    sc_in< sc_lv<16> > buf_r_q0;
    sc_out< sc_lv<6> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<16> > output_r_d0;


    // Module declarations
    write_data(sc_module_name name);
    SC_HAS_PROCESS(write_data);

    ~write_data();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > indvar_flatten_reg_75;
    sc_signal< sc_lv<4> > r_0_reg_86;
    sc_signal< sc_lv<4> > c_0_reg_97;
    sc_signal< sc_lv<1> > icmp_ln115_fu_108_p2;
    sc_signal< sc_lv<1> > icmp_ln115_reg_207;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<7> > add_ln115_fu_114_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<4> > select_ln115_1_fu_140_p3;
    sc_signal< sc_lv<4> > select_ln115_1_reg_216;
    sc_signal< sc_lv<6> > add_ln118_fu_191_p2;
    sc_signal< sc_lv<6> > add_ln118_reg_226;
    sc_signal< sc_lv<4> > c_fu_197_p2;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<4> > ap_phi_mux_r_0_phi_fu_90_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln118_1_fu_186_p1;
    sc_signal< sc_lv<64> > zext_ln118_2_fu_203_p1;
    sc_signal< sc_lv<1> > icmp_ln117_fu_126_p2;
    sc_signal< sc_lv<4> > r_fu_120_p2;
    sc_signal< sc_lv<7> > tmp_fu_148_p3;
    sc_signal< sc_lv<3> > trunc_ln115_fu_160_p1;
    sc_signal< sc_lv<4> > select_ln115_fu_132_p3;
    sc_signal< sc_lv<8> > zext_ln115_fu_156_p1;
    sc_signal< sc_lv<8> > zext_ln118_fu_176_p1;
    sc_signal< sc_lv<8> > add_ln118_1_fu_180_p2;
    sc_signal< sc_lv<6> > zext_ln117_fu_172_p1;
    sc_signal< sc_lv<6> > shl_ln118_mid2_fu_164_p3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln115_fu_114_p2();
    void thread_add_ln118_1_fu_180_p2();
    void thread_add_ln118_fu_191_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_r_0_phi_fu_90_p4();
    void thread_ap_ready();
    void thread_buf_r_address0();
    void thread_buf_r_ce0();
    void thread_c_fu_197_p2();
    void thread_icmp_ln115_fu_108_p2();
    void thread_icmp_ln117_fu_126_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_r_fu_120_p2();
    void thread_select_ln115_1_fu_140_p3();
    void thread_select_ln115_fu_132_p3();
    void thread_shl_ln118_mid2_fu_164_p3();
    void thread_tmp_fu_148_p3();
    void thread_trunc_ln115_fu_160_p1();
    void thread_zext_ln115_fu_156_p1();
    void thread_zext_ln117_fu_172_p1();
    void thread_zext_ln118_1_fu_186_p1();
    void thread_zext_ln118_2_fu_203_p1();
    void thread_zext_ln118_fu_176_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
