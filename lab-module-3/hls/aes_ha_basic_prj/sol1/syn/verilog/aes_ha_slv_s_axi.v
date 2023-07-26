// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module aes_ha_slv_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 6,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    input  wire [3:0]                    key_address0,
    input  wire                          key_ce0,
    output wire [7:0]                    key_q0,
    input  wire [3:0]                    iv_address0,
    input  wire                          iv_ce0,
    input  wire                          iv_we0,
    input  wire [7:0]                    iv_d0,
    output wire [7:0]                    iv_q0,
    input  wire [3:0]                    inout_r_address0,
    input  wire                          inout_r_ce0,
    input  wire                          inout_r_we0,
    input  wire [7:0]                    inout_r_d0,
    output wire [7:0]                    inout_r_q0
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 ~
// 0x1f : Memory 'key' (16 * 8b)
//        Word n : bit [ 7: 0] - key[4n]
//                 bit [15: 8] - key[4n+1]
//                 bit [23:16] - key[4n+2]
//                 bit [31:24] - key[4n+3]
// 0x20 ~
// 0x2f : Memory 'iv' (16 * 8b)
//        Word n : bit [ 7: 0] - iv[4n]
//                 bit [15: 8] - iv[4n+1]
//                 bit [23:16] - iv[4n+2]
//                 bit [31:24] - iv[4n+3]
// 0x30 ~
// 0x3f : Memory 'inout_r' (16 * 8b)
//        Word n : bit [ 7: 0] - inout_r[4n]
//                 bit [15: 8] - inout_r[4n+1]
//                 bit [23:16] - inout_r[4n+2]
//                 bit [31:24] - inout_r[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL      = 6'h00,
    ADDR_GIE          = 6'h04,
    ADDR_IER          = 6'h08,
    ADDR_ISR          = 6'h0c,
    ADDR_KEY_BASE     = 6'h10,
    ADDR_KEY_HIGH     = 6'h1f,
    ADDR_IV_BASE      = 6'h20,
    ADDR_IV_HIGH      = 6'h2f,
    ADDR_INOUT_R_BASE = 6'h30,
    ADDR_INOUT_R_HIGH = 6'h3f,
    WRIDLE            = 2'd0,
    WRDATA            = 2'd1,
    WRRESP            = 2'd2,
    WRRESET           = 2'd3,
    RDIDLE            = 2'd0,
    RDDATA            = 2'd1,
    RDRESET           = 2'd2,
    ADDR_BITS         = 6;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    // memory signals
    wire [1:0]                    int_key_address0;
    wire                          int_key_ce0;
    wire                          int_key_we0;
    wire [3:0]                    int_key_be0;
    wire [31:0]                   int_key_d0;
    wire [31:0]                   int_key_q0;
    wire [1:0]                    int_key_address1;
    wire                          int_key_ce1;
    wire                          int_key_we1;
    wire [3:0]                    int_key_be1;
    wire [31:0]                   int_key_d1;
    wire [31:0]                   int_key_q1;
    reg                           int_key_read;
    reg                           int_key_write;
    reg  [1:0]                    int_key_shift;
    wire [1:0]                    int_iv_address0;
    wire                          int_iv_ce0;
    wire                          int_iv_we0;
    wire [3:0]                    int_iv_be0;
    wire [31:0]                   int_iv_d0;
    wire [31:0]                   int_iv_q0;
    wire [1:0]                    int_iv_address1;
    wire                          int_iv_ce1;
    wire                          int_iv_we1;
    wire [3:0]                    int_iv_be1;
    wire [31:0]                   int_iv_d1;
    wire [31:0]                   int_iv_q1;
    reg                           int_iv_read;
    reg                           int_iv_write;
    reg  [1:0]                    int_iv_shift;
    wire [1:0]                    int_inout_r_address0;
    wire                          int_inout_r_ce0;
    wire                          int_inout_r_we0;
    wire [3:0]                    int_inout_r_be0;
    wire [31:0]                   int_inout_r_d0;
    wire [31:0]                   int_inout_r_q0;
    wire [1:0]                    int_inout_r_address1;
    wire                          int_inout_r_ce1;
    wire                          int_inout_r_we1;
    wire [3:0]                    int_inout_r_be1;
    wire [31:0]                   int_inout_r_d1;
    wire [31:0]                   int_inout_r_q1;
    reg                           int_inout_r_read;
    reg                           int_inout_r_write;
    reg  [1:0]                    int_inout_r_shift;

//------------------------Instantiation------------------
// int_key
aes_ha_slv_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 4 )
) int_key (
    .clk0     ( ACLK ),
    .address0 ( int_key_address0 ),
    .ce0      ( int_key_ce0 ),
    .we0      ( int_key_we0 ),
    .be0      ( int_key_be0 ),
    .d0       ( int_key_d0 ),
    .q0       ( int_key_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_key_address1 ),
    .ce1      ( int_key_ce1 ),
    .we1      ( int_key_we1 ),
    .be1      ( int_key_be1 ),
    .d1       ( int_key_d1 ),
    .q1       ( int_key_q1 )
);
// int_iv
aes_ha_slv_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 4 )
) int_iv (
    .clk0     ( ACLK ),
    .address0 ( int_iv_address0 ),
    .ce0      ( int_iv_ce0 ),
    .we0      ( int_iv_we0 ),
    .be0      ( int_iv_be0 ),
    .d0       ( int_iv_d0 ),
    .q0       ( int_iv_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_iv_address1 ),
    .ce1      ( int_iv_ce1 ),
    .we1      ( int_iv_we1 ),
    .be1      ( int_iv_be1 ),
    .d1       ( int_iv_d1 ),
    .q1       ( int_iv_q1 )
);
// int_inout_r
aes_ha_slv_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 4 )
) int_inout_r (
    .clk0     ( ACLK ),
    .address0 ( int_inout_r_address0 ),
    .ce0      ( int_inout_r_ce0 ),
    .we0      ( int_inout_r_we0 ),
    .be0      ( int_inout_r_be0 ),
    .d0       ( int_inout_r_d0 ),
    .q0       ( int_inout_r_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_inout_r_address1 ),
    .ce1      ( int_inout_r_ce1 ),
    .we1      ( int_inout_r_we1 ),
    .be1      ( int_inout_r_be1 ),
    .d1       ( int_inout_r_d1 ),
    .q1       ( int_inout_r_q1 )
);

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_key_read & !int_iv_read & !int_inout_r_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
            endcase
        end
        else if (int_key_read) begin
            rdata <= int_key_q1;
        end
        else if (int_iv_read) begin
            rdata <= int_iv_q1;
        end
        else if (int_inout_r_read) begin
            rdata <= int_inout_r_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt = int_gie & (|int_isr);
assign ap_start  = int_ap_start;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end


//------------------------Memory logic-------------------
// key
assign int_key_address0     = key_address0 >> 2;
assign int_key_ce0          = key_ce0;
assign int_key_we0          = 1'b0;
assign int_key_be0          = 1'b0;
assign int_key_d0           = 1'b0;
assign key_q0               = int_key_q0 >> (int_key_shift * 8);
assign int_key_address1     = ar_hs? raddr[3:2] : waddr[3:2];
assign int_key_ce1          = ar_hs | (int_key_write & WVALID);
assign int_key_we1          = int_key_write & WVALID;
assign int_key_be1          = WSTRB;
assign int_key_d1           = WDATA;
// iv
assign int_iv_address0      = iv_address0 >> 2;
assign int_iv_ce0           = iv_ce0;
assign int_iv_we0           = iv_we0;
assign int_iv_be0           = 1 << iv_address0[1:0];
assign int_iv_d0            = {4{iv_d0}};
assign iv_q0                = int_iv_q0 >> (int_iv_shift * 8);
assign int_iv_address1      = ar_hs? raddr[3:2] : waddr[3:2];
assign int_iv_ce1           = ar_hs | (int_iv_write & WVALID);
assign int_iv_we1           = int_iv_write & WVALID;
assign int_iv_be1           = WSTRB;
assign int_iv_d1            = WDATA;
// inout_r
assign int_inout_r_address0 = inout_r_address0 >> 2;
assign int_inout_r_ce0      = inout_r_ce0;
assign int_inout_r_we0      = inout_r_we0;
assign int_inout_r_be0      = 1 << inout_r_address0[1:0];
assign int_inout_r_d0       = {4{inout_r_d0}};
assign inout_r_q0           = int_inout_r_q0 >> (int_inout_r_shift * 8);
assign int_inout_r_address1 = ar_hs? raddr[3:2] : waddr[3:2];
assign int_inout_r_ce1      = ar_hs | (int_inout_r_write & WVALID);
assign int_inout_r_we1      = int_inout_r_write & WVALID;
assign int_inout_r_be1      = WSTRB;
assign int_inout_r_d1       = WDATA;
// int_key_read
always @(posedge ACLK) begin
    if (ARESET)
        int_key_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_KEY_BASE && raddr <= ADDR_KEY_HIGH)
            int_key_read <= 1'b1;
        else
            int_key_read <= 1'b0;
    end
end

// int_key_write
always @(posedge ACLK) begin
    if (ARESET)
        int_key_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_KEY_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_KEY_HIGH)
            int_key_write <= 1'b1;
        else if (WVALID)
            int_key_write <= 1'b0;
    end
end

// int_key_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (key_ce0)
            int_key_shift <= key_address0[1:0];
    end
end

// int_iv_read
always @(posedge ACLK) begin
    if (ARESET)
        int_iv_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_IV_BASE && raddr <= ADDR_IV_HIGH)
            int_iv_read <= 1'b1;
        else
            int_iv_read <= 1'b0;
    end
end

// int_iv_write
always @(posedge ACLK) begin
    if (ARESET)
        int_iv_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_IV_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_IV_HIGH)
            int_iv_write <= 1'b1;
        else if (WVALID)
            int_iv_write <= 1'b0;
    end
end

// int_iv_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (iv_ce0)
            int_iv_shift <= iv_address0[1:0];
    end
end

// int_inout_r_read
always @(posedge ACLK) begin
    if (ARESET)
        int_inout_r_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_INOUT_R_BASE && raddr <= ADDR_INOUT_R_HIGH)
            int_inout_r_read <= 1'b1;
        else
            int_inout_r_read <= 1'b0;
    end
end

// int_inout_r_write
always @(posedge ACLK) begin
    if (ARESET)
        int_inout_r_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_INOUT_R_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_INOUT_R_HIGH)
            int_inout_r_write <= 1'b1;
        else if (WVALID)
            int_inout_r_write <= 1'b0;
    end
end

// int_inout_r_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (inout_r_ce0)
            int_inout_r_shift <= inout_r_address0[1:0];
    end
end


endmodule


`timescale 1ns/1ps

module aes_ha_slv_s_axi_ram
#(parameter
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire               we0,
    input  wire [BYTES-1:0]   be0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire               we1,
    input  wire [BYTES-1:0]   be1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------Local signal-------------------
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
// read port 0
always @(posedge clk0) begin
    if (ce0) q0 <= mem[address0];
end

// read port 1
always @(posedge clk1) begin
    if (ce1) q1 <= mem[address1];
end

genvar i;
generate
    for (i = 0; i < BYTES; i = i + 1) begin : gen_write
        // write port 0
        always @(posedge clk0) begin
            if (ce0 & we0 & be0[i]) begin
                mem[address0][8*i+7:8*i] <= d0[8*i+7:8*i];
            end
        end
        // write port 1
        always @(posedge clk1) begin
            if (ce1 & we1 & be1[i]) begin
                mem[address1][8*i+7:8*i] <= d1[8*i+7:8*i];
            end
        end
    end
endgenerate

endmodule

