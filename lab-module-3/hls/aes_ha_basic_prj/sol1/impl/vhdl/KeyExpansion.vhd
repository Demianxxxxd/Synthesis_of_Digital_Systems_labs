-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity KeyExpansion is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    RoundKey_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    RoundKey_ce0 : OUT STD_LOGIC;
    RoundKey_we0 : OUT STD_LOGIC;
    RoundKey_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    RoundKey_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    RoundKey_address1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    RoundKey_ce1 : OUT STD_LOGIC;
    RoundKey_we1 : OUT STD_LOGIC;
    RoundKey_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    RoundKey_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    Key_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    Key_ce0 : OUT STD_LOGIC;
    Key_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of KeyExpansion is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (11 downto 0) := "000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (11 downto 0) := "000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (11 downto 0) := "000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (11 downto 0) := "000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (11 downto 0) := "000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (11 downto 0) := "000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (11 downto 0) := "000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (11 downto 0) := "001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (11 downto 0) := "010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (11 downto 0) := "100000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv6_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv6_2C : STD_LOGIC_VECTOR (5 downto 0) := "101100";
    constant ap_const_lv8_FC : STD_LOGIC_VECTOR (7 downto 0) := "11111100";
    constant ap_const_lv8_FD : STD_LOGIC_VECTOR (7 downto 0) := "11111101";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv8_FE : STD_LOGIC_VECTOR (7 downto 0) := "11111110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv8_F0 : STD_LOGIC_VECTOR (7 downto 0) := "11110000";
    constant ap_const_lv8_F1 : STD_LOGIC_VECTOR (7 downto 0) := "11110001";
    constant ap_const_lv8_F2 : STD_LOGIC_VECTOR (7 downto 0) := "11110010";
    constant ap_const_lv8_F3 : STD_LOGIC_VECTOR (7 downto 0) := "11110011";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv8_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_const_lv8_3 : STD_LOGIC_VECTOR (7 downto 0) := "00000011";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sbox_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sbox_ce0 : STD_LOGIC;
    signal sbox_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sbox_address1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sbox_ce1 : STD_LOGIC;
    signal sbox_q1 : STD_LOGIC_VECTOR (7 downto 0);
    signal Rcon_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal Rcon_ce0 : STD_LOGIC;
    signal Rcon_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_fu_333_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_620 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal shl_ln_fu_343_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln_reg_625 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln190_fu_327_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln191_fu_351_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln191_reg_632 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln192_fu_361_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln192_reg_642 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal zext_ln193_fu_371_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln193_reg_652 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln194_fu_381_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln194_reg_662 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal j_fu_392_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_reg_675 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal icmp_ln198_fu_386_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln207_fu_426_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln207_reg_699 : STD_LOGIC_VECTOR (0 downto 0);
    signal lshr_ln_reg_707 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_4_fu_442_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_4_reg_712 : STD_LOGIC_VECTOR (5 downto 0);
    signal tempa_0_3_reg_717 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal tempa_1_reg_723 : STD_LOGIC_VECTOR (7 downto 0);
    signal tempa_2_reg_739 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal tempa_3_reg_744 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal xor_ln246_fu_527_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln246_reg_785 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln247_fu_533_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln247_reg_790 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln248_fu_585_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln248_reg_805 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal xor_ln249_fu_591_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln249_reg_810 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_0_reg_305 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal i_1_reg_316 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal zext_ln201_fu_406_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln202_fu_417_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln203_fu_453_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln204_fu_463_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln225_fu_468_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln226_fu_472_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln231_fu_477_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln246_fu_486_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln247_fu_496_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln227_fu_501_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln228_fu_505_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln248_fu_544_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln249_fu_554_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln246_1_fu_571_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln247_1_fu_580_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln248_1_fu_602_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln249_1_fu_612_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln191_fu_339_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln192_fu_356_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal or_ln193_fu_366_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal or_ln194_fu_376_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln201_fu_400_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln202_fu_411_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln198_fu_422_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln203_fu_448_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln204_fu_458_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln246_fu_481_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln247_fu_491_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tempa_0_fu_509_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tempa_0_2_fu_521_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tempa_1_2_fu_515_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln248_fu_539_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln249_fu_549_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln247_fu_575_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tempa_2_2_fu_565_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tempa_3_2_fu_559_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln248_fu_597_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal or_ln249_fu_607_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (11 downto 0);

    component KeyExpansion_sbox IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        address1 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component KeyExpansion_Rcon IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    sbox_U : component KeyExpansion_sbox
    generic map (
        DataWidth => 8,
        AddressRange => 256,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => sbox_address0,
        ce0 => sbox_ce0,
        q0 => sbox_q0,
        address1 => sbox_address1,
        ce1 => sbox_ce1,
        q1 => sbox_q1);

    Rcon_U : component KeyExpansion_Rcon
    generic map (
        DataWidth => 8,
        AddressRange => 11,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => Rcon_address0,
        ce0 => Rcon_ce0,
        q0 => Rcon_q0);





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


    i_0_reg_305_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                i_0_reg_305 <= i_reg_620;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_305 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    i_1_reg_316_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln190_fu_327_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_1_reg_316 <= ap_const_lv6_4;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                i_1_reg_316 <= i_4_reg_712;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln198_fu_386_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                i_4_reg_712 <= i_4_fu_442_p2;
                icmp_ln207_reg_699 <= icmp_ln207_fu_426_p2;
                    j_reg_675(7 downto 2) <= j_fu_392_p3(7 downto 2);
                lshr_ln_reg_707 <= i_1_reg_316(5 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_620 <= i_fu_333_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln190_fu_327_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    shl_ln_reg_625(3 downto 2) <= shl_ln_fu_343_p3(3 downto 2);
                    zext_ln191_reg_632(3 downto 2) <= zext_ln191_fu_351_p1(3 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                tempa_0_3_reg_717 <= RoundKey_q0;
                tempa_1_reg_723 <= RoundKey_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                tempa_2_reg_739 <= RoundKey_q1;
                tempa_3_reg_744 <= RoundKey_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                xor_ln246_reg_785 <= xor_ln246_fu_527_p2;
                xor_ln247_reg_790 <= xor_ln247_fu_533_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then
                xor_ln248_reg_805 <= xor_ln248_fu_585_p2;
                xor_ln249_reg_810 <= xor_ln249_fu_591_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    zext_ln192_reg_642(3 downto 2) <= zext_ln192_fu_361_p1(3 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                    zext_ln193_reg_652(3 downto 2) <= zext_ln193_fu_371_p1(3 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                    zext_ln194_reg_662(3 downto 2) <= zext_ln194_fu_381_p1(3 downto 2);
            end if;
        end if;
    end process;
    shl_ln_reg_625(1 downto 0) <= "00";
    zext_ln191_reg_632(1 downto 0) <= "00";
    zext_ln191_reg_632(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";
    zext_ln192_reg_642(1 downto 0) <= "01";
    zext_ln192_reg_642(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";
    zext_ln193_reg_652(1 downto 0) <= "10";
    zext_ln193_reg_652(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";
    zext_ln194_reg_662(1 downto 0) <= "11";
    zext_ln194_reg_662(63 downto 4) <= "000000000000000000000000000000000000000000000000000000000000";
    j_reg_675(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln190_fu_327_p2, ap_CS_fsm_state7, icmp_ln198_fu_386_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln190_fu_327_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln198_fu_386_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXX";
        end case;
    end process;

    Key_address0_assign_proc : process(ap_CS_fsm_state2, zext_ln191_fu_351_p1, zext_ln192_fu_361_p1, ap_CS_fsm_state3, zext_ln193_fu_371_p1, ap_CS_fsm_state4, zext_ln194_fu_381_p1, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            Key_address0 <= zext_ln194_fu_381_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            Key_address0 <= zext_ln193_fu_371_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            Key_address0 <= zext_ln192_fu_361_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            Key_address0 <= zext_ln191_fu_351_p1(4 - 1 downto 0);
        else 
            Key_address0 <= "XXXX";
        end if; 
    end process;


    Key_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            Key_ce0 <= ap_const_logic_1;
        else 
            Key_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    Rcon_address0 <= zext_ln231_fu_477_p1(4 - 1 downto 0);

    Rcon_ce0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            Rcon_ce0 <= ap_const_logic_1;
        else 
            Rcon_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    RoundKey_address0_assign_proc : process(zext_ln191_reg_632, zext_ln192_reg_642, ap_CS_fsm_state3, zext_ln193_reg_652, ap_CS_fsm_state4, zext_ln194_reg_662, ap_CS_fsm_state5, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10, ap_CS_fsm_state11, ap_CS_fsm_state6, ap_CS_fsm_state12, zext_ln201_fu_406_p1, zext_ln204_fu_463_p1, zext_ln247_fu_496_p1, zext_ln249_fu_554_p1, zext_ln247_1_fu_580_p1, zext_ln249_1_fu_612_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            RoundKey_address0 <= zext_ln249_1_fu_612_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            RoundKey_address0 <= zext_ln247_1_fu_580_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            RoundKey_address0 <= zext_ln249_fu_554_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            RoundKey_address0 <= zext_ln247_fu_496_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            RoundKey_address0 <= zext_ln204_fu_463_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            RoundKey_address0 <= zext_ln201_fu_406_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            RoundKey_address0 <= zext_ln194_reg_662(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            RoundKey_address0 <= zext_ln193_reg_652(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            RoundKey_address0 <= zext_ln192_reg_642(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            RoundKey_address0 <= zext_ln191_reg_632(8 - 1 downto 0);
        else 
            RoundKey_address0 <= "XXXXXXXX";
        end if; 
    end process;


    RoundKey_address1_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10, ap_CS_fsm_state11, ap_CS_fsm_state12, zext_ln202_fu_417_p1, zext_ln203_fu_453_p1, zext_ln246_fu_486_p1, zext_ln248_fu_544_p1, zext_ln246_1_fu_571_p1, zext_ln248_1_fu_602_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            RoundKey_address1 <= zext_ln248_1_fu_602_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            RoundKey_address1 <= zext_ln246_1_fu_571_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            RoundKey_address1 <= zext_ln248_fu_544_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            RoundKey_address1 <= zext_ln246_fu_486_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            RoundKey_address1 <= zext_ln203_fu_453_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            RoundKey_address1 <= zext_ln202_fu_417_p1(8 - 1 downto 0);
        else 
            RoundKey_address1 <= "XXXXXXXX";
        end if; 
    end process;


    RoundKey_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10, ap_CS_fsm_state11, ap_CS_fsm_state6, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            RoundKey_ce0 <= ap_const_logic_1;
        else 
            RoundKey_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    RoundKey_ce1_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10, ap_CS_fsm_state11, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            RoundKey_ce1 <= ap_const_logic_1;
        else 
            RoundKey_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    RoundKey_d0_assign_proc : process(Key_q0, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, xor_ln247_reg_790, ap_CS_fsm_state11, xor_ln249_reg_810, ap_CS_fsm_state6, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            RoundKey_d0 <= xor_ln249_reg_810;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            RoundKey_d0 <= xor_ln247_reg_790;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            RoundKey_d0 <= Key_q0;
        else 
            RoundKey_d0 <= "XXXXXXXX";
        end if; 
    end process;


    RoundKey_d1_assign_proc : process(xor_ln246_reg_785, xor_ln248_reg_805, ap_CS_fsm_state11, ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            RoundKey_d1 <= xor_ln248_reg_805;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            RoundKey_d1 <= xor_ln246_reg_785;
        else 
            RoundKey_d1 <= "XXXXXXXX";
        end if; 
    end process;


    RoundKey_we0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state11, ap_CS_fsm_state6, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            RoundKey_we0 <= ap_const_logic_1;
        else 
            RoundKey_we0 <= ap_const_logic_0;
        end if; 
    end process;


    RoundKey_we1_assign_proc : process(ap_CS_fsm_state11, ap_CS_fsm_state12)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            RoundKey_we1 <= ap_const_logic_1;
        else 
            RoundKey_we1 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln201_fu_400_p2 <= std_logic_vector(signed(ap_const_lv8_FC) + signed(j_fu_392_p3));
    add_ln202_fu_411_p2 <= std_logic_vector(signed(ap_const_lv8_FD) + signed(j_fu_392_p3));
    add_ln203_fu_448_p2 <= std_logic_vector(signed(ap_const_lv8_FE) + signed(j_reg_675));
    add_ln204_fu_458_p2 <= std_logic_vector(signed(ap_const_lv8_FF) + signed(j_reg_675));
    add_ln246_fu_481_p2 <= std_logic_vector(signed(ap_const_lv8_F0) + signed(j_reg_675));
    add_ln247_fu_491_p2 <= std_logic_vector(signed(ap_const_lv8_F1) + signed(j_reg_675));
    add_ln248_fu_539_p2 <= std_logic_vector(signed(ap_const_lv8_F2) + signed(j_reg_675));
    add_ln249_fu_549_p2 <= std_logic_vector(signed(ap_const_lv8_F3) + signed(j_reg_675));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state7, icmp_ln198_fu_386_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln198_fu_386_p2 = ap_const_lv1_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state7, icmp_ln198_fu_386_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln198_fu_386_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_4_fu_442_p2 <= std_logic_vector(unsigned(ap_const_lv6_1) + unsigned(i_1_reg_316));
    i_fu_333_p2 <= std_logic_vector(unsigned(i_0_reg_305) + unsigned(ap_const_lv3_1));
    icmp_ln190_fu_327_p2 <= "1" when (i_0_reg_305 = ap_const_lv3_4) else "0";
    icmp_ln198_fu_386_p2 <= "1" when (i_1_reg_316 = ap_const_lv6_2C) else "0";
    icmp_ln207_fu_426_p2 <= "1" when (trunc_ln198_fu_422_p1 = ap_const_lv2_0) else "0";
    j_fu_392_p3 <= (i_1_reg_316 & ap_const_lv2_0);
    or_ln192_fu_356_p2 <= (shl_ln_reg_625 or ap_const_lv4_1);
    or_ln193_fu_366_p2 <= (shl_ln_reg_625 or ap_const_lv4_2);
    or_ln194_fu_376_p2 <= (shl_ln_reg_625 or ap_const_lv4_3);
    or_ln247_fu_575_p2 <= (j_reg_675 or ap_const_lv8_1);
    or_ln248_fu_597_p2 <= (j_reg_675 or ap_const_lv8_2);
    or_ln249_fu_607_p2 <= (j_reg_675 or ap_const_lv8_3);

    sbox_address0_assign_proc : process(ap_CS_fsm_state9, ap_CS_fsm_state10, zext_ln225_fu_468_p1, zext_ln227_fu_501_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            sbox_address0 <= zext_ln227_fu_501_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            sbox_address0 <= zext_ln225_fu_468_p1(8 - 1 downto 0);
        else 
            sbox_address0 <= "XXXXXXXX";
        end if; 
    end process;


    sbox_address1_assign_proc : process(ap_CS_fsm_state9, ap_CS_fsm_state10, zext_ln226_fu_472_p1, zext_ln228_fu_505_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            sbox_address1 <= zext_ln228_fu_505_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            sbox_address1 <= zext_ln226_fu_472_p1(8 - 1 downto 0);
        else 
            sbox_address1 <= "XXXXXXXX";
        end if; 
    end process;


    sbox_ce0_assign_proc : process(ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            sbox_ce0 <= ap_const_logic_1;
        else 
            sbox_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    sbox_ce1_assign_proc : process(ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            sbox_ce1 <= ap_const_logic_1;
        else 
            sbox_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln_fu_343_p3 <= (trunc_ln191_fu_339_p1 & ap_const_lv2_0);
    tempa_0_2_fu_521_p3 <= 
        tempa_0_fu_509_p2 when (icmp_ln207_reg_699(0) = '1') else 
        tempa_0_3_reg_717;
    tempa_0_fu_509_p2 <= (sbox_q0 xor Rcon_q0);
    tempa_1_2_fu_515_p3 <= 
        sbox_q1 when (icmp_ln207_reg_699(0) = '1') else 
        tempa_1_reg_723;
    tempa_2_2_fu_565_p3 <= 
        sbox_q0 when (icmp_ln207_reg_699(0) = '1') else 
        tempa_2_reg_739;
    tempa_3_2_fu_559_p3 <= 
        sbox_q1 when (icmp_ln207_reg_699(0) = '1') else 
        tempa_3_reg_744;
    trunc_ln191_fu_339_p1 <= i_0_reg_305(2 - 1 downto 0);
    trunc_ln198_fu_422_p1 <= i_1_reg_316(2 - 1 downto 0);
    xor_ln246_fu_527_p2 <= (tempa_0_2_fu_521_p3 xor RoundKey_q1);
    xor_ln247_fu_533_p2 <= (tempa_1_2_fu_515_p3 xor RoundKey_q0);
    xor_ln248_fu_585_p2 <= (tempa_2_2_fu_565_p3 xor RoundKey_q1);
    xor_ln249_fu_591_p2 <= (tempa_3_2_fu_559_p3 xor RoundKey_q0);
    zext_ln191_fu_351_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_343_p3),64));
    zext_ln192_fu_361_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln192_fu_356_p2),64));
    zext_ln193_fu_371_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln193_fu_366_p2),64));
    zext_ln194_fu_381_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln194_fu_376_p2),64));
    zext_ln201_fu_406_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln201_fu_400_p2),64));
    zext_ln202_fu_417_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln202_fu_411_p2),64));
    zext_ln203_fu_453_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln203_fu_448_p2),64));
    zext_ln204_fu_463_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln204_fu_458_p2),64));
    zext_ln225_fu_468_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tempa_1_reg_723),64));
    zext_ln226_fu_472_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(RoundKey_q1),64));
    zext_ln227_fu_501_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tempa_3_reg_744),64));
    zext_ln228_fu_505_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tempa_0_3_reg_717),64));
    zext_ln231_fu_477_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lshr_ln_reg_707),64));
    zext_ln246_1_fu_571_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_675),64));
    zext_ln246_fu_486_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln246_fu_481_p2),64));
    zext_ln247_1_fu_580_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln247_fu_575_p2),64));
    zext_ln247_fu_496_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln247_fu_491_p2),64));
    zext_ln248_1_fu_602_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln248_fu_597_p2),64));
    zext_ln248_fu_544_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln248_fu_539_p2),64));
    zext_ln249_1_fu_612_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln249_fu_607_p2),64));
    zext_ln249_fu_554_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln249_fu_549_p2),64));
end behav;
