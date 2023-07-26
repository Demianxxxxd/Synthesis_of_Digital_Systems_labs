// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAES_HA_H
#define XAES_HA_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaes_ha_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Slv_BaseAddress;
} XAes_ha_Config;
#endif

typedef struct {
    u32 Slv_BaseAddress;
    u32 IsReady;
} XAes_ha;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAes_ha_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAes_ha_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAes_ha_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAes_ha_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAes_ha_Initialize(XAes_ha *InstancePtr, u16 DeviceId);
XAes_ha_Config* XAes_ha_LookupConfig(u16 DeviceId);
int XAes_ha_CfgInitialize(XAes_ha *InstancePtr, XAes_ha_Config *ConfigPtr);
#else
int XAes_ha_Initialize(XAes_ha *InstancePtr, const char* InstanceName);
int XAes_ha_Release(XAes_ha *InstancePtr);
#endif

void XAes_ha_Start(XAes_ha *InstancePtr);
u32 XAes_ha_IsDone(XAes_ha *InstancePtr);
u32 XAes_ha_IsIdle(XAes_ha *InstancePtr);
u32 XAes_ha_IsReady(XAes_ha *InstancePtr);
void XAes_ha_EnableAutoRestart(XAes_ha *InstancePtr);
void XAes_ha_DisableAutoRestart(XAes_ha *InstancePtr);

void XAes_ha_Set_in_r(XAes_ha *InstancePtr, u32 Data);
u32 XAes_ha_Get_in_r(XAes_ha *InstancePtr);
void XAes_ha_Set_out_r(XAes_ha *InstancePtr, u32 Data);
u32 XAes_ha_Get_out_r(XAes_ha *InstancePtr);
void XAes_ha_Set_length_r(XAes_ha *InstancePtr, u32 Data);
u32 XAes_ha_Get_length_r(XAes_ha *InstancePtr);
u32 XAes_ha_Get_key_BaseAddress(XAes_ha *InstancePtr);
u32 XAes_ha_Get_key_HighAddress(XAes_ha *InstancePtr);
u32 XAes_ha_Get_key_TotalBytes(XAes_ha *InstancePtr);
u32 XAes_ha_Get_key_BitWidth(XAes_ha *InstancePtr);
u32 XAes_ha_Get_key_Depth(XAes_ha *InstancePtr);
u32 XAes_ha_Write_key_Words(XAes_ha *InstancePtr, int offset, int *data, int length);
u32 XAes_ha_Read_key_Words(XAes_ha *InstancePtr, int offset, int *data, int length);
u32 XAes_ha_Write_key_Bytes(XAes_ha *InstancePtr, int offset, char *data, int length);
u32 XAes_ha_Read_key_Bytes(XAes_ha *InstancePtr, int offset, char *data, int length);
u32 XAes_ha_Get_iv_BaseAddress(XAes_ha *InstancePtr);
u32 XAes_ha_Get_iv_HighAddress(XAes_ha *InstancePtr);
u32 XAes_ha_Get_iv_TotalBytes(XAes_ha *InstancePtr);
u32 XAes_ha_Get_iv_BitWidth(XAes_ha *InstancePtr);
u32 XAes_ha_Get_iv_Depth(XAes_ha *InstancePtr);
u32 XAes_ha_Write_iv_Words(XAes_ha *InstancePtr, int offset, int *data, int length);
u32 XAes_ha_Read_iv_Words(XAes_ha *InstancePtr, int offset, int *data, int length);
u32 XAes_ha_Write_iv_Bytes(XAes_ha *InstancePtr, int offset, char *data, int length);
u32 XAes_ha_Read_iv_Bytes(XAes_ha *InstancePtr, int offset, char *data, int length);

void XAes_ha_InterruptGlobalEnable(XAes_ha *InstancePtr);
void XAes_ha_InterruptGlobalDisable(XAes_ha *InstancePtr);
void XAes_ha_InterruptEnable(XAes_ha *InstancePtr, u32 Mask);
void XAes_ha_InterruptDisable(XAes_ha *InstancePtr, u32 Mask);
void XAes_ha_InterruptClear(XAes_ha *InstancePtr, u32 Mask);
u32 XAes_ha_InterruptGetEnabled(XAes_ha *InstancePtr);
u32 XAes_ha_InterruptGetStatus(XAes_ha *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
