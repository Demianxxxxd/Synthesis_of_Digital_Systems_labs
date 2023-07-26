// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _MixColumns_HH_
#define _MixColumns_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct MixColumns : public sc_module {
    // Port declarations 33
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > state_0_0_read;
    sc_in< sc_lv<8> > state_0_1_read;
    sc_in< sc_lv<8> > state_0_2_read;
    sc_in< sc_lv<8> > state_0_3_read;
    sc_in< sc_lv<8> > state_1_0_read;
    sc_in< sc_lv<8> > state_1_1_read;
    sc_in< sc_lv<8> > state_1_2_read;
    sc_in< sc_lv<8> > state_1_3_read;
    sc_in< sc_lv<8> > state_2_0_read;
    sc_in< sc_lv<8> > state_2_1_read;
    sc_in< sc_lv<8> > state_2_2_read;
    sc_in< sc_lv<8> > state_2_3_read;
    sc_in< sc_lv<8> > state_3_0_read;
    sc_in< sc_lv<8> > state_3_1_read;
    sc_in< sc_lv<8> > state_3_2_read;
    sc_in< sc_lv<8> > state_3_3_read;
    sc_out< sc_lv<8> > ap_return_0;
    sc_out< sc_lv<8> > ap_return_1;
    sc_out< sc_lv<8> > ap_return_2;
    sc_out< sc_lv<8> > ap_return_3;
    sc_out< sc_lv<8> > ap_return_4;
    sc_out< sc_lv<8> > ap_return_5;
    sc_out< sc_lv<8> > ap_return_6;
    sc_out< sc_lv<8> > ap_return_7;
    sc_out< sc_lv<8> > ap_return_8;
    sc_out< sc_lv<8> > ap_return_9;
    sc_out< sc_lv<8> > ap_return_10;
    sc_out< sc_lv<8> > ap_return_11;
    sc_out< sc_lv<8> > ap_return_12;
    sc_out< sc_lv<8> > ap_return_13;
    sc_out< sc_lv<8> > ap_return_14;
    sc_out< sc_lv<8> > ap_return_15;


    // Module declarations
    MixColumns(sc_module_name name);
    SC_HAS_PROCESS(MixColumns);

    ~MixColumns();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<8> > xor_ln328_fu_142_p2;
    sc_signal< sc_lv<8> > xor_ln328_1_fu_148_p2;
    sc_signal< sc_lv<1> > tmp_fu_166_p3;
    sc_signal< sc_lv<8> > select_ln320_fu_174_p3;
    sc_signal< sc_lv<8> > shl_ln320_fu_160_p2;
    sc_signal< sc_lv<8> > xor_ln328_2_fu_154_p2;
    sc_signal< sc_lv<8> > xor_ln331_1_fu_188_p2;
    sc_signal< sc_lv<8> > xor_ln331_fu_182_p2;
    sc_signal< sc_lv<8> > xor_ln332_fu_200_p2;
    sc_signal< sc_lv<1> > tmp_4_fu_212_p3;
    sc_signal< sc_lv<8> > select_ln320_1_fu_220_p3;
    sc_signal< sc_lv<8> > shl_ln320_1_fu_206_p2;
    sc_signal< sc_lv<8> > xor_ln334_1_fu_234_p2;
    sc_signal< sc_lv<8> > xor_ln334_fu_228_p2;
    sc_signal< sc_lv<8> > xor_ln335_fu_246_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_258_p3;
    sc_signal< sc_lv<8> > select_ln320_2_fu_266_p3;
    sc_signal< sc_lv<8> > shl_ln320_2_fu_252_p2;
    sc_signal< sc_lv<8> > xor_ln337_1_fu_280_p2;
    sc_signal< sc_lv<8> > xor_ln337_fu_274_p2;
    sc_signal< sc_lv<8> > xor_ln338_fu_292_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_304_p3;
    sc_signal< sc_lv<8> > shl_ln320_3_fu_298_p2;
    sc_signal< sc_lv<8> > xor_ln340_fu_320_p2;
    sc_signal< sc_lv<8> > select_ln320_3_fu_312_p3;
    sc_signal< sc_lv<8> > xor_ln328_9_fu_332_p2;
    sc_signal< sc_lv<8> > xor_ln328_3_fu_338_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_356_p3;
    sc_signal< sc_lv<8> > select_ln320_4_fu_364_p3;
    sc_signal< sc_lv<8> > shl_ln320_4_fu_350_p2;
    sc_signal< sc_lv<8> > xor_ln328_4_fu_344_p2;
    sc_signal< sc_lv<8> > xor_ln331_4_fu_378_p2;
    sc_signal< sc_lv<8> > xor_ln331_3_fu_372_p2;
    sc_signal< sc_lv<8> > xor_ln332_1_fu_390_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_402_p3;
    sc_signal< sc_lv<8> > select_ln320_5_fu_410_p3;
    sc_signal< sc_lv<8> > shl_ln320_5_fu_396_p2;
    sc_signal< sc_lv<8> > xor_ln334_4_fu_424_p2;
    sc_signal< sc_lv<8> > xor_ln334_3_fu_418_p2;
    sc_signal< sc_lv<8> > xor_ln335_1_fu_436_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_448_p3;
    sc_signal< sc_lv<8> > select_ln320_6_fu_456_p3;
    sc_signal< sc_lv<8> > shl_ln320_6_fu_442_p2;
    sc_signal< sc_lv<8> > xor_ln337_4_fu_470_p2;
    sc_signal< sc_lv<8> > xor_ln337_3_fu_464_p2;
    sc_signal< sc_lv<8> > xor_ln338_1_fu_482_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_494_p3;
    sc_signal< sc_lv<8> > shl_ln320_7_fu_488_p2;
    sc_signal< sc_lv<8> > xor_ln340_2_fu_510_p2;
    sc_signal< sc_lv<8> > select_ln320_7_fu_502_p3;
    sc_signal< sc_lv<8> > xor_ln328_10_fu_522_p2;
    sc_signal< sc_lv<8> > xor_ln328_5_fu_528_p2;
    sc_signal< sc_lv<1> > tmp_11_fu_546_p3;
    sc_signal< sc_lv<8> > select_ln320_8_fu_554_p3;
    sc_signal< sc_lv<8> > shl_ln320_8_fu_540_p2;
    sc_signal< sc_lv<8> > xor_ln328_6_fu_534_p2;
    sc_signal< sc_lv<8> > xor_ln331_7_fu_568_p2;
    sc_signal< sc_lv<8> > xor_ln331_6_fu_562_p2;
    sc_signal< sc_lv<8> > xor_ln332_2_fu_580_p2;
    sc_signal< sc_lv<1> > tmp_12_fu_592_p3;
    sc_signal< sc_lv<8> > select_ln320_9_fu_600_p3;
    sc_signal< sc_lv<8> > shl_ln320_9_fu_586_p2;
    sc_signal< sc_lv<8> > xor_ln334_7_fu_614_p2;
    sc_signal< sc_lv<8> > xor_ln334_6_fu_608_p2;
    sc_signal< sc_lv<8> > xor_ln335_2_fu_626_p2;
    sc_signal< sc_lv<1> > tmp_13_fu_638_p3;
    sc_signal< sc_lv<8> > select_ln320_10_fu_646_p3;
    sc_signal< sc_lv<8> > shl_ln320_10_fu_632_p2;
    sc_signal< sc_lv<8> > xor_ln337_7_fu_660_p2;
    sc_signal< sc_lv<8> > xor_ln337_6_fu_654_p2;
    sc_signal< sc_lv<8> > xor_ln338_2_fu_672_p2;
    sc_signal< sc_lv<1> > tmp_14_fu_684_p3;
    sc_signal< sc_lv<8> > shl_ln320_11_fu_678_p2;
    sc_signal< sc_lv<8> > xor_ln340_4_fu_700_p2;
    sc_signal< sc_lv<8> > select_ln320_11_fu_692_p3;
    sc_signal< sc_lv<8> > xor_ln328_11_fu_712_p2;
    sc_signal< sc_lv<8> > xor_ln328_7_fu_718_p2;
    sc_signal< sc_lv<1> > tmp_15_fu_736_p3;
    sc_signal< sc_lv<8> > select_ln320_12_fu_744_p3;
    sc_signal< sc_lv<8> > shl_ln320_12_fu_730_p2;
    sc_signal< sc_lv<8> > xor_ln328_8_fu_724_p2;
    sc_signal< sc_lv<8> > xor_ln331_10_fu_758_p2;
    sc_signal< sc_lv<8> > xor_ln331_9_fu_752_p2;
    sc_signal< sc_lv<8> > xor_ln332_3_fu_770_p2;
    sc_signal< sc_lv<1> > tmp_16_fu_782_p3;
    sc_signal< sc_lv<8> > select_ln320_13_fu_790_p3;
    sc_signal< sc_lv<8> > shl_ln320_13_fu_776_p2;
    sc_signal< sc_lv<8> > xor_ln334_10_fu_804_p2;
    sc_signal< sc_lv<8> > xor_ln334_9_fu_798_p2;
    sc_signal< sc_lv<8> > xor_ln335_3_fu_816_p2;
    sc_signal< sc_lv<1> > tmp_17_fu_828_p3;
    sc_signal< sc_lv<8> > select_ln320_14_fu_836_p3;
    sc_signal< sc_lv<8> > shl_ln320_14_fu_822_p2;
    sc_signal< sc_lv<8> > xor_ln337_10_fu_850_p2;
    sc_signal< sc_lv<8> > xor_ln337_9_fu_844_p2;
    sc_signal< sc_lv<8> > xor_ln338_3_fu_862_p2;
    sc_signal< sc_lv<1> > tmp_18_fu_874_p3;
    sc_signal< sc_lv<8> > shl_ln320_15_fu_868_p2;
    sc_signal< sc_lv<8> > xor_ln340_6_fu_890_p2;
    sc_signal< sc_lv<8> > select_ln320_15_fu_882_p3;
    sc_signal< sc_lv<8> > xor_ln331_2_fu_194_p2;
    sc_signal< sc_lv<8> > xor_ln334_2_fu_240_p2;
    sc_signal< sc_lv<8> > xor_ln337_2_fu_286_p2;
    sc_signal< sc_lv<8> > xor_ln340_1_fu_326_p2;
    sc_signal< sc_lv<8> > xor_ln331_5_fu_384_p2;
    sc_signal< sc_lv<8> > xor_ln334_5_fu_430_p2;
    sc_signal< sc_lv<8> > xor_ln337_5_fu_476_p2;
    sc_signal< sc_lv<8> > xor_ln340_3_fu_516_p2;
    sc_signal< sc_lv<8> > xor_ln331_8_fu_574_p2;
    sc_signal< sc_lv<8> > xor_ln334_8_fu_620_p2;
    sc_signal< sc_lv<8> > xor_ln337_8_fu_666_p2;
    sc_signal< sc_lv<8> > xor_ln340_5_fu_706_p2;
    sc_signal< sc_lv<8> > xor_ln331_11_fu_764_p2;
    sc_signal< sc_lv<8> > xor_ln334_11_fu_810_p2;
    sc_signal< sc_lv<8> > xor_ln337_11_fu_856_p2;
    sc_signal< sc_lv<8> > xor_ln340_7_fu_896_p2;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_1B;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_10();
    void thread_ap_return_11();
    void thread_ap_return_12();
    void thread_ap_return_13();
    void thread_ap_return_14();
    void thread_ap_return_15();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_ap_return_6();
    void thread_ap_return_7();
    void thread_ap_return_8();
    void thread_ap_return_9();
    void thread_select_ln320_10_fu_646_p3();
    void thread_select_ln320_11_fu_692_p3();
    void thread_select_ln320_12_fu_744_p3();
    void thread_select_ln320_13_fu_790_p3();
    void thread_select_ln320_14_fu_836_p3();
    void thread_select_ln320_15_fu_882_p3();
    void thread_select_ln320_1_fu_220_p3();
    void thread_select_ln320_2_fu_266_p3();
    void thread_select_ln320_3_fu_312_p3();
    void thread_select_ln320_4_fu_364_p3();
    void thread_select_ln320_5_fu_410_p3();
    void thread_select_ln320_6_fu_456_p3();
    void thread_select_ln320_7_fu_502_p3();
    void thread_select_ln320_8_fu_554_p3();
    void thread_select_ln320_9_fu_600_p3();
    void thread_select_ln320_fu_174_p3();
    void thread_shl_ln320_10_fu_632_p2();
    void thread_shl_ln320_11_fu_678_p2();
    void thread_shl_ln320_12_fu_730_p2();
    void thread_shl_ln320_13_fu_776_p2();
    void thread_shl_ln320_14_fu_822_p2();
    void thread_shl_ln320_15_fu_868_p2();
    void thread_shl_ln320_1_fu_206_p2();
    void thread_shl_ln320_2_fu_252_p2();
    void thread_shl_ln320_3_fu_298_p2();
    void thread_shl_ln320_4_fu_350_p2();
    void thread_shl_ln320_5_fu_396_p2();
    void thread_shl_ln320_6_fu_442_p2();
    void thread_shl_ln320_7_fu_488_p2();
    void thread_shl_ln320_8_fu_540_p2();
    void thread_shl_ln320_9_fu_586_p2();
    void thread_shl_ln320_fu_160_p2();
    void thread_tmp_10_fu_494_p3();
    void thread_tmp_11_fu_546_p3();
    void thread_tmp_12_fu_592_p3();
    void thread_tmp_13_fu_638_p3();
    void thread_tmp_14_fu_684_p3();
    void thread_tmp_15_fu_736_p3();
    void thread_tmp_16_fu_782_p3();
    void thread_tmp_17_fu_828_p3();
    void thread_tmp_18_fu_874_p3();
    void thread_tmp_4_fu_212_p3();
    void thread_tmp_5_fu_258_p3();
    void thread_tmp_6_fu_304_p3();
    void thread_tmp_7_fu_356_p3();
    void thread_tmp_8_fu_402_p3();
    void thread_tmp_9_fu_448_p3();
    void thread_tmp_fu_166_p3();
    void thread_xor_ln328_10_fu_522_p2();
    void thread_xor_ln328_11_fu_712_p2();
    void thread_xor_ln328_1_fu_148_p2();
    void thread_xor_ln328_2_fu_154_p2();
    void thread_xor_ln328_3_fu_338_p2();
    void thread_xor_ln328_4_fu_344_p2();
    void thread_xor_ln328_5_fu_528_p2();
    void thread_xor_ln328_6_fu_534_p2();
    void thread_xor_ln328_7_fu_718_p2();
    void thread_xor_ln328_8_fu_724_p2();
    void thread_xor_ln328_9_fu_332_p2();
    void thread_xor_ln328_fu_142_p2();
    void thread_xor_ln331_10_fu_758_p2();
    void thread_xor_ln331_11_fu_764_p2();
    void thread_xor_ln331_1_fu_188_p2();
    void thread_xor_ln331_2_fu_194_p2();
    void thread_xor_ln331_3_fu_372_p2();
    void thread_xor_ln331_4_fu_378_p2();
    void thread_xor_ln331_5_fu_384_p2();
    void thread_xor_ln331_6_fu_562_p2();
    void thread_xor_ln331_7_fu_568_p2();
    void thread_xor_ln331_8_fu_574_p2();
    void thread_xor_ln331_9_fu_752_p2();
    void thread_xor_ln331_fu_182_p2();
    void thread_xor_ln332_1_fu_390_p2();
    void thread_xor_ln332_2_fu_580_p2();
    void thread_xor_ln332_3_fu_770_p2();
    void thread_xor_ln332_fu_200_p2();
    void thread_xor_ln334_10_fu_804_p2();
    void thread_xor_ln334_11_fu_810_p2();
    void thread_xor_ln334_1_fu_234_p2();
    void thread_xor_ln334_2_fu_240_p2();
    void thread_xor_ln334_3_fu_418_p2();
    void thread_xor_ln334_4_fu_424_p2();
    void thread_xor_ln334_5_fu_430_p2();
    void thread_xor_ln334_6_fu_608_p2();
    void thread_xor_ln334_7_fu_614_p2();
    void thread_xor_ln334_8_fu_620_p2();
    void thread_xor_ln334_9_fu_798_p2();
    void thread_xor_ln334_fu_228_p2();
    void thread_xor_ln335_1_fu_436_p2();
    void thread_xor_ln335_2_fu_626_p2();
    void thread_xor_ln335_3_fu_816_p2();
    void thread_xor_ln335_fu_246_p2();
    void thread_xor_ln337_10_fu_850_p2();
    void thread_xor_ln337_11_fu_856_p2();
    void thread_xor_ln337_1_fu_280_p2();
    void thread_xor_ln337_2_fu_286_p2();
    void thread_xor_ln337_3_fu_464_p2();
    void thread_xor_ln337_4_fu_470_p2();
    void thread_xor_ln337_5_fu_476_p2();
    void thread_xor_ln337_6_fu_654_p2();
    void thread_xor_ln337_7_fu_660_p2();
    void thread_xor_ln337_8_fu_666_p2();
    void thread_xor_ln337_9_fu_844_p2();
    void thread_xor_ln337_fu_274_p2();
    void thread_xor_ln338_1_fu_482_p2();
    void thread_xor_ln338_2_fu_672_p2();
    void thread_xor_ln338_3_fu_862_p2();
    void thread_xor_ln338_fu_292_p2();
    void thread_xor_ln340_1_fu_326_p2();
    void thread_xor_ln340_2_fu_510_p2();
    void thread_xor_ln340_3_fu_516_p2();
    void thread_xor_ln340_4_fu_700_p2();
    void thread_xor_ln340_5_fu_706_p2();
    void thread_xor_ln340_6_fu_890_p2();
    void thread_xor_ln340_7_fu_896_p2();
    void thread_xor_ln340_fu_320_p2();
};

}

using namespace ap_rtl;

#endif
