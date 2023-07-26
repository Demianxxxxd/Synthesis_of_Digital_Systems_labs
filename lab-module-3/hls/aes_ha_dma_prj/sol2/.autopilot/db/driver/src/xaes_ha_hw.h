// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// slv
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
// 0x30 : Data signal of in_r
//        bit 31~0 - in_r[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of out_r
//        bit 31~0 - out_r[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of length_r
//        bit 31~0 - length_r[31:0] (Read/Write)
// 0x44 : reserved
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
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAES_HA_SLV_ADDR_AP_CTRL       0x00
#define XAES_HA_SLV_ADDR_GIE           0x04
#define XAES_HA_SLV_ADDR_IER           0x08
#define XAES_HA_SLV_ADDR_ISR           0x0c
#define XAES_HA_SLV_ADDR_IN_R_DATA     0x30
#define XAES_HA_SLV_BITS_IN_R_DATA     32
#define XAES_HA_SLV_ADDR_OUT_R_DATA    0x38
#define XAES_HA_SLV_BITS_OUT_R_DATA    32
#define XAES_HA_SLV_ADDR_LENGTH_R_DATA 0x40
#define XAES_HA_SLV_BITS_LENGTH_R_DATA 32
#define XAES_HA_SLV_ADDR_KEY_BASE      0x10
#define XAES_HA_SLV_ADDR_KEY_HIGH      0x1f
#define XAES_HA_SLV_WIDTH_KEY          8
#define XAES_HA_SLV_DEPTH_KEY          16
#define XAES_HA_SLV_ADDR_IV_BASE       0x20
#define XAES_HA_SLV_ADDR_IV_HIGH       0x2f
#define XAES_HA_SLV_WIDTH_IV           8
#define XAES_HA_SLV_DEPTH_IV           16

