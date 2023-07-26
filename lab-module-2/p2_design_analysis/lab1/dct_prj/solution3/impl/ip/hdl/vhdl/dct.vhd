-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dct is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    input_r_ce0 : OUT STD_LOGIC;
    input_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of dct is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "dct,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-1-e,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.351000,HLS_SYN_LAT=843,HLS_SYN_TPT=none,HLS_SYN_MEM=5,HLS_SYN_DSP=8,HLS_SYN_FF=546,HLS_SYN_LUT=1356,HLS_VERSION=2019_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_pp1_stage0 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal indvar_flatten_reg_138 : STD_LOGIC_VECTOR (6 downto 0);
    signal r_0_i_reg_149 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_0_i_reg_160 : STD_LOGIC_VECTOR (3 downto 0);
    signal indvar_flatten11_reg_171 : STD_LOGIC_VECTOR (6 downto 0);
    signal r_0_i2_reg_182 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_0_i4_reg_193 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln103_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln103_reg_423 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln103_fu_232_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal select_ln103_fu_250_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln103_reg_432 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln103_1_fu_258_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln103_1_reg_437 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_fu_293_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln115_fu_324_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln115_reg_453 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp1_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp1_stage0 : signal is "none";
    signal ap_block_state6_pp1_stage0_iter0 : BOOLEAN;
    signal ap_block_state7_pp1_stage0_iter1 : BOOLEAN;
    signal ap_block_pp1_stage0_11001 : BOOLEAN;
    signal add_ln115_fu_330_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_enable_reg_pp1_iter0 : STD_LOGIC := '0';
    signal select_ln115_1_fu_356_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln115_1_reg_462 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln118_fu_407_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln118_reg_472 : STD_LOGIC_VECTOR (5 downto 0);
    signal c_1_fu_413_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_dct_2d_fu_204_ap_ready : STD_LOGIC;
    signal grp_dct_2d_fu_204_ap_done : STD_LOGIC;
    signal ap_block_pp1_stage0_subdone : BOOLEAN;
    signal ap_condition_pp1_exit_iter0_state6 : STD_LOGIC;
    signal ap_enable_reg_pp1_iter1 : STD_LOGIC := '0';
    signal buf_2d_in_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal buf_2d_in_ce0 : STD_LOGIC;
    signal buf_2d_in_we0 : STD_LOGIC;
    signal buf_2d_in_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal buf_2d_in_ce1 : STD_LOGIC;
    signal buf_2d_in_q1 : STD_LOGIC_VECTOR (15 downto 0);
    signal buf_2d_out_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal buf_2d_out_ce0 : STD_LOGIC;
    signal buf_2d_out_we0 : STD_LOGIC;
    signal buf_2d_out_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dct_2d_fu_204_ap_start : STD_LOGIC;
    signal grp_dct_2d_fu_204_ap_idle : STD_LOGIC;
    signal grp_dct_2d_fu_204_in_block_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_dct_2d_fu_204_in_block_ce0 : STD_LOGIC;
    signal grp_dct_2d_fu_204_in_block_address1 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_dct_2d_fu_204_in_block_ce1 : STD_LOGIC;
    signal grp_dct_2d_fu_204_out_block_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_dct_2d_fu_204_out_block_ce0 : STD_LOGIC;
    signal grp_dct_2d_fu_204_out_block_we0 : STD_LOGIC;
    signal grp_dct_2d_fu_204_out_block_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_phi_mux_r_0_i_phi_fu_153_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_phi_mux_r_0_i2_phi_fu_186_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp1_stage0 : BOOLEAN;
    signal grp_dct_2d_fu_204_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln106_fu_288_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln106_2_fu_319_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln118_1_fu_402_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln118_2_fu_419_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln105_fu_244_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_fu_238_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln103_fu_266_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln105_fu_278_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal shl_ln106_mid2_fu_270_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln106_fu_282_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_s_fu_299_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln105_1_fu_306_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln106_1_fu_310_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln106_1_fu_313_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln117_fu_342_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_1_fu_336_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_3_fu_364_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal trunc_ln115_fu_376_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln115_fu_348_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln115_fu_372_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln118_fu_392_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln118_1_fu_396_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln117_fu_388_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal shl_ln118_mid2_fu_380_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_idle_pp1 : STD_LOGIC;
    signal ap_enable_pp1 : STD_LOGIC;

    component dct_2d IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        in_block_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        in_block_ce0 : OUT STD_LOGIC;
        in_block_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        in_block_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
        in_block_ce1 : OUT STD_LOGIC;
        in_block_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
        out_block_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        out_block_ce0 : OUT STD_LOGIC;
        out_block_we0 : OUT STD_LOGIC;
        out_block_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component dct_2d_col_inbuf IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (15 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        address1 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component dct_2d_row_outbuf IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (15 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    buf_2d_in_U : component dct_2d_col_inbuf
    generic map (
        DataWidth => 16,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buf_2d_in_address0,
        ce0 => buf_2d_in_ce0,
        we0 => buf_2d_in_we0,
        d0 => input_r_q0,
        q0 => buf_2d_in_q0,
        address1 => grp_dct_2d_fu_204_in_block_address1,
        ce1 => buf_2d_in_ce1,
        q1 => buf_2d_in_q1);

    buf_2d_out_U : component dct_2d_row_outbuf
    generic map (
        DataWidth => 16,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buf_2d_out_address0,
        ce0 => buf_2d_out_ce0,
        we0 => buf_2d_out_we0,
        d0 => grp_dct_2d_fu_204_out_block_d0,
        q0 => buf_2d_out_q0);

    grp_dct_2d_fu_204 : component dct_2d
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_dct_2d_fu_204_ap_start,
        ap_done => grp_dct_2d_fu_204_ap_done,
        ap_idle => grp_dct_2d_fu_204_ap_idle,
        ap_ready => grp_dct_2d_fu_204_ap_ready,
        in_block_address0 => grp_dct_2d_fu_204_in_block_address0,
        in_block_ce0 => grp_dct_2d_fu_204_in_block_ce0,
        in_block_q0 => buf_2d_in_q0,
        in_block_address1 => grp_dct_2d_fu_204_in_block_address1,
        in_block_ce1 => grp_dct_2d_fu_204_in_block_ce1,
        in_block_q1 => buf_2d_in_q1,
        out_block_address0 => grp_dct_2d_fu_204_out_block_address0,
        out_block_ce0 => grp_dct_2d_fu_204_out_block_ce0,
        out_block_we0 => grp_dct_2d_fu_204_out_block_we0,
        out_block_d0 => grp_dct_2d_fu_204_out_block_d0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp1_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp1_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_const_logic_1 = ap_condition_pp1_exit_iter0_state6) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then 
                    ap_enable_reg_pp1_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_dct_2d_fu_204_ap_done = ap_const_logic_1))) then 
                    ap_enable_reg_pp1_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp1_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp1_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp1_exit_iter0_state6) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then 
                    ap_enable_reg_pp1_iter1 <= (ap_const_logic_1 xor ap_condition_pp1_exit_iter0_state6);
                elsif ((ap_const_boolean_0 = ap_block_pp1_stage0_subdone)) then 
                    ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_dct_2d_fu_204_ap_done = ap_const_logic_1))) then 
                    ap_enable_reg_pp1_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_dct_2d_fu_204_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_dct_2d_fu_204_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    grp_dct_2d_fu_204_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_dct_2d_fu_204_ap_ready = ap_const_logic_1)) then 
                    grp_dct_2d_fu_204_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    c_0_i4_reg_193_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (icmp_ln115_fu_324_p2 = ap_const_lv1_0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then 
                c_0_i4_reg_193 <= c_1_fu_413_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_dct_2d_fu_204_ap_done = ap_const_logic_1))) then 
                c_0_i4_reg_193 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    c_0_i_reg_160_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln103_fu_226_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                c_0_i_reg_160 <= c_fu_293_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                c_0_i_reg_160 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    indvar_flatten11_reg_171_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (icmp_ln115_fu_324_p2 = ap_const_lv1_0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then 
                indvar_flatten11_reg_171 <= add_ln115_fu_330_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_dct_2d_fu_204_ap_done = ap_const_logic_1))) then 
                indvar_flatten11_reg_171 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_138_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln103_fu_226_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                indvar_flatten_reg_138 <= add_ln103_fu_232_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                indvar_flatten_reg_138 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    r_0_i2_reg_182_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (icmp_ln115_reg_453 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1))) then 
                r_0_i2_reg_182 <= select_ln115_1_reg_462;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_dct_2d_fu_204_ap_done = ap_const_logic_1))) then 
                r_0_i2_reg_182 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    r_0_i_reg_149_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln103_reg_423 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                r_0_i_reg_149 <= select_ln103_1_reg_437;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                r_0_i_reg_149 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (icmp_ln115_fu_324_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then
                add_ln118_reg_472 <= add_ln118_fu_407_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln103_reg_423 <= icmp_ln103_fu_226_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then
                icmp_ln115_reg_453 <= icmp_ln115_fu_324_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln103_fu_226_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln103_1_reg_437 <= select_ln103_1_fu_258_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln103_fu_226_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln103_reg_432 <= select_ln103_fu_250_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (icmp_ln115_fu_324_p2 = ap_const_lv1_0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then
                select_ln115_1_reg_462 <= select_ln115_1_fu_356_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln103_fu_226_p2, ap_enable_reg_pp0_iter0, icmp_ln115_fu_324_p2, ap_enable_reg_pp1_iter0, ap_block_pp0_stage0_subdone, ap_CS_fsm_state5, grp_dct_2d_fu_204_ap_done, ap_block_pp1_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((icmp_ln103_fu_226_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((icmp_ln103_fu_226_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_dct_2d_fu_204_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_pp1_stage0 => 
                if (not(((icmp_ln115_fu_324_p2 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                elsif (((icmp_ln115_fu_324_p2 = ap_const_lv1_1) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp1_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp1_stage0;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln103_fu_232_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_138) + unsigned(ap_const_lv7_1));
    add_ln106_1_fu_313_p2 <= std_logic_vector(unsigned(zext_ln105_1_fu_306_p1) + unsigned(zext_ln106_1_fu_310_p1));
    add_ln106_fu_282_p2 <= std_logic_vector(unsigned(zext_ln105_fu_278_p1) + unsigned(shl_ln106_mid2_fu_270_p3));
    add_ln115_fu_330_p2 <= std_logic_vector(unsigned(indvar_flatten11_reg_171) + unsigned(ap_const_lv7_1));
    add_ln118_1_fu_396_p2 <= std_logic_vector(unsigned(zext_ln115_fu_372_p1) + unsigned(zext_ln118_fu_392_p1));
    add_ln118_fu_407_p2 <= std_logic_vector(unsigned(zext_ln117_fu_388_p1) + unsigned(shl_ln118_mid2_fu_380_p3));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp1_stage0 <= ap_CS_fsm(4);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
    ap_CS_fsm_state8 <= ap_CS_fsm(5);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp1_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp1_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp1_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln103_fu_226_p2)
    begin
        if ((icmp_ln103_fu_226_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_pp1_exit_iter0_state6_assign_proc : process(icmp_ln115_fu_324_p2)
    begin
        if ((icmp_ln115_fu_324_p2 = ap_const_lv1_1)) then 
            ap_condition_pp1_exit_iter0_state6 <= ap_const_logic_1;
        else 
            ap_condition_pp1_exit_iter0_state6 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_pp1 <= (ap_idle_pp1 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp1_assign_proc : process(ap_enable_reg_pp1_iter0, ap_enable_reg_pp1_iter1)
    begin
        if (((ap_enable_reg_pp1_iter0 = ap_const_logic_0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_0))) then 
            ap_idle_pp1 <= ap_const_logic_1;
        else 
            ap_idle_pp1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_r_0_i2_phi_fu_186_p4_assign_proc : process(r_0_i2_reg_182, icmp_ln115_reg_453, ap_CS_fsm_pp1_stage0, select_ln115_1_reg_462, ap_enable_reg_pp1_iter1, ap_block_pp1_stage0)
    begin
        if (((icmp_ln115_reg_453 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1))) then 
            ap_phi_mux_r_0_i2_phi_fu_186_p4 <= select_ln115_1_reg_462;
        else 
            ap_phi_mux_r_0_i2_phi_fu_186_p4 <= r_0_i2_reg_182;
        end if; 
    end process;


    ap_phi_mux_r_0_i_phi_fu_153_p4_assign_proc : process(r_0_i_reg_149, icmp_ln103_reg_423, ap_CS_fsm_pp0_stage0, select_ln103_1_reg_437, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((icmp_ln103_reg_423 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_r_0_i_phi_fu_153_p4 <= select_ln103_1_reg_437;
        else 
            ap_phi_mux_r_0_i_phi_fu_153_p4 <= r_0_i_reg_149;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    buf_2d_in_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_CS_fsm_state5, grp_dct_2d_fu_204_in_block_address0, ap_block_pp0_stage0, zext_ln106_2_fu_319_p1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            buf_2d_in_address0 <= zext_ln106_2_fu_319_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            buf_2d_in_address0 <= grp_dct_2d_fu_204_in_block_address0;
        else 
            buf_2d_in_address0 <= "XXXXXX";
        end if; 
    end process;


    buf_2d_in_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1, ap_CS_fsm_state5, grp_dct_2d_fu_204_in_block_ce0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            buf_2d_in_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            buf_2d_in_ce0 <= grp_dct_2d_fu_204_in_block_ce0;
        else 
            buf_2d_in_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_2d_in_ce1_assign_proc : process(ap_CS_fsm_state5, grp_dct_2d_fu_204_in_block_ce1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            buf_2d_in_ce1 <= grp_dct_2d_fu_204_in_block_ce1;
        else 
            buf_2d_in_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    buf_2d_in_we0_assign_proc : process(icmp_ln103_reg_423, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln103_reg_423 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            buf_2d_in_we0 <= ap_const_logic_1;
        else 
            buf_2d_in_we0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_2d_out_address0_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_enable_reg_pp1_iter0, ap_CS_fsm_state5, grp_dct_2d_fu_204_out_block_address0, ap_block_pp1_stage0, zext_ln118_1_fu_402_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then 
            buf_2d_out_address0 <= zext_ln118_1_fu_402_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            buf_2d_out_address0 <= grp_dct_2d_fu_204_out_block_address0;
        else 
            buf_2d_out_address0 <= "XXXXXX";
        end if; 
    end process;


    buf_2d_out_ce0_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_block_pp1_stage0_11001, ap_enable_reg_pp1_iter0, ap_CS_fsm_state5, grp_dct_2d_fu_204_out_block_ce0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (ap_enable_reg_pp1_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0))) then 
            buf_2d_out_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            buf_2d_out_ce0 <= grp_dct_2d_fu_204_out_block_ce0;
        else 
            buf_2d_out_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    buf_2d_out_we0_assign_proc : process(ap_CS_fsm_state5, grp_dct_2d_fu_204_out_block_we0)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            buf_2d_out_we0 <= grp_dct_2d_fu_204_out_block_we0;
        else 
            buf_2d_out_we0 <= ap_const_logic_0;
        end if; 
    end process;

    c_1_fu_413_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(select_ln115_fu_348_p3));
    c_fu_293_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(select_ln103_fu_250_p3));
    grp_dct_2d_fu_204_ap_start <= grp_dct_2d_fu_204_ap_start_reg;
    icmp_ln103_fu_226_p2 <= "1" when (indvar_flatten_reg_138 = ap_const_lv7_40) else "0";
    icmp_ln105_fu_244_p2 <= "1" when (c_0_i_reg_160 = ap_const_lv4_8) else "0";
    icmp_ln115_fu_324_p2 <= "1" when (indvar_flatten11_reg_171 = ap_const_lv7_40) else "0";
    icmp_ln117_fu_342_p2 <= "1" when (c_0_i4_reg_193 = ap_const_lv4_8) else "0";
    input_r_address0 <= zext_ln106_fu_288_p1(6 - 1 downto 0);

    input_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_address0 <= zext_ln118_2_fu_419_p1(6 - 1 downto 0);

    output_r_ce0_assign_proc : process(ap_CS_fsm_pp1_stage0, ap_block_pp1_stage0_11001, ap_enable_reg_pp1_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1))) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= buf_2d_out_q0;

    output_r_we0_assign_proc : process(icmp_ln115_reg_453, ap_CS_fsm_pp1_stage0, ap_block_pp1_stage0_11001, ap_enable_reg_pp1_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp1_stage0_11001) and (icmp_ln115_reg_453 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp1_stage0) and (ap_enable_reg_pp1_iter1 = ap_const_logic_1))) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    r_1_fu_336_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(ap_phi_mux_r_0_i2_phi_fu_186_p4));
    r_fu_238_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(ap_phi_mux_r_0_i_phi_fu_153_p4));
    select_ln103_1_fu_258_p3 <= 
        r_fu_238_p2 when (icmp_ln105_fu_244_p2(0) = '1') else 
        ap_phi_mux_r_0_i_phi_fu_153_p4;
    select_ln103_fu_250_p3 <= 
        ap_const_lv4_0 when (icmp_ln105_fu_244_p2(0) = '1') else 
        c_0_i_reg_160;
    select_ln115_1_fu_356_p3 <= 
        r_1_fu_336_p2 when (icmp_ln117_fu_342_p2(0) = '1') else 
        ap_phi_mux_r_0_i2_phi_fu_186_p4;
    select_ln115_fu_348_p3 <= 
        ap_const_lv4_0 when (icmp_ln117_fu_342_p2(0) = '1') else 
        c_0_i4_reg_193;
    shl_ln106_mid2_fu_270_p3 <= (trunc_ln103_fu_266_p1 & ap_const_lv3_0);
    shl_ln118_mid2_fu_380_p3 <= (trunc_ln115_fu_376_p1 & ap_const_lv3_0);
    tmp_3_fu_364_p3 <= (select_ln115_1_fu_356_p3 & ap_const_lv3_0);
    tmp_s_fu_299_p3 <= (select_ln103_1_reg_437 & ap_const_lv3_0);
    trunc_ln103_fu_266_p1 <= select_ln103_1_fu_258_p3(3 - 1 downto 0);
    trunc_ln115_fu_376_p1 <= select_ln115_1_fu_356_p3(3 - 1 downto 0);
    zext_ln105_1_fu_306_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_299_p3),8));
    zext_ln105_fu_278_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln103_fu_250_p3),6));
    zext_ln106_1_fu_310_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln103_reg_432),8));
    zext_ln106_2_fu_319_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln106_1_fu_313_p2),64));
    zext_ln106_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln106_fu_282_p2),64));
    zext_ln115_fu_372_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_364_p3),8));
    zext_ln117_fu_388_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln115_fu_348_p3),6));
    zext_ln118_1_fu_402_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln118_1_fu_396_p2),64));
    zext_ln118_2_fu_419_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln118_reg_472),64));
    zext_ln118_fu_392_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln115_fu_348_p3),8));
end behav;
