# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 84 \
    name ctx_RoundKey \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename ctx_RoundKey \
    op interface \
    ports { ctx_RoundKey_address0 { O 8 vector } ctx_RoundKey_ce0 { O 1 bit } ctx_RoundKey_q0 { I 8 vector } ctx_RoundKey_address1 { O 8 vector } ctx_RoundKey_ce1 { O 1 bit } ctx_RoundKey_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ctx_RoundKey'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 85 \
    name ctx_Iv \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename ctx_Iv \
    op interface \
    ports { ctx_Iv_address0 { O 4 vector } ctx_Iv_ce0 { O 1 bit } ctx_Iv_we0 { O 1 bit } ctx_Iv_d0 { O 8 vector } ctx_Iv_q0 { I 8 vector } ctx_Iv_address1 { O 4 vector } ctx_Iv_ce1 { O 1 bit } ctx_Iv_we1 { O 1 bit } ctx_Iv_d1 { O 8 vector } ctx_Iv_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ctx_Iv'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name buf_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_0_read \
    op interface \
    ports { buf_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name buf_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_1_read \
    op interface \
    ports { buf_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name buf_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_2_read \
    op interface \
    ports { buf_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name buf_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_3_read \
    op interface \
    ports { buf_3_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name buf_4_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_4_read \
    op interface \
    ports { buf_4_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name buf_5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_5_read \
    op interface \
    ports { buf_5_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name buf_6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_6_read \
    op interface \
    ports { buf_6_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name buf_7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_7_read \
    op interface \
    ports { buf_7_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name buf_8_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_8_read \
    op interface \
    ports { buf_8_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name buf_9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_9_read \
    op interface \
    ports { buf_9_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name buf_10_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_10_read \
    op interface \
    ports { buf_10_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name buf_11_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_11_read \
    op interface \
    ports { buf_11_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name buf_12_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_12_read \
    op interface \
    ports { buf_12_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name buf_13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_13_read \
    op interface \
    ports { buf_13_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name buf_14_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_14_read \
    op interface \
    ports { buf_14_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name buf_15_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_15_read \
    op interface \
    ports { buf_15_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


