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
    id 83 \
    name RoundKey \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename RoundKey \
    op interface \
    ports { RoundKey_address0 { O 8 vector } RoundKey_ce0 { O 1 bit } RoundKey_q0 { I 8 vector } RoundKey_address1 { O 8 vector } RoundKey_ce1 { O 1 bit } RoundKey_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'RoundKey'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name state_0_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_0_0_read \
    op interface \
    ports { state_0_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name state_0_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_0_1_read \
    op interface \
    ports { state_0_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name state_0_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_0_2_read \
    op interface \
    ports { state_0_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name state_0_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_0_3_read \
    op interface \
    ports { state_0_3_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name state_1_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_1_0_read \
    op interface \
    ports { state_1_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name state_1_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_1_1_read \
    op interface \
    ports { state_1_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name state_1_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_1_2_read \
    op interface \
    ports { state_1_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name state_1_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_1_3_read \
    op interface \
    ports { state_1_3_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name state_2_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_2_0_read \
    op interface \
    ports { state_2_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name state_2_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_2_1_read \
    op interface \
    ports { state_2_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name state_2_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_2_2_read \
    op interface \
    ports { state_2_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name state_2_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_2_3_read \
    op interface \
    ports { state_2_3_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name state_3_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_3_0_read \
    op interface \
    ports { state_3_0_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name state_3_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_3_1_read \
    op interface \
    ports { state_3_1_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name state_3_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_3_2_read \
    op interface \
    ports { state_3_2_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name state_3_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_3_3_read \
    op interface \
    ports { state_3_3_read { I 8 vector } } \
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


