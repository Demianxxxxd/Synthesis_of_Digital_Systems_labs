// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module AddRoundKey (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        round,
        state_address0,
        state_ce0,
        state_we0,
        state_d0,
        state_q0,
        RoundKey_address0,
        RoundKey_ce0,
        RoundKey_q0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] round;
output  [3:0] state_address0;
output   state_ce0;
output   state_we0;
output  [7:0] state_d0;
input  [7:0] state_q0;
output  [7:0] RoundKey_address0;
output   RoundKey_ce0;
input  [7:0] RoundKey_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] state_address0;
reg state_ce0;
reg state_we0;
reg RoundKey_ce0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] i_fu_88_p2;
reg   [2:0] i_reg_180;
wire    ap_CS_fsm_state2;
wire   [3:0] shl_ln_fu_98_p3;
reg   [3:0] shl_ln_reg_185;
wire   [0:0] icmp_ln272_fu_82_p2;
wire   [5:0] zext_ln273_fu_114_p1;
reg   [5:0] zext_ln273_reg_190;
wire   [2:0] j_fu_124_p2;
reg   [2:0] j_reg_198;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln273_fu_118_p2;
reg   [3:0] state_addr_reg_208;
reg   [2:0] i_0_reg_60;
reg   [2:0] j_0_reg_71;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln274_1_fu_146_p1;
wire   [63:0] zext_ln274_3_fu_160_p1;
wire   [1:0] trunc_ln274_fu_94_p1;
wire   [4:0] tmp_9_fu_106_p3;
wire   [3:0] zext_ln274_fu_130_p1;
wire   [3:0] add_ln274_fu_134_p2;
wire   [11:0] add_ln274_1_fu_139_p3;
wire   [5:0] zext_ln274_2_fu_151_p1;
wire   [5:0] add_ln274_2_fu_155_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln273_fu_118_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_60 <= i_reg_180;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_60 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln272_fu_82_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_71 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        j_0_reg_71 <= j_reg_198;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_180 <= i_fu_88_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_198 <= j_fu_124_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln272_fu_82_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        shl_ln_reg_185[3 : 2] <= shl_ln_fu_98_p3[3 : 2];
        zext_ln273_reg_190[4 : 2] <= zext_ln273_fu_114_p1[4 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln273_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        state_addr_reg_208 <= zext_ln274_3_fu_160_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        RoundKey_ce0 = 1'b1;
    end else begin
        RoundKey_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln272_fu_82_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln272_fu_82_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        state_address0 = state_addr_reg_208;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = zext_ln274_3_fu_160_p1;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        state_we0 = 1'b1;
    end else begin
        state_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln272_fu_82_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln273_fu_118_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign RoundKey_address0 = zext_ln274_1_fu_146_p1;

assign add_ln274_1_fu_139_p3 = {{round}, {add_ln274_fu_134_p2}};

assign add_ln274_2_fu_155_p2 = (zext_ln273_reg_190 + zext_ln274_2_fu_151_p1);

assign add_ln274_fu_134_p2 = (zext_ln274_fu_130_p1 + shl_ln_reg_185);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign i_fu_88_p2 = (i_0_reg_60 + 3'd1);

assign icmp_ln272_fu_82_p2 = ((i_0_reg_60 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln273_fu_118_p2 = ((j_0_reg_71 == 3'd4) ? 1'b1 : 1'b0);

assign j_fu_124_p2 = (j_0_reg_71 + 3'd1);

assign shl_ln_fu_98_p3 = {{trunc_ln274_fu_94_p1}, {2'd0}};

assign state_d0 = (state_q0 ^ RoundKey_q0);

assign tmp_9_fu_106_p3 = {{i_0_reg_60}, {2'd0}};

assign trunc_ln274_fu_94_p1 = i_0_reg_60[1:0];

assign zext_ln273_fu_114_p1 = tmp_9_fu_106_p3;

assign zext_ln274_1_fu_146_p1 = add_ln274_1_fu_139_p3;

assign zext_ln274_2_fu_151_p1 = j_0_reg_71;

assign zext_ln274_3_fu_160_p1 = add_ln274_2_fu_155_p2;

assign zext_ln274_fu_130_p1 = j_0_reg_71;

always @ (posedge ap_clk) begin
    shl_ln_reg_185[1:0] <= 2'b00;
    zext_ln273_reg_190[1:0] <= 2'b00;
    zext_ln273_reg_190[5] <= 1'b0;
end

endmodule //AddRoundKey
