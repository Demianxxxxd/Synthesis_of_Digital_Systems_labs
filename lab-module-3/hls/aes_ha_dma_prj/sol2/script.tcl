############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project aes_ha_dma_prj
set_top aes_ha
add_files hls/dma/aes_ha.h
add_files hls/dma/aes_ha.c
add_files c_src/aes.h
add_files c_src/aes.c
add_files -tb testbench/aes_test.c -cflags "-Ihls/dma -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "sol2"
set_part {xc7s15-ftgb196-2}
create_clock -period 10 -name default
config_sdx -target none
config_export -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
set_clock_uncertainty 12.5%
source "./aes_ha_dma_prj/sol2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
