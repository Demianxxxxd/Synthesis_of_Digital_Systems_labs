// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaes_ha.h"

extern XAes_ha_Config XAes_ha_ConfigTable[];

XAes_ha_Config *XAes_ha_LookupConfig(u16 DeviceId) {
	XAes_ha_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAES_HA_NUM_INSTANCES; Index++) {
		if (XAes_ha_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAes_ha_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAes_ha_Initialize(XAes_ha *InstancePtr, u16 DeviceId) {
	XAes_ha_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAes_ha_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAes_ha_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

