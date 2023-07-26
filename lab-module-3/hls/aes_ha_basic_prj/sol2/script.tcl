############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project aes_ha_basic_prj
set_top aes_ha
add_files hls/basic/aes_ha.h
add_files hls/basic/aes_ha.c
add_files c_src/aes.h
add_files c_src/aes.c
add_files -tb testbench/aes_test.c -cflags "-Ihls/basic -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "sol2"
set_part {xc7s15-ftgb196-2}
create_clock -period 10 -name default
source "./aes_ha_basic_prj/sol2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
