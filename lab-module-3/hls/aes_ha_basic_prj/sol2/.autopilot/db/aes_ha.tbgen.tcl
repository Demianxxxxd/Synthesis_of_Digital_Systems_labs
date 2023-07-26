set moduleName aes_ha
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {aes_ha}
set C_modelType { void 0 }
set C_modelArgList {
	{ key int 8 regular {axi_slave 0}  }
	{ iv int 8 regular {axi_slave 2}  }
	{ inout_r int 8 regular {axi_slave 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "key", "interface" : "axi_slave", "bundle":"slv","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":31}} , 
 	{ "Name" : "iv", "interface" : "axi_slave", "bundle":"slv","type":"ap_memory","bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "iv","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":32, "out":32}, "offset_end" : {"in":47, "out":47}} , 
 	{ "Name" : "inout_r", "interface" : "axi_slave", "bundle":"slv","type":"ap_memory","bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inout","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":48, "out":48}, "offset_end" : {"in":63, "out":63}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_slv_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_slv_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_slv_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_slv_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_slv_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_slv_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_slv_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_slv_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_slv_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_slv_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_slv_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_slv_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_slv_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_slv_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_slv_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_slv_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_slv_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_slv_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "slv", "role": "AWADDR" },"address":[{"name":"aes_ha","role":"start","value":"0","valid_bit":"0"},{"name":"aes_ha","role":"continue","value":"0","valid_bit":"4"},{"name":"aes_ha","role":"auto_start","value":"0","valid_bit":"7"},{"name":"key","role":"data","value":"16"},{"name":"iv","role":"data","value":"32"},{"name":"inout_r","role":"data","value":"48"}] },
	{ "name": "s_axi_slv_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "AWVALID" } },
	{ "name": "s_axi_slv_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "AWREADY" } },
	{ "name": "s_axi_slv_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "WVALID" } },
	{ "name": "s_axi_slv_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "WREADY" } },
	{ "name": "s_axi_slv_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "slv", "role": "WDATA" } },
	{ "name": "s_axi_slv_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "slv", "role": "WSTRB" } },
	{ "name": "s_axi_slv_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "slv", "role": "ARADDR" },"address":[{"name":"aes_ha","role":"start","value":"0","valid_bit":"0"},{"name":"aes_ha","role":"done","value":"0","valid_bit":"1"},{"name":"aes_ha","role":"idle","value":"0","valid_bit":"2"},{"name":"aes_ha","role":"ready","value":"0","valid_bit":"3"},{"name":"aes_ha","role":"auto_start","value":"0","valid_bit":"7"},{"name":"iv","role":"data","value":"32"},{"name":"inout_r","role":"data","value":"48"}] },
	{ "name": "s_axi_slv_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "ARVALID" } },
	{ "name": "s_axi_slv_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "ARREADY" } },
	{ "name": "s_axi_slv_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "RVALID" } },
	{ "name": "s_axi_slv_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "RREADY" } },
	{ "name": "s_axi_slv_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "slv", "role": "RDATA" } },
	{ "name": "s_axi_slv_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "slv", "role": "RRESP" } },
	{ "name": "s_axi_slv_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "BVALID" } },
	{ "name": "s_axi_slv_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "BREADY" } },
	{ "name": "s_axi_slv_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "slv", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6"],
		"CDFG" : "aes_ha",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "226",
		"VariableLatency" : "0", "ExactLatency" : "225", "EstimateLatencyMin" : "225", "EstimateLatencyMax" : "225",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeyExpansion_fu_515", "Port" : "Key"}]},
			{"Name" : "iv", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "inout_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_KeyExpansion_fu_515", "Port" : "sbox"},
					{"ID" : "6", "SubInstance" : "grp_AES_CTR_xcrypt_buffe_fu_525", "Port" : "sbox"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aes_ha_slv_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_RoundKey_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_Iv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeyExpansion_fu_515", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "88",
		"VariableLatency" : "0", "ExactLatency" : "92", "EstimateLatencyMin" : "92", "EstimateLatencyMax" : "92",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeyExpansion_fu_515.sbox_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_525", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "AES_CTR_xcrypt_buffe",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "108",
		"VariableLatency" : "0", "ExactLatency" : "115", "EstimateLatencyMin" : "115", "EstimateLatencyMax" : "115",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ctx_RoundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Cipher_fu_480", "Port" : "RoundKey"}]},
			{"Name" : "ctx_Iv", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Cipher_fu_480", "Port" : "sbox"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_525.grp_Cipher_fu_480", "Parent" : "6", "Child" : ["8", "9", "10", "12"],
		"CDFG" : "Cipher",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "108",
		"VariableLatency" : "0", "ExactLatency" : "107", "EstimateLatencyMin" : "107", "EstimateLatencyMax" : "107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_AddRoundKey_fu_184", "Port" : "RoundKey"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_SubBytes_fu_234", "Port" : "sbox"}]}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_525.grp_Cipher_fu_480.grp_MixColumns_fu_164", "Parent" : "7",
		"CDFG" : "MixColumns",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_3_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_525.grp_Cipher_fu_480.grp_AddRoundKey_fu_184", "Parent" : "7",
		"CDFG" : "AddRoundKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "round", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_525.grp_Cipher_fu_480.grp_SubBytes_fu_234", "Parent" : "7", "Child" : ["11"],
		"CDFG" : "SubBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_0_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_525.grp_Cipher_fu_480.grp_SubBytes_fu_234.sbox_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_525.grp_Cipher_fu_480.grp_ShiftRows_fu_256", "Parent" : "7",
		"CDFG" : "ShiftRows",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_0_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_0_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_3_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	aes_ha {
		key {Type I LastRead 15 FirstWrite -1}
		iv {Type IO LastRead 15 FirstWrite 210}
		inout_r {Type IO LastRead 15 FirstWrite 208}
		sbox {Type I LastRead -1 FirstWrite -1}}
	KeyExpansion {
		RoundKey {Type O LastRead -1 FirstWrite 1}
		Key {Type I LastRead 15 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	AES_CTR_xcrypt_buffe {
		ctx_RoundKey {Type I LastRead 8 FirstWrite -1}
		ctx_Iv {Type IO LastRead 8 FirstWrite 8}
		buf_0_read {Type I LastRead 107 FirstWrite -1}
		buf_1_read {Type I LastRead 107 FirstWrite -1}
		buf_2_read {Type I LastRead 107 FirstWrite -1}
		buf_3_read {Type I LastRead 107 FirstWrite -1}
		buf_4_read {Type I LastRead 107 FirstWrite -1}
		buf_5_read {Type I LastRead 107 FirstWrite -1}
		buf_6_read {Type I LastRead 107 FirstWrite -1}
		buf_7_read {Type I LastRead 107 FirstWrite -1}
		buf_8_read {Type I LastRead 107 FirstWrite -1}
		buf_9_read {Type I LastRead 107 FirstWrite -1}
		buf_10_read {Type I LastRead 107 FirstWrite -1}
		buf_11_read {Type I LastRead 107 FirstWrite -1}
		buf_12_read {Type I LastRead 107 FirstWrite -1}
		buf_13_read {Type I LastRead 107 FirstWrite -1}
		buf_14_read {Type I LastRead 107 FirstWrite -1}
		buf_15_read {Type I LastRead 107 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	Cipher {
		state_0_0_read {Type I LastRead 0 FirstWrite -1}
		state_0_1_read {Type I LastRead 0 FirstWrite -1}
		state_0_2_read {Type I LastRead 0 FirstWrite -1}
		state_0_3_read {Type I LastRead 0 FirstWrite -1}
		state_1_0_read {Type I LastRead 0 FirstWrite -1}
		state_1_1_read {Type I LastRead 0 FirstWrite -1}
		state_1_2_read {Type I LastRead 0 FirstWrite -1}
		state_1_3_read {Type I LastRead 0 FirstWrite -1}
		state_2_0_read {Type I LastRead 0 FirstWrite -1}
		state_2_1_read {Type I LastRead 0 FirstWrite -1}
		state_2_2_read {Type I LastRead 0 FirstWrite -1}
		state_2_3_read {Type I LastRead 0 FirstWrite -1}
		state_3_0_read {Type I LastRead 0 FirstWrite -1}
		state_3_1_read {Type I LastRead 0 FirstWrite -1}
		state_3_2_read {Type I LastRead 0 FirstWrite -1}
		state_3_3_read {Type I LastRead 0 FirstWrite -1}
		RoundKey {Type I LastRead 8 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	MixColumns {
		state_0_0_read {Type I LastRead 0 FirstWrite -1}
		state_0_1_read {Type I LastRead 0 FirstWrite -1}
		state_0_2_read {Type I LastRead 0 FirstWrite -1}
		state_0_3_read {Type I LastRead 0 FirstWrite -1}
		state_1_0_read {Type I LastRead 0 FirstWrite -1}
		state_1_1_read {Type I LastRead 0 FirstWrite -1}
		state_1_2_read {Type I LastRead 0 FirstWrite -1}
		state_1_3_read {Type I LastRead 0 FirstWrite -1}
		state_2_0_read {Type I LastRead 0 FirstWrite -1}
		state_2_1_read {Type I LastRead 0 FirstWrite -1}
		state_2_2_read {Type I LastRead 0 FirstWrite -1}
		state_2_3_read {Type I LastRead 0 FirstWrite -1}
		state_3_0_read {Type I LastRead 0 FirstWrite -1}
		state_3_1_read {Type I LastRead 0 FirstWrite -1}
		state_3_2_read {Type I LastRead 0 FirstWrite -1}
		state_3_3_read {Type I LastRead 0 FirstWrite -1}}
	AddRoundKey {
		round {Type I LastRead 0 FirstWrite -1}
		state_0_0_read {Type I LastRead 7 FirstWrite -1}
		state_0_1_read {Type I LastRead 7 FirstWrite -1}
		state_0_2_read {Type I LastRead 7 FirstWrite -1}
		state_0_3_read {Type I LastRead 7 FirstWrite -1}
		state_1_0_read {Type I LastRead 7 FirstWrite -1}
		state_1_1_read {Type I LastRead 7 FirstWrite -1}
		state_1_2_read {Type I LastRead 7 FirstWrite -1}
		state_1_3_read {Type I LastRead 7 FirstWrite -1}
		state_2_0_read {Type I LastRead 7 FirstWrite -1}
		state_2_1_read {Type I LastRead 7 FirstWrite -1}
		state_2_2_read {Type I LastRead 7 FirstWrite -1}
		state_2_3_read {Type I LastRead 7 FirstWrite -1}
		state_3_0_read {Type I LastRead 7 FirstWrite -1}
		state_3_1_read {Type I LastRead 7 FirstWrite -1}
		state_3_2_read {Type I LastRead 7 FirstWrite -1}
		state_3_3_read {Type I LastRead 7 FirstWrite -1}
		RoundKey {Type I LastRead 8 FirstWrite -1}}
	SubBytes {
		state_0_0_read {Type I LastRead 0 FirstWrite -1}
		state_0_1_read {Type I LastRead 0 FirstWrite -1}
		state_0_2_read {Type I LastRead 0 FirstWrite -1}
		state_0_3_read {Type I LastRead 0 FirstWrite -1}
		state_1_0_read {Type I LastRead 0 FirstWrite -1}
		state_1_1_read {Type I LastRead 0 FirstWrite -1}
		state_1_2_read {Type I LastRead 0 FirstWrite -1}
		state_1_3_read {Type I LastRead 0 FirstWrite -1}
		state_2_0_read {Type I LastRead 0 FirstWrite -1}
		state_2_1_read {Type I LastRead 0 FirstWrite -1}
		state_2_2_read {Type I LastRead 0 FirstWrite -1}
		state_2_3_read {Type I LastRead 0 FirstWrite -1}
		state_3_0_read {Type I LastRead 0 FirstWrite -1}
		state_3_1_read {Type I LastRead 0 FirstWrite -1}
		state_3_2_read {Type I LastRead 0 FirstWrite -1}
		state_3_3_read {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	ShiftRows {
		state_0_1_read {Type I LastRead 0 FirstWrite -1}
		state_0_2_read {Type I LastRead 0 FirstWrite -1}
		state_0_3_read {Type I LastRead 0 FirstWrite -1}
		state_1_1_read {Type I LastRead 0 FirstWrite -1}
		state_1_2_read {Type I LastRead 0 FirstWrite -1}
		state_1_3_read {Type I LastRead 0 FirstWrite -1}
		state_2_1_read {Type I LastRead 0 FirstWrite -1}
		state_2_2_read {Type I LastRead 0 FirstWrite -1}
		state_2_3_read {Type I LastRead 0 FirstWrite -1}
		state_3_1_read {Type I LastRead 0 FirstWrite -1}
		state_3_2_read {Type I LastRead 0 FirstWrite -1}
		state_3_3_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "225", "Max" : "225"}
	, {"Name" : "Interval", "Min" : "226", "Max" : "226"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
