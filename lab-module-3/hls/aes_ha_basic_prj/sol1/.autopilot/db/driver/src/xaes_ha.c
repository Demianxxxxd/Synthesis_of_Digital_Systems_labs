// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaes_ha.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAes_ha_CfgInitialize(XAes_ha *InstancePtr, XAes_ha_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Slv_BaseAddress = ConfigPtr->Slv_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAes_ha_Start(XAes_ha *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ha_ReadReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_AP_CTRL) & 0x80;
    XAes_ha_WriteReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAes_ha_IsDone(XAes_ha *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ha_ReadReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAes_ha_IsIdle(XAes_ha *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ha_ReadReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAes_ha_IsReady(XAes_ha *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_ha_ReadReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAes_ha_EnableAutoRestart(XAes_ha *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_ha_WriteReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_AP_CTRL, 0x80);
}

void XAes_ha_DisableAutoRestart(XAes_ha *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_ha_WriteReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_AP_CTRL, 0);
}

u32 XAes_ha_Get_key_BaseAddress(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_KEY_BASE);
}

u32 XAes_ha_Get_key_HighAddress(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_KEY_HIGH);
}

u32 XAes_ha_Get_key_TotalBytes(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XAES_HA_SLV_ADDR_KEY_HIGH - XAES_HA_SLV_ADDR_KEY_BASE + 1);
}

u32 XAes_ha_Get_key_BitWidth(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAES_HA_SLV_WIDTH_KEY;
}

u32 XAes_ha_Get_key_Depth(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAES_HA_SLV_DEPTH_KEY;
}

u32 XAes_ha_Write_key_Words(XAes_ha *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XAES_HA_SLV_ADDR_KEY_HIGH - XAES_HA_SLV_ADDR_KEY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_KEY_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XAes_ha_Read_key_Words(XAes_ha *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XAES_HA_SLV_ADDR_KEY_HIGH - XAES_HA_SLV_ADDR_KEY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_KEY_BASE + (offset + i)*4);
    }
    return length;
}

u32 XAes_ha_Write_key_Bytes(XAes_ha *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XAES_HA_SLV_ADDR_KEY_HIGH - XAES_HA_SLV_ADDR_KEY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_KEY_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAes_ha_Read_key_Bytes(XAes_ha *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XAES_HA_SLV_ADDR_KEY_HIGH - XAES_HA_SLV_ADDR_KEY_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_KEY_BASE + offset + i);
    }
    return length;
}

u32 XAes_ha_Get_iv_BaseAddress(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_IV_BASE);
}

u32 XAes_ha_Get_iv_HighAddress(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_IV_HIGH);
}

u32 XAes_ha_Get_iv_TotalBytes(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XAES_HA_SLV_ADDR_IV_HIGH - XAES_HA_SLV_ADDR_IV_BASE + 1);
}

u32 XAes_ha_Get_iv_BitWidth(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAES_HA_SLV_WIDTH_IV;
}

u32 XAes_ha_Get_iv_Depth(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAES_HA_SLV_DEPTH_IV;
}

u32 XAes_ha_Write_iv_Words(XAes_ha *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XAES_HA_SLV_ADDR_IV_HIGH - XAES_HA_SLV_ADDR_IV_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_IV_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XAes_ha_Read_iv_Words(XAes_ha *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XAES_HA_SLV_ADDR_IV_HIGH - XAES_HA_SLV_ADDR_IV_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_IV_BASE + (offset + i)*4);
    }
    return length;
}

u32 XAes_ha_Write_iv_Bytes(XAes_ha *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XAES_HA_SLV_ADDR_IV_HIGH - XAES_HA_SLV_ADDR_IV_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_IV_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAes_ha_Read_iv_Bytes(XAes_ha *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XAES_HA_SLV_ADDR_IV_HIGH - XAES_HA_SLV_ADDR_IV_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_IV_BASE + offset + i);
    }
    return length;
}

u32 XAes_ha_Get_inout_r_BaseAddress(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_INOUT_R_BASE);
}

u32 XAes_ha_Get_inout_r_HighAddress(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_INOUT_R_HIGH);
}

u32 XAes_ha_Get_inout_r_TotalBytes(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XAES_HA_SLV_ADDR_INOUT_R_HIGH - XAES_HA_SLV_ADDR_INOUT_R_BASE + 1);
}

u32 XAes_ha_Get_inout_r_BitWidth(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAES_HA_SLV_WIDTH_INOUT_R;
}

u32 XAes_ha_Get_inout_r_Depth(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAES_HA_SLV_DEPTH_INOUT_R;
}

u32 XAes_ha_Write_inout_r_Words(XAes_ha *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XAES_HA_SLV_ADDR_INOUT_R_HIGH - XAES_HA_SLV_ADDR_INOUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_INOUT_R_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XAes_ha_Read_inout_r_Words(XAes_ha *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XAES_HA_SLV_ADDR_INOUT_R_HIGH - XAES_HA_SLV_ADDR_INOUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_INOUT_R_BASE + (offset + i)*4);
    }
    return length;
}

u32 XAes_ha_Write_inout_r_Bytes(XAes_ha *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XAES_HA_SLV_ADDR_INOUT_R_HIGH - XAES_HA_SLV_ADDR_INOUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_INOUT_R_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAes_ha_Read_inout_r_Bytes(XAes_ha *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XAES_HA_SLV_ADDR_INOUT_R_HIGH - XAES_HA_SLV_ADDR_INOUT_R_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Slv_BaseAddress + XAES_HA_SLV_ADDR_INOUT_R_BASE + offset + i);
    }
    return length;
}

void XAes_ha_InterruptGlobalEnable(XAes_ha *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_ha_WriteReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_GIE, 1);
}

void XAes_ha_InterruptGlobalDisable(XAes_ha *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_ha_WriteReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_GIE, 0);
}

void XAes_ha_InterruptEnable(XAes_ha *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes_ha_ReadReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_IER);
    XAes_ha_WriteReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_IER, Register | Mask);
}

void XAes_ha_InterruptDisable(XAes_ha *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes_ha_ReadReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_IER);
    XAes_ha_WriteReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_IER, Register & (~Mask));
}

void XAes_ha_InterruptClear(XAes_ha *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_ha_WriteReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_ISR, Mask);
}

u32 XAes_ha_InterruptGetEnabled(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes_ha_ReadReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_IER);
}

u32 XAes_ha_InterruptGetStatus(XAes_ha *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes_ha_ReadReg(InstancePtr->Slv_BaseAddress, XAES_HA_SLV_ADDR_ISR);
}

