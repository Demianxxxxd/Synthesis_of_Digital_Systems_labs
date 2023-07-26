// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      aes_ha
`define AUTOTB_DUT_INST AESL_inst_aes_ha
`define AUTOTB_TOP      apatb_aes_ha_top
`define AUTOTB_LAT_RESULT_FILE "aes_ha.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "aes_ha.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_aes_ha_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_mst 1
`define AESL_DEPTH_key 1
`define AESL_DEPTH_iv 1
`define AESL_DEPTH_in_r 1
`define AESL_DEPTH_out_r 1
`define AESL_DEPTH_length_r 1
`define AUTOTB_TVIN_mst  "./c.aes_ha.autotvin_mst.dat"
`define AUTOTB_TVIN_key  "./c.aes_ha.autotvin_key.dat"
`define AUTOTB_TVIN_in_r  "./c.aes_ha.autotvin_in_r.dat"
`define AUTOTB_TVIN_out_r  "./c.aes_ha.autotvin_out_r.dat"
`define AUTOTB_TVIN_length_r  "./c.aes_ha.autotvin_length_r.dat"
`define AUTOTB_TVIN_mst_out_wrapc  "./rtl.aes_ha.autotvin_mst.dat"
`define AUTOTB_TVIN_key_out_wrapc  "./rtl.aes_ha.autotvin_key.dat"
`define AUTOTB_TVIN_in_r_out_wrapc  "./rtl.aes_ha.autotvin_in_r.dat"
`define AUTOTB_TVIN_out_r_out_wrapc  "./rtl.aes_ha.autotvin_out_r.dat"
`define AUTOTB_TVIN_length_r_out_wrapc  "./rtl.aes_ha.autotvin_length_r.dat"
`define AUTOTB_TVOUT_mst  "./c.aes_ha.autotvout_mst.dat"
`define AUTOTB_TVOUT_iv  "./c.aes_ha.autotvout_iv.dat"
`define AUTOTB_TVOUT_mst_out_wrapc  "./impl_rtl.aes_ha.autotvout_mst.dat"
`define AUTOTB_TVOUT_iv_out_wrapc  "./impl_rtl.aes_ha.autotvout_iv.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 2;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_mst = 17664;
parameter LENGTH_key = 16;
parameter LENGTH_iv = 16;
parameter LENGTH_in_r = 1;
parameter LENGTH_out_r = 1;
parameter LENGTH_length_r = 1;

task read_token;
    input integer fp;
    output reg [167 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [167 : 0] token1;
    reg [167 : 0] token2;
    reg [167 : 0] golden;
    reg [167 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [6 : 0] slv_AWADDR;
wire  slv_AWVALID;
wire  slv_AWREADY;
wire  slv_WVALID;
wire  slv_WREADY;
wire [31 : 0] slv_WDATA;
wire [3 : 0] slv_WSTRB;
wire [6 : 0] slv_ARADDR;
wire  slv_ARVALID;
wire  slv_ARREADY;
wire  slv_RVALID;
wire  slv_RREADY;
wire [31 : 0] slv_RDATA;
wire [1 : 0] slv_RRESP;
wire  slv_BVALID;
wire  slv_BREADY;
wire [1 : 0] slv_BRESP;
wire  slv_INTERRUPT;
wire  mst_AWVALID;
wire  mst_AWREADY;
wire [31 : 0] mst_AWADDR;
wire [0 : 0] mst_AWID;
wire [7 : 0] mst_AWLEN;
wire [2 : 0] mst_AWSIZE;
wire [1 : 0] mst_AWBURST;
wire [1 : 0] mst_AWLOCK;
wire [3 : 0] mst_AWCACHE;
wire [2 : 0] mst_AWPROT;
wire [3 : 0] mst_AWQOS;
wire [3 : 0] mst_AWREGION;
wire [0 : 0] mst_AWUSER;
wire  mst_WVALID;
wire  mst_WREADY;
wire [31 : 0] mst_WDATA;
wire [3 : 0] mst_WSTRB;
wire  mst_WLAST;
wire [0 : 0] mst_WID;
wire [0 : 0] mst_WUSER;
wire  mst_ARVALID;
wire  mst_ARREADY;
wire [31 : 0] mst_ARADDR;
wire [0 : 0] mst_ARID;
wire [7 : 0] mst_ARLEN;
wire [2 : 0] mst_ARSIZE;
wire [1 : 0] mst_ARBURST;
wire [1 : 0] mst_ARLOCK;
wire [3 : 0] mst_ARCACHE;
wire [2 : 0] mst_ARPROT;
wire [3 : 0] mst_ARQOS;
wire [3 : 0] mst_ARREGION;
wire [0 : 0] mst_ARUSER;
wire  mst_RVALID;
wire  mst_RREADY;
wire [31 : 0] mst_RDATA;
wire  mst_RLAST;
wire [0 : 0] mst_RID;
wire [0 : 0] mst_RUSER;
wire [1 : 0] mst_RRESP;
wire  mst_BVALID;
wire  mst_BREADY;
wire [1 : 0] mst_BRESP;
wire [0 : 0] mst_BID;
wire [0 : 0] mst_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire slv_read_data_finish;
wire slv_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_slv_AWADDR(slv_AWADDR),
    .s_axi_slv_AWVALID(slv_AWVALID),
    .s_axi_slv_AWREADY(slv_AWREADY),
    .s_axi_slv_WVALID(slv_WVALID),
    .s_axi_slv_WREADY(slv_WREADY),
    .s_axi_slv_WDATA(slv_WDATA),
    .s_axi_slv_WSTRB(slv_WSTRB),
    .s_axi_slv_ARADDR(slv_ARADDR),
    .s_axi_slv_ARVALID(slv_ARVALID),
    .s_axi_slv_ARREADY(slv_ARREADY),
    .s_axi_slv_RVALID(slv_RVALID),
    .s_axi_slv_RREADY(slv_RREADY),
    .s_axi_slv_RDATA(slv_RDATA),
    .s_axi_slv_RRESP(slv_RRESP),
    .s_axi_slv_BVALID(slv_BVALID),
    .s_axi_slv_BREADY(slv_BREADY),
    .s_axi_slv_BRESP(slv_BRESP),
    .interrupt(slv_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_mst_AWVALID(mst_AWVALID),
    .m_axi_mst_AWREADY(mst_AWREADY),
    .m_axi_mst_AWADDR(mst_AWADDR),
    .m_axi_mst_AWID(mst_AWID),
    .m_axi_mst_AWLEN(mst_AWLEN),
    .m_axi_mst_AWSIZE(mst_AWSIZE),
    .m_axi_mst_AWBURST(mst_AWBURST),
    .m_axi_mst_AWLOCK(mst_AWLOCK),
    .m_axi_mst_AWCACHE(mst_AWCACHE),
    .m_axi_mst_AWPROT(mst_AWPROT),
    .m_axi_mst_AWQOS(mst_AWQOS),
    .m_axi_mst_AWREGION(mst_AWREGION),
    .m_axi_mst_AWUSER(mst_AWUSER),
    .m_axi_mst_WVALID(mst_WVALID),
    .m_axi_mst_WREADY(mst_WREADY),
    .m_axi_mst_WDATA(mst_WDATA),
    .m_axi_mst_WSTRB(mst_WSTRB),
    .m_axi_mst_WLAST(mst_WLAST),
    .m_axi_mst_WID(mst_WID),
    .m_axi_mst_WUSER(mst_WUSER),
    .m_axi_mst_ARVALID(mst_ARVALID),
    .m_axi_mst_ARREADY(mst_ARREADY),
    .m_axi_mst_ARADDR(mst_ARADDR),
    .m_axi_mst_ARID(mst_ARID),
    .m_axi_mst_ARLEN(mst_ARLEN),
    .m_axi_mst_ARSIZE(mst_ARSIZE),
    .m_axi_mst_ARBURST(mst_ARBURST),
    .m_axi_mst_ARLOCK(mst_ARLOCK),
    .m_axi_mst_ARCACHE(mst_ARCACHE),
    .m_axi_mst_ARPROT(mst_ARPROT),
    .m_axi_mst_ARQOS(mst_ARQOS),
    .m_axi_mst_ARREGION(mst_ARREGION),
    .m_axi_mst_ARUSER(mst_ARUSER),
    .m_axi_mst_RVALID(mst_RVALID),
    .m_axi_mst_RREADY(mst_RREADY),
    .m_axi_mst_RDATA(mst_RDATA),
    .m_axi_mst_RLAST(mst_RLAST),
    .m_axi_mst_RID(mst_RID),
    .m_axi_mst_RUSER(mst_RUSER),
    .m_axi_mst_RRESP(mst_RRESP),
    .m_axi_mst_BVALID(mst_BVALID),
    .m_axi_mst_BREADY(mst_BREADY),
    .m_axi_mst_BRESP(mst_BRESP),
    .m_axi_mst_BID(mst_BID),
    .m_axi_mst_BUSER(mst_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & slv_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status  & slv_read_data_finish;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end






wire    AESL_axi_master_mst_ready;
wire    AESL_axi_master_mst_done;
wire [32 - 1:0] in_r;
wire [32 - 1:0] out_r;
AESL_axi_master_mst AESL_AXI_MASTER_mst(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_mst_AWVALID (mst_AWVALID),
    .TRAN_mst_AWREADY (mst_AWREADY),
    .TRAN_mst_AWADDR (mst_AWADDR),
    .TRAN_mst_AWID (mst_AWID),
    .TRAN_mst_AWLEN (mst_AWLEN),
    .TRAN_mst_AWSIZE (mst_AWSIZE),
    .TRAN_mst_AWBURST (mst_AWBURST),
    .TRAN_mst_AWLOCK (mst_AWLOCK),
    .TRAN_mst_AWCACHE (mst_AWCACHE),
    .TRAN_mst_AWPROT (mst_AWPROT),
    .TRAN_mst_AWQOS (mst_AWQOS),
    .TRAN_mst_AWREGION (mst_AWREGION),
    .TRAN_mst_AWUSER (mst_AWUSER),
    .TRAN_mst_WVALID (mst_WVALID),
    .TRAN_mst_WREADY (mst_WREADY),
    .TRAN_mst_WDATA (mst_WDATA),
    .TRAN_mst_WSTRB (mst_WSTRB),
    .TRAN_mst_WLAST (mst_WLAST),
    .TRAN_mst_WID (mst_WID),
    .TRAN_mst_WUSER (mst_WUSER),
    .TRAN_mst_ARVALID (mst_ARVALID),
    .TRAN_mst_ARREADY (mst_ARREADY),
    .TRAN_mst_ARADDR (mst_ARADDR),
    .TRAN_mst_ARID (mst_ARID),
    .TRAN_mst_ARLEN (mst_ARLEN),
    .TRAN_mst_ARSIZE (mst_ARSIZE),
    .TRAN_mst_ARBURST (mst_ARBURST),
    .TRAN_mst_ARLOCK (mst_ARLOCK),
    .TRAN_mst_ARCACHE (mst_ARCACHE),
    .TRAN_mst_ARPROT (mst_ARPROT),
    .TRAN_mst_ARQOS (mst_ARQOS),
    .TRAN_mst_ARREGION (mst_ARREGION),
    .TRAN_mst_ARUSER (mst_ARUSER),
    .TRAN_mst_RVALID (mst_RVALID),
    .TRAN_mst_RREADY (mst_RREADY),
    .TRAN_mst_RDATA (mst_RDATA),
    .TRAN_mst_RLAST (mst_RLAST),
    .TRAN_mst_RID (mst_RID),
    .TRAN_mst_RUSER (mst_RUSER),
    .TRAN_mst_RRESP (mst_RRESP),
    .TRAN_mst_BVALID (mst_BVALID),
    .TRAN_mst_BREADY (mst_BREADY),
    .TRAN_mst_BRESP (mst_BRESP),
    .TRAN_mst_BID (mst_BID),
    .TRAN_mst_BUSER (mst_BUSER),
    .TRAN_mst_in_r (in_r),
    .TRAN_mst_out_r (out_r),
    .ready (AESL_axi_master_mst_ready),
    .done  (AESL_axi_master_mst_done)
);
assign    AESL_axi_master_mst_ready    =   ready;
assign    AESL_axi_master_mst_done    =   AESL_done_delay;

AESL_axi_slave_slv AESL_AXI_SLAVE_slv(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_slv_AWADDR (slv_AWADDR),
    .TRAN_s_axi_slv_AWVALID (slv_AWVALID),
    .TRAN_s_axi_slv_AWREADY (slv_AWREADY),
    .TRAN_s_axi_slv_WVALID (slv_WVALID),
    .TRAN_s_axi_slv_WREADY (slv_WREADY),
    .TRAN_s_axi_slv_WDATA (slv_WDATA),
    .TRAN_s_axi_slv_WSTRB (slv_WSTRB),
    .TRAN_s_axi_slv_ARADDR (slv_ARADDR),
    .TRAN_s_axi_slv_ARVALID (slv_ARVALID),
    .TRAN_s_axi_slv_ARREADY (slv_ARREADY),
    .TRAN_s_axi_slv_RVALID (slv_RVALID),
    .TRAN_s_axi_slv_RREADY (slv_RREADY),
    .TRAN_s_axi_slv_RDATA (slv_RDATA),
    .TRAN_s_axi_slv_RRESP (slv_RRESP),
    .TRAN_s_axi_slv_BVALID (slv_BVALID),
    .TRAN_s_axi_slv_BREADY (slv_BREADY),
    .TRAN_s_axi_slv_BRESP (slv_BRESP),
    .TRAN_slv_interrupt (slv_INTERRUPT),
    .TRAN_in_r (in_r),
    .TRAN_out_r (out_r),
    .TRAN_slv_read_data_finish(slv_read_data_finish),
    .TRAN_slv_write_data_finish(slv_write_data_finish),
    .TRAN_slv_ready_out (AESL_ready),
    .TRAN_slv_ready_in (AESL_slave_ready),
    .TRAN_slv_done_out (AESL_slave_output_done),
    .TRAN_slv_idle_out (AESL_idle),
    .TRAN_slv_write_start_in     (AESL_slave_write_start_in),
    .TRAN_slv_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_slv_transaction_done_in (AESL_done_delay),
    .TRAN_slv_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_mst;
reg [31:0] size_mst;
reg [31:0] size_mst_backup;
reg end_key;
reg [31:0] size_key;
reg [31:0] size_key_backup;
reg end_in_r;
reg [31:0] size_in_r;
reg [31:0] size_in_r_backup;
reg end_out_r;
reg [31:0] size_out_r;
reg [31:0] size_out_r_backup;
reg end_length_r;
reg [31:0] size_length_r;
reg [31:0] size_length_r_backup;
reg end_iv;
reg [31:0] size_iv;
reg [31:0] size_iv_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_mst;

initial begin : dump_tvout_runtime_sign_mst
    integer fp;
    dump_tvout_finish_mst = 0;
    fp = $fopen(`AUTOTB_TVOUT_mst_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_mst_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_mst_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_mst_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_mst = 1;
end


reg dump_tvout_finish_iv;

initial begin : dump_tvout_runtime_sign_iv
    integer fp;
    dump_tvout_finish_iv = 0;
    fp = $fopen(`AUTOTB_TVOUT_iv_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_iv_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_iv_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_iv_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_iv = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
