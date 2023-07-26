# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XAes_ha" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_SLV_BASEADDR" \
        "C_S_AXI_SLV_HIGHADDR"

    xdefine_config_file $drv_handle "xaes_ha_g.c" "XAes_ha" \
        "DEVICE_ID" \
        "C_S_AXI_SLV_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XAes_ha" \
        "DEVICE_ID" \
        "C_S_AXI_SLV_BASEADDR" \
        "C_S_AXI_SLV_HIGHADDR"
}

