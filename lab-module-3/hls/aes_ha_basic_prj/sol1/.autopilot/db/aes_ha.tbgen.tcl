set moduleName aes_ha
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "11"],
		"CDFG" : "aes_ha",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "446", "EstimateLatencyMax" : "22846",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AES_CTR_xcrypt_buffe_fu_198"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeyExpansion_fu_207"}],
		"Port" : [
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_KeyExpansion_fu_207", "Port" : "Key"}]},
			{"Name" : "iv", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "inout_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_AES_CTR_xcrypt_buffe_fu_198", "Port" : "sbox"},
					{"ID" : "11", "SubInstance" : "grp_KeyExpansion_fu_207", "Port" : "sbox"}]},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_KeyExpansion_fu_207", "Port" : "Rcon"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aes_ha_slv_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_RoundKey_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_Iv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.text_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_198", "Parent" : "0", "Child" : ["6", "7", "8"],
		"CDFG" : "AES_CTR_xcrypt_buffe",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "22449",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Cipher_fu_259"}],
		"Port" : [
			{"Name" : "ctx_RoundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_Cipher_fu_259", "Port" : "RoundKey"}]},
			{"Name" : "ctx_Iv", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_Cipher_fu_259", "Port" : "sbox"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_198.buffer_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_198.x_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_198.grp_Cipher_fu_259", "Parent" : "5", "Child" : ["9", "10"],
		"CDFG" : "Cipher",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1250", "EstimateLatencyMax" : "1250",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddRoundKey_fu_274"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddRoundKey_fu_274"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AddRoundKey_fu_274"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_AddRoundKey_fu_274", "Port" : "state"}]},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_AddRoundKey_fu_274", "Port" : "RoundKey"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_198.grp_Cipher_fu_259.sbox_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_198.grp_Cipher_fu_259.grp_AddRoundKey_fu_274", "Parent" : "8",
		"CDFG" : "AddRoundKey",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "round", "Type" : "None", "Direction" : "I"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeyExpansion_fu_207", "Parent" : "0", "Child" : ["12", "13"],
		"CDFG" : "KeyExpansion",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "262", "EstimateLatencyMax" : "262",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "RoundKey", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Key", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Rcon", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeyExpansion_fu_207.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeyExpansion_fu_207.Rcon_U", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
	aes_ha {
		key {Type I LastRead 4 FirstWrite -1}
		iv {Type IO LastRead 2 FirstWrite 7}
		inout_r {Type IO LastRead 3 FirstWrite 6}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}
	AES_CTR_xcrypt_buffe {
		ctx_RoundKey {Type I LastRead 2 FirstWrite -1}
		ctx_Iv {Type IO LastRead 6 FirstWrite 7}
		buf_r {Type IO LastRead 7 FirstWrite 8}
		sbox {Type I LastRead -1 FirstWrite -1}}
	Cipher {
		state {Type IO LastRead 17 FirstWrite 3}
		RoundKey {Type I LastRead 2 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	AddRoundKey {
		round {Type I LastRead 0 FirstWrite -1}
		state {Type IO LastRead 2 FirstWrite 3}
		RoundKey {Type I LastRead 2 FirstWrite -1}}
	KeyExpansion {
		RoundKey {Type IO LastRead 6 FirstWrite 2}
		Key {Type I LastRead 4 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		Rcon {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "446", "Max" : "22846"}
	, {"Name" : "Interval", "Min" : "447", "Max" : "22847"}
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
