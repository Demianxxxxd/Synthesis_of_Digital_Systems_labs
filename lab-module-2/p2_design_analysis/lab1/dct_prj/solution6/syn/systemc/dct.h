// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dct_HH_
#define _dct_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "read_data.h"
#include "Loop_Row_DCT_Loop_pr.h"
#include "Loop_Xpose_Row_Outer.h"
#include "Loop_Col_DCT_Loop_pr.h"
#include "Loop_Xpose_Col_Outer.h"
#include "write_data.h"
#include "dct_row_outbuf_i.h"
#include "dct_col_inbuf_0.h"

namespace ap_rtl {

struct dct : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_out< sc_lv<6> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_out< sc_lv<16> > input_r_d0;
    sc_in< sc_lv<16> > input_r_q0;
    sc_out< sc_logic > input_r_we0;
    sc_out< sc_lv<6> > input_r_address1;
    sc_out< sc_logic > input_r_ce1;
    sc_out< sc_lv<16> > input_r_d1;
    sc_in< sc_lv<16> > input_r_q1;
    sc_out< sc_logic > input_r_we1;
    sc_out< sc_lv<6> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_lv<16> > output_r_d0;
    sc_in< sc_lv<16> > output_r_q0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<6> > output_r_address1;
    sc_out< sc_logic > output_r_ce1;
    sc_out< sc_lv<16> > output_r_d1;
    sc_in< sc_lv<16> > output_r_q1;
    sc_out< sc_logic > output_r_we1;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_signal< sc_logic > ap_var_for_const2;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<16> > ap_var_for_const1;


    // Module declarations
    dct(sc_module_name name);
    SC_HAS_PROCESS(dct);

    ~dct();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dct_row_outbuf_i* row_outbuf_i_U;
    dct_row_outbuf_i* col_outbuf_i_U;
    dct_col_inbuf_0* col_inbuf_0_U;
    dct_col_inbuf_0* col_inbuf_1_U;
    dct_col_inbuf_0* col_inbuf_2_U;
    dct_col_inbuf_0* col_inbuf_3_U;
    dct_col_inbuf_0* col_inbuf_4_U;
    dct_col_inbuf_0* col_inbuf_5_U;
    dct_col_inbuf_0* col_inbuf_6_U;
    dct_col_inbuf_0* col_inbuf_7_U;
    dct_col_inbuf_0* buf_2d_in_0_U;
    dct_col_inbuf_0* buf_2d_in_1_U;
    dct_col_inbuf_0* buf_2d_in_2_U;
    dct_col_inbuf_0* buf_2d_in_3_U;
    dct_col_inbuf_0* buf_2d_in_4_U;
    dct_col_inbuf_0* buf_2d_in_5_U;
    dct_col_inbuf_0* buf_2d_in_6_U;
    dct_col_inbuf_0* buf_2d_in_7_U;
    dct_row_outbuf_i* buf_2d_out_U;
    read_data* read_data_U0;
    Loop_Row_DCT_Loop_pr* Loop_Row_DCT_Loop_pr_U0;
    Loop_Xpose_Row_Outer* Loop_Xpose_Row_Outer_U0;
    Loop_Col_DCT_Loop_pr* Loop_Col_DCT_Loop_pr_U0;
    Loop_Xpose_Col_Outer* Loop_Xpose_Col_Outer_U0;
    write_data* write_data_U0;
    sc_signal< sc_lv<16> > row_outbuf_i_i_q0;
    sc_signal< sc_lv<16> > row_outbuf_i_t_q0;
    sc_signal< sc_lv<16> > col_outbuf_i_i_q0;
    sc_signal< sc_lv<16> > col_outbuf_i_t_q0;
    sc_signal< sc_lv<16> > col_inbuf_0_i_q0;
    sc_signal< sc_lv<16> > col_inbuf_0_t_q0;
    sc_signal< sc_lv<16> > col_inbuf_1_i_q0;
    sc_signal< sc_lv<16> > col_inbuf_1_t_q0;
    sc_signal< sc_lv<16> > col_inbuf_2_i_q0;
    sc_signal< sc_lv<16> > col_inbuf_2_t_q0;
    sc_signal< sc_lv<16> > col_inbuf_3_i_q0;
    sc_signal< sc_lv<16> > col_inbuf_3_t_q0;
    sc_signal< sc_lv<16> > col_inbuf_4_i_q0;
    sc_signal< sc_lv<16> > col_inbuf_4_t_q0;
    sc_signal< sc_lv<16> > col_inbuf_5_i_q0;
    sc_signal< sc_lv<16> > col_inbuf_5_t_q0;
    sc_signal< sc_lv<16> > col_inbuf_6_i_q0;
    sc_signal< sc_lv<16> > col_inbuf_6_t_q0;
    sc_signal< sc_lv<16> > col_inbuf_7_i_q0;
    sc_signal< sc_lv<16> > col_inbuf_7_t_q0;
    sc_signal< sc_lv<16> > buf_2d_in_0_i_q0;
    sc_signal< sc_lv<16> > buf_2d_in_0_t_q0;
    sc_signal< sc_lv<16> > buf_2d_in_1_i_q0;
    sc_signal< sc_lv<16> > buf_2d_in_1_t_q0;
    sc_signal< sc_lv<16> > buf_2d_in_2_i_q0;
    sc_signal< sc_lv<16> > buf_2d_in_2_t_q0;
    sc_signal< sc_lv<16> > buf_2d_in_3_i_q0;
    sc_signal< sc_lv<16> > buf_2d_in_3_t_q0;
    sc_signal< sc_lv<16> > buf_2d_in_4_i_q0;
    sc_signal< sc_lv<16> > buf_2d_in_4_t_q0;
    sc_signal< sc_lv<16> > buf_2d_in_5_i_q0;
    sc_signal< sc_lv<16> > buf_2d_in_5_t_q0;
    sc_signal< sc_lv<16> > buf_2d_in_6_i_q0;
    sc_signal< sc_lv<16> > buf_2d_in_6_t_q0;
    sc_signal< sc_lv<16> > buf_2d_in_7_i_q0;
    sc_signal< sc_lv<16> > buf_2d_in_7_t_q0;
    sc_signal< sc_lv<16> > buf_2d_out_i_q0;
    sc_signal< sc_lv<16> > buf_2d_out_t_q0;
    sc_signal< sc_logic > read_data_U0_ap_start;
    sc_signal< sc_logic > read_data_U0_ap_done;
    sc_signal< sc_logic > read_data_U0_ap_continue;
    sc_signal< sc_logic > read_data_U0_ap_idle;
    sc_signal< sc_logic > read_data_U0_ap_ready;
    sc_signal< sc_lv<6> > read_data_U0_input_r_address0;
    sc_signal< sc_logic > read_data_U0_input_r_ce0;
    sc_signal< sc_lv<3> > read_data_U0_buf_0_address0;
    sc_signal< sc_logic > read_data_U0_buf_0_ce0;
    sc_signal< sc_logic > read_data_U0_buf_0_we0;
    sc_signal< sc_lv<16> > read_data_U0_buf_0_d0;
    sc_signal< sc_lv<3> > read_data_U0_buf_1_address0;
    sc_signal< sc_logic > read_data_U0_buf_1_ce0;
    sc_signal< sc_logic > read_data_U0_buf_1_we0;
    sc_signal< sc_lv<16> > read_data_U0_buf_1_d0;
    sc_signal< sc_lv<3> > read_data_U0_buf_2_address0;
    sc_signal< sc_logic > read_data_U0_buf_2_ce0;
    sc_signal< sc_logic > read_data_U0_buf_2_we0;
    sc_signal< sc_lv<16> > read_data_U0_buf_2_d0;
    sc_signal< sc_lv<3> > read_data_U0_buf_3_address0;
    sc_signal< sc_logic > read_data_U0_buf_3_ce0;
    sc_signal< sc_logic > read_data_U0_buf_3_we0;
    sc_signal< sc_lv<16> > read_data_U0_buf_3_d0;
    sc_signal< sc_lv<3> > read_data_U0_buf_4_address0;
    sc_signal< sc_logic > read_data_U0_buf_4_ce0;
    sc_signal< sc_logic > read_data_U0_buf_4_we0;
    sc_signal< sc_lv<16> > read_data_U0_buf_4_d0;
    sc_signal< sc_lv<3> > read_data_U0_buf_5_address0;
    sc_signal< sc_logic > read_data_U0_buf_5_ce0;
    sc_signal< sc_logic > read_data_U0_buf_5_we0;
    sc_signal< sc_lv<16> > read_data_U0_buf_5_d0;
    sc_signal< sc_lv<3> > read_data_U0_buf_6_address0;
    sc_signal< sc_logic > read_data_U0_buf_6_ce0;
    sc_signal< sc_logic > read_data_U0_buf_6_we0;
    sc_signal< sc_lv<16> > read_data_U0_buf_6_d0;
    sc_signal< sc_lv<3> > read_data_U0_buf_7_address0;
    sc_signal< sc_logic > read_data_U0_buf_7_ce0;
    sc_signal< sc_logic > read_data_U0_buf_7_we0;
    sc_signal< sc_lv<16> > read_data_U0_buf_7_d0;
    sc_signal< sc_logic > ap_channel_done_buf_2d_in_7;
    sc_signal< sc_logic > read_data_U0_buf_7_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_buf_2d_in_7;
    sc_signal< sc_logic > ap_sync_channel_write_buf_2d_in_7;
    sc_signal< sc_logic > ap_channel_done_buf_2d_in_6;
    sc_signal< sc_logic > read_data_U0_buf_6_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_buf_2d_in_6;
    sc_signal< sc_logic > ap_sync_channel_write_buf_2d_in_6;
    sc_signal< sc_logic > ap_channel_done_buf_2d_in_5;
    sc_signal< sc_logic > read_data_U0_buf_5_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_buf_2d_in_5;
    sc_signal< sc_logic > ap_sync_channel_write_buf_2d_in_5;
    sc_signal< sc_logic > ap_channel_done_buf_2d_in_4;
    sc_signal< sc_logic > read_data_U0_buf_4_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_buf_2d_in_4;
    sc_signal< sc_logic > ap_sync_channel_write_buf_2d_in_4;
    sc_signal< sc_logic > ap_channel_done_buf_2d_in_3;
    sc_signal< sc_logic > read_data_U0_buf_3_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_buf_2d_in_3;
    sc_signal< sc_logic > ap_sync_channel_write_buf_2d_in_3;
    sc_signal< sc_logic > ap_channel_done_buf_2d_in_2;
    sc_signal< sc_logic > read_data_U0_buf_2_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_buf_2d_in_2;
    sc_signal< sc_logic > ap_sync_channel_write_buf_2d_in_2;
    sc_signal< sc_logic > ap_channel_done_buf_2d_in_1;
    sc_signal< sc_logic > read_data_U0_buf_1_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_buf_2d_in_1;
    sc_signal< sc_logic > ap_sync_channel_write_buf_2d_in_1;
    sc_signal< sc_logic > ap_channel_done_buf_2d_in_0;
    sc_signal< sc_logic > read_data_U0_buf_0_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_buf_2d_in_0;
    sc_signal< sc_logic > ap_sync_channel_write_buf_2d_in_0;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_ap_start;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_ap_done;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_ap_continue;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_ap_idle;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_ap_ready;
    sc_signal< sc_lv<3> > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_0_address0;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_0_ce0;
    sc_signal< sc_lv<3> > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_1_address0;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_1_ce0;
    sc_signal< sc_lv<3> > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_2_address0;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_2_ce0;
    sc_signal< sc_lv<3> > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_3_address0;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_3_ce0;
    sc_signal< sc_lv<3> > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_4_address0;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_4_ce0;
    sc_signal< sc_lv<3> > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_5_address0;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_5_ce0;
    sc_signal< sc_lv<3> > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_6_address0;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_6_ce0;
    sc_signal< sc_lv<3> > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_7_address0;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_buf_2d_in_7_ce0;
    sc_signal< sc_lv<6> > Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_address0;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_ce0;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_we0;
    sc_signal< sc_lv<16> > Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_d0;
    sc_signal< sc_logic > ap_channel_done_row_outbuf_i;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_full_n;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_ap_start;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_ap_done;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_ap_continue;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_ap_idle;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_ap_ready;
    sc_signal< sc_lv<6> > Loop_Xpose_Row_Outer_U0_row_outbuf_i_address0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_row_outbuf_i_ce0;
    sc_signal< sc_lv<3> > Loop_Xpose_Row_Outer_U0_col_inbuf_0_address0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_0_ce0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_0_we0;
    sc_signal< sc_lv<16> > Loop_Xpose_Row_Outer_U0_col_inbuf_0_d0;
    sc_signal< sc_lv<3> > Loop_Xpose_Row_Outer_U0_col_inbuf_1_address0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_1_ce0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_1_we0;
    sc_signal< sc_lv<16> > Loop_Xpose_Row_Outer_U0_col_inbuf_1_d0;
    sc_signal< sc_lv<3> > Loop_Xpose_Row_Outer_U0_col_inbuf_2_address0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_2_ce0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_2_we0;
    sc_signal< sc_lv<16> > Loop_Xpose_Row_Outer_U0_col_inbuf_2_d0;
    sc_signal< sc_lv<3> > Loop_Xpose_Row_Outer_U0_col_inbuf_3_address0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_3_ce0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_3_we0;
    sc_signal< sc_lv<16> > Loop_Xpose_Row_Outer_U0_col_inbuf_3_d0;
    sc_signal< sc_lv<3> > Loop_Xpose_Row_Outer_U0_col_inbuf_4_address0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_4_ce0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_4_we0;
    sc_signal< sc_lv<16> > Loop_Xpose_Row_Outer_U0_col_inbuf_4_d0;
    sc_signal< sc_lv<3> > Loop_Xpose_Row_Outer_U0_col_inbuf_5_address0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_5_ce0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_5_we0;
    sc_signal< sc_lv<16> > Loop_Xpose_Row_Outer_U0_col_inbuf_5_d0;
    sc_signal< sc_lv<3> > Loop_Xpose_Row_Outer_U0_col_inbuf_6_address0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_6_ce0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_6_we0;
    sc_signal< sc_lv<16> > Loop_Xpose_Row_Outer_U0_col_inbuf_6_d0;
    sc_signal< sc_lv<3> > Loop_Xpose_Row_Outer_U0_col_inbuf_7_address0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_7_ce0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_7_we0;
    sc_signal< sc_lv<16> > Loop_Xpose_Row_Outer_U0_col_inbuf_7_d0;
    sc_signal< sc_logic > ap_channel_done_col_inbuf_7;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_7_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_col_inbuf_7;
    sc_signal< sc_logic > ap_sync_channel_write_col_inbuf_7;
    sc_signal< sc_logic > ap_channel_done_col_inbuf_6;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_6_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_col_inbuf_6;
    sc_signal< sc_logic > ap_sync_channel_write_col_inbuf_6;
    sc_signal< sc_logic > ap_channel_done_col_inbuf_5;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_5_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_col_inbuf_5;
    sc_signal< sc_logic > ap_sync_channel_write_col_inbuf_5;
    sc_signal< sc_logic > ap_channel_done_col_inbuf_4;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_4_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_col_inbuf_4;
    sc_signal< sc_logic > ap_sync_channel_write_col_inbuf_4;
    sc_signal< sc_logic > ap_channel_done_col_inbuf_3;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_3_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_col_inbuf_3;
    sc_signal< sc_logic > ap_sync_channel_write_col_inbuf_3;
    sc_signal< sc_logic > ap_channel_done_col_inbuf_2;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_2_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_col_inbuf_2;
    sc_signal< sc_logic > ap_sync_channel_write_col_inbuf_2;
    sc_signal< sc_logic > ap_channel_done_col_inbuf_1;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_1_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_col_inbuf_1;
    sc_signal< sc_logic > ap_sync_channel_write_col_inbuf_1;
    sc_signal< sc_logic > ap_channel_done_col_inbuf_0;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_col_inbuf_0_full_n;
    sc_signal< sc_logic > ap_sync_reg_channel_write_col_inbuf_0;
    sc_signal< sc_logic > ap_sync_channel_write_col_inbuf_0;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_ap_start;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_ap_done;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_ap_continue;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_ap_idle;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_ap_ready;
    sc_signal< sc_lv<3> > Loop_Col_DCT_Loop_pr_U0_col_inbuf_0_address0;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_col_inbuf_0_ce0;
    sc_signal< sc_lv<3> > Loop_Col_DCT_Loop_pr_U0_col_inbuf_1_address0;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_col_inbuf_1_ce0;
    sc_signal< sc_lv<3> > Loop_Col_DCT_Loop_pr_U0_col_inbuf_2_address0;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_col_inbuf_2_ce0;
    sc_signal< sc_lv<3> > Loop_Col_DCT_Loop_pr_U0_col_inbuf_3_address0;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_col_inbuf_3_ce0;
    sc_signal< sc_lv<3> > Loop_Col_DCT_Loop_pr_U0_col_inbuf_4_address0;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_col_inbuf_4_ce0;
    sc_signal< sc_lv<3> > Loop_Col_DCT_Loop_pr_U0_col_inbuf_5_address0;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_col_inbuf_5_ce0;
    sc_signal< sc_lv<3> > Loop_Col_DCT_Loop_pr_U0_col_inbuf_6_address0;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_col_inbuf_6_ce0;
    sc_signal< sc_lv<3> > Loop_Col_DCT_Loop_pr_U0_col_inbuf_7_address0;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_col_inbuf_7_ce0;
    sc_signal< sc_lv<6> > Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_address0;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_ce0;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_we0;
    sc_signal< sc_lv<16> > Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_d0;
    sc_signal< sc_logic > ap_channel_done_col_outbuf_i;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_full_n;
    sc_signal< sc_logic > Loop_Xpose_Col_Outer_U0_ap_start;
    sc_signal< sc_logic > Loop_Xpose_Col_Outer_U0_ap_done;
    sc_signal< sc_logic > Loop_Xpose_Col_Outer_U0_ap_continue;
    sc_signal< sc_logic > Loop_Xpose_Col_Outer_U0_ap_idle;
    sc_signal< sc_logic > Loop_Xpose_Col_Outer_U0_ap_ready;
    sc_signal< sc_lv<6> > Loop_Xpose_Col_Outer_U0_col_outbuf_i_address0;
    sc_signal< sc_logic > Loop_Xpose_Col_Outer_U0_col_outbuf_i_ce0;
    sc_signal< sc_lv<6> > Loop_Xpose_Col_Outer_U0_buf_2d_out_address0;
    sc_signal< sc_logic > Loop_Xpose_Col_Outer_U0_buf_2d_out_ce0;
    sc_signal< sc_logic > Loop_Xpose_Col_Outer_U0_buf_2d_out_we0;
    sc_signal< sc_lv<16> > Loop_Xpose_Col_Outer_U0_buf_2d_out_d0;
    sc_signal< sc_logic > ap_channel_done_buf_2d_out;
    sc_signal< sc_logic > Loop_Xpose_Col_Outer_U0_buf_2d_out_full_n;
    sc_signal< sc_logic > write_data_U0_ap_start;
    sc_signal< sc_logic > write_data_U0_ap_done;
    sc_signal< sc_logic > write_data_U0_ap_continue;
    sc_signal< sc_logic > write_data_U0_ap_idle;
    sc_signal< sc_logic > write_data_U0_ap_ready;
    sc_signal< sc_lv<6> > write_data_U0_buf_r_address0;
    sc_signal< sc_logic > write_data_U0_buf_r_ce0;
    sc_signal< sc_lv<6> > write_data_U0_output_r_address0;
    sc_signal< sc_logic > write_data_U0_output_r_ce0;
    sc_signal< sc_logic > write_data_U0_output_r_we0;
    sc_signal< sc_lv<16> > write_data_U0_output_r_d0;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > buf_2d_in_0_i_full_n;
    sc_signal< sc_logic > buf_2d_in_0_t_empty_n;
    sc_signal< sc_logic > buf_2d_in_1_i_full_n;
    sc_signal< sc_logic > buf_2d_in_1_t_empty_n;
    sc_signal< sc_logic > buf_2d_in_2_i_full_n;
    sc_signal< sc_logic > buf_2d_in_2_t_empty_n;
    sc_signal< sc_logic > buf_2d_in_3_i_full_n;
    sc_signal< sc_logic > buf_2d_in_3_t_empty_n;
    sc_signal< sc_logic > buf_2d_in_4_i_full_n;
    sc_signal< sc_logic > buf_2d_in_4_t_empty_n;
    sc_signal< sc_logic > buf_2d_in_5_i_full_n;
    sc_signal< sc_logic > buf_2d_in_5_t_empty_n;
    sc_signal< sc_logic > buf_2d_in_6_i_full_n;
    sc_signal< sc_logic > buf_2d_in_6_t_empty_n;
    sc_signal< sc_logic > buf_2d_in_7_i_full_n;
    sc_signal< sc_logic > buf_2d_in_7_t_empty_n;
    sc_signal< sc_logic > row_outbuf_i_i_full_n;
    sc_signal< sc_logic > row_outbuf_i_t_empty_n;
    sc_signal< sc_logic > col_inbuf_0_i_full_n;
    sc_signal< sc_logic > col_inbuf_0_t_empty_n;
    sc_signal< sc_logic > col_inbuf_1_i_full_n;
    sc_signal< sc_logic > col_inbuf_1_t_empty_n;
    sc_signal< sc_logic > col_inbuf_2_i_full_n;
    sc_signal< sc_logic > col_inbuf_2_t_empty_n;
    sc_signal< sc_logic > col_inbuf_3_i_full_n;
    sc_signal< sc_logic > col_inbuf_3_t_empty_n;
    sc_signal< sc_logic > col_inbuf_4_i_full_n;
    sc_signal< sc_logic > col_inbuf_4_t_empty_n;
    sc_signal< sc_logic > col_inbuf_5_i_full_n;
    sc_signal< sc_logic > col_inbuf_5_t_empty_n;
    sc_signal< sc_logic > col_inbuf_6_i_full_n;
    sc_signal< sc_logic > col_inbuf_6_t_empty_n;
    sc_signal< sc_logic > col_inbuf_7_i_full_n;
    sc_signal< sc_logic > col_inbuf_7_t_empty_n;
    sc_signal< sc_logic > col_outbuf_i_i_full_n;
    sc_signal< sc_logic > col_outbuf_i_t_empty_n;
    sc_signal< sc_logic > buf_2d_out_i_full_n;
    sc_signal< sc_logic > buf_2d_out_t_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > read_data_U0_start_full_n;
    sc_signal< sc_logic > read_data_U0_start_write;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_start_full_n;
    sc_signal< sc_logic > Loop_Row_DCT_Loop_pr_U0_start_write;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_start_full_n;
    sc_signal< sc_logic > Loop_Xpose_Row_Outer_U0_start_write;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_start_full_n;
    sc_signal< sc_logic > Loop_Col_DCT_Loop_pr_U0_start_write;
    sc_signal< sc_logic > Loop_Xpose_Col_Outer_U0_start_full_n;
    sc_signal< sc_logic > Loop_Xpose_Col_Outer_U0_start_write;
    sc_signal< sc_logic > write_data_U0_start_full_n;
    sc_signal< sc_logic > write_data_U0_start_write;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_Loop_Col_DCT_Loop_pr_U0_ap_continue();
    void thread_Loop_Col_DCT_Loop_pr_U0_ap_start();
    void thread_Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_full_n();
    void thread_Loop_Col_DCT_Loop_pr_U0_start_full_n();
    void thread_Loop_Col_DCT_Loop_pr_U0_start_write();
    void thread_Loop_Row_DCT_Loop_pr_U0_ap_continue();
    void thread_Loop_Row_DCT_Loop_pr_U0_ap_start();
    void thread_Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_full_n();
    void thread_Loop_Row_DCT_Loop_pr_U0_start_full_n();
    void thread_Loop_Row_DCT_Loop_pr_U0_start_write();
    void thread_Loop_Xpose_Col_Outer_U0_ap_continue();
    void thread_Loop_Xpose_Col_Outer_U0_ap_start();
    void thread_Loop_Xpose_Col_Outer_U0_buf_2d_out_full_n();
    void thread_Loop_Xpose_Col_Outer_U0_start_full_n();
    void thread_Loop_Xpose_Col_Outer_U0_start_write();
    void thread_Loop_Xpose_Row_Outer_U0_ap_continue();
    void thread_Loop_Xpose_Row_Outer_U0_ap_start();
    void thread_Loop_Xpose_Row_Outer_U0_col_inbuf_0_full_n();
    void thread_Loop_Xpose_Row_Outer_U0_col_inbuf_1_full_n();
    void thread_Loop_Xpose_Row_Outer_U0_col_inbuf_2_full_n();
    void thread_Loop_Xpose_Row_Outer_U0_col_inbuf_3_full_n();
    void thread_Loop_Xpose_Row_Outer_U0_col_inbuf_4_full_n();
    void thread_Loop_Xpose_Row_Outer_U0_col_inbuf_5_full_n();
    void thread_Loop_Xpose_Row_Outer_U0_col_inbuf_6_full_n();
    void thread_Loop_Xpose_Row_Outer_U0_col_inbuf_7_full_n();
    void thread_Loop_Xpose_Row_Outer_U0_start_full_n();
    void thread_Loop_Xpose_Row_Outer_U0_start_write();
    void thread_ap_channel_done_buf_2d_in_0();
    void thread_ap_channel_done_buf_2d_in_1();
    void thread_ap_channel_done_buf_2d_in_2();
    void thread_ap_channel_done_buf_2d_in_3();
    void thread_ap_channel_done_buf_2d_in_4();
    void thread_ap_channel_done_buf_2d_in_5();
    void thread_ap_channel_done_buf_2d_in_6();
    void thread_ap_channel_done_buf_2d_in_7();
    void thread_ap_channel_done_buf_2d_out();
    void thread_ap_channel_done_col_inbuf_0();
    void thread_ap_channel_done_col_inbuf_1();
    void thread_ap_channel_done_col_inbuf_2();
    void thread_ap_channel_done_col_inbuf_3();
    void thread_ap_channel_done_col_inbuf_4();
    void thread_ap_channel_done_col_inbuf_5();
    void thread_ap_channel_done_col_inbuf_6();
    void thread_ap_channel_done_col_inbuf_7();
    void thread_ap_channel_done_col_outbuf_i();
    void thread_ap_channel_done_row_outbuf_i();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_channel_write_buf_2d_in_0();
    void thread_ap_sync_channel_write_buf_2d_in_1();
    void thread_ap_sync_channel_write_buf_2d_in_2();
    void thread_ap_sync_channel_write_buf_2d_in_3();
    void thread_ap_sync_channel_write_buf_2d_in_4();
    void thread_ap_sync_channel_write_buf_2d_in_5();
    void thread_ap_sync_channel_write_buf_2d_in_6();
    void thread_ap_sync_channel_write_buf_2d_in_7();
    void thread_ap_sync_channel_write_col_inbuf_0();
    void thread_ap_sync_channel_write_col_inbuf_1();
    void thread_ap_sync_channel_write_col_inbuf_2();
    void thread_ap_sync_channel_write_col_inbuf_3();
    void thread_ap_sync_channel_write_col_inbuf_4();
    void thread_ap_sync_channel_write_col_inbuf_5();
    void thread_ap_sync_channel_write_col_inbuf_6();
    void thread_ap_sync_channel_write_col_inbuf_7();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_input_r_address0();
    void thread_input_r_address1();
    void thread_input_r_ce0();
    void thread_input_r_ce1();
    void thread_input_r_d0();
    void thread_input_r_d1();
    void thread_input_r_we0();
    void thread_input_r_we1();
    void thread_output_r_address0();
    void thread_output_r_address1();
    void thread_output_r_ce0();
    void thread_output_r_ce1();
    void thread_output_r_d0();
    void thread_output_r_d1();
    void thread_output_r_we0();
    void thread_output_r_we1();
    void thread_read_data_U0_ap_continue();
    void thread_read_data_U0_ap_start();
    void thread_read_data_U0_buf_0_full_n();
    void thread_read_data_U0_buf_1_full_n();
    void thread_read_data_U0_buf_2_full_n();
    void thread_read_data_U0_buf_3_full_n();
    void thread_read_data_U0_buf_4_full_n();
    void thread_read_data_U0_buf_5_full_n();
    void thread_read_data_U0_buf_6_full_n();
    void thread_read_data_U0_buf_7_full_n();
    void thread_read_data_U0_start_full_n();
    void thread_read_data_U0_start_write();
    void thread_write_data_U0_ap_continue();
    void thread_write_data_U0_ap_start();
    void thread_write_data_U0_start_full_n();
    void thread_write_data_U0_start_write();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
