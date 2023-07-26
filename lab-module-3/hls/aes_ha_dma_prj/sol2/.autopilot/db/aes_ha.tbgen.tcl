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
	{ mst int 8 regular {axi_master 2}  }
	{ key int 8 regular {axi_slave 0}  }
	{ iv int 8 regular {axi_slave 2}  }
	{ in_r int 32 regular {axi_slave 0}  }
	{ out_r int 32 regular {axi_slave 0}  }
	{ length_r int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mst", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "in_r","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 8831,"step" : 1}]},{"cName": "out","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "out_r","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 8831,"step" : 1}]}]}]} , 
 	{ "Name" : "key", "interface" : "axi_slave", "bundle":"slv","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":31}} , 
 	{ "Name" : "iv", "interface" : "axi_slave", "bundle":"slv","type":"ap_memory","bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "iv","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":32, "out":32}, "offset_end" : {"in":47, "out":47}} , 
 	{ "Name" : "in_r", "interface" : "axi_slave", "bundle":"slv","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"slv","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "length_r", "interface" : "axi_slave", "bundle":"slv","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_mst_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mst_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mst_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_mst_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mst_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_mst_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mst_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mst_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mst_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mst_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mst_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mst_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mst_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mst_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mst_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mst_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_mst_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_mst_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_mst_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mst_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mst_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mst_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mst_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_mst_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mst_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_mst_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mst_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mst_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mst_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mst_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mst_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mst_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mst_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mst_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mst_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mst_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_mst_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_mst_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mst_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_mst_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mst_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mst_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mst_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mst_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mst_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_slv_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_slv_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_slv_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_slv_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_slv_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_slv_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_slv_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_slv_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_slv_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_slv_ARADDR sc_in sc_lv 7 signal -1 } 
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
	{ "name": "s_axi_slv_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "slv", "role": "AWADDR" },"address":[{"name":"aes_ha","role":"start","value":"0","valid_bit":"0"},{"name":"aes_ha","role":"continue","value":"0","valid_bit":"4"},{"name":"aes_ha","role":"auto_start","value":"0","valid_bit":"7"},{"name":"key","role":"data","value":"16"},{"name":"iv","role":"data","value":"32"},{"name":"in_r","role":"data","value":"48"},{"name":"out_r","role":"data","value":"56"},{"name":"length_r","role":"data","value":"64"}] },
	{ "name": "s_axi_slv_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "AWVALID" } },
	{ "name": "s_axi_slv_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "AWREADY" } },
	{ "name": "s_axi_slv_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "WVALID" } },
	{ "name": "s_axi_slv_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "slv", "role": "WREADY" } },
	{ "name": "s_axi_slv_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "slv", "role": "WDATA" } },
	{ "name": "s_axi_slv_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "slv", "role": "WSTRB" } },
	{ "name": "s_axi_slv_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "slv", "role": "ARADDR" },"address":[{"name":"aes_ha","role":"start","value":"0","valid_bit":"0"},{"name":"aes_ha","role":"done","value":"0","valid_bit":"1"},{"name":"aes_ha","role":"idle","value":"0","valid_bit":"2"},{"name":"aes_ha","role":"ready","value":"0","valid_bit":"3"},{"name":"aes_ha","role":"auto_start","value":"0","valid_bit":"7"},{"name":"iv","role":"data","value":"32"}] },
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
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_mst_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mst_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mst_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mst", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mst_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "AWID" }} , 
 	{ "name": "m_axi_mst_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mst", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mst_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mst", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mst_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mst", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mst_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mst", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mst_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mst", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mst_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mst", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mst_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mst", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mst_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mst", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mst_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mst_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "WVALID" }} , 
 	{ "name": "m_axi_mst_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "WREADY" }} , 
 	{ "name": "m_axi_mst_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mst", "role": "WDATA" }} , 
 	{ "name": "m_axi_mst_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mst", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mst_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "WLAST" }} , 
 	{ "name": "m_axi_mst_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "WID" }} , 
 	{ "name": "m_axi_mst_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "WUSER" }} , 
 	{ "name": "m_axi_mst_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mst_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mst_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mst", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mst_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "ARID" }} , 
 	{ "name": "m_axi_mst_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mst", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mst_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mst", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mst_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mst", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mst_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mst", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mst_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mst", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mst_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mst", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mst_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mst", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mst_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mst", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mst_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mst_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "RVALID" }} , 
 	{ "name": "m_axi_mst_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "RREADY" }} , 
 	{ "name": "m_axi_mst_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mst", "role": "RDATA" }} , 
 	{ "name": "m_axi_mst_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "RLAST" }} , 
 	{ "name": "m_axi_mst_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "RID" }} , 
 	{ "name": "m_axi_mst_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "RUSER" }} , 
 	{ "name": "m_axi_mst_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mst", "role": "RRESP" }} , 
 	{ "name": "m_axi_mst_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "BVALID" }} , 
 	{ "name": "m_axi_mst_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "BREADY" }} , 
 	{ "name": "m_axi_mst_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mst", "role": "BRESP" }} , 
 	{ "name": "m_axi_mst_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "BID" }} , 
 	{ "name": "m_axi_mst_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mst", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7"],
		"CDFG" : "aes_ha",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mst", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "mst_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mst_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "mst_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "mst_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "mst_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "key", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeyExpansion_fu_922", "Port" : "Key"}]},
			{"Name" : "iv", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "length_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeyExpansion_fu_922", "Port" : "sbox"},
					{"ID" : "7", "SubInstance" : "grp_AES_CTR_xcrypt_buffe_fu_932", "Port" : "sbox"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aes_ha_slv_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aes_ha_mst_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_RoundKey_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_Iv_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeyExpansion_fu_922", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeyExpansion_fu_922.sbox_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_932", "Parent" : "0", "Child" : ["8"],
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
					{"ID" : "8", "SubInstance" : "grp_Cipher_fu_480", "Port" : "RoundKey"}]},
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
					{"ID" : "8", "SubInstance" : "grp_Cipher_fu_480", "Port" : "sbox"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_932.grp_Cipher_fu_480", "Parent" : "7", "Child" : ["9", "10", "11", "13"],
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
					{"ID" : "10", "SubInstance" : "grp_AddRoundKey_fu_184", "Port" : "RoundKey"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_SubBytes_fu_234", "Port" : "sbox"}]}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_932.grp_Cipher_fu_480.grp_MixColumns_fu_164", "Parent" : "8",
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_932.grp_Cipher_fu_480.grp_AddRoundKey_fu_184", "Parent" : "8",
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_932.grp_Cipher_fu_480.grp_SubBytes_fu_234", "Parent" : "8", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_932.grp_Cipher_fu_480.grp_SubBytes_fu_234.sbox_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AES_CTR_xcrypt_buffe_fu_932.grp_Cipher_fu_480.grp_ShiftRows_fu_256", "Parent" : "8",
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
		mst {Type IO LastRead 348 FirstWrite 332}
		key {Type I LastRead 15 FirstWrite -1}
		iv {Type IO LastRead 91 FirstWrite 94}
		in_r {Type I LastRead 91 FirstWrite -1}
		out_r {Type I LastRead 91 FirstWrite -1}
		length_r {Type I LastRead 91 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mst { m_axi {  { m_axi_mst_AWVALID VALID 1 1 }  { m_axi_mst_AWREADY READY 0 1 }  { m_axi_mst_AWADDR ADDR 1 32 }  { m_axi_mst_AWID ID 1 1 }  { m_axi_mst_AWLEN LEN 1 8 }  { m_axi_mst_AWSIZE SIZE 1 3 }  { m_axi_mst_AWBURST BURST 1 2 }  { m_axi_mst_AWLOCK LOCK 1 2 }  { m_axi_mst_AWCACHE CACHE 1 4 }  { m_axi_mst_AWPROT PROT 1 3 }  { m_axi_mst_AWQOS QOS 1 4 }  { m_axi_mst_AWREGION REGION 1 4 }  { m_axi_mst_AWUSER USER 1 1 }  { m_axi_mst_WVALID VALID 1 1 }  { m_axi_mst_WREADY READY 0 1 }  { m_axi_mst_WDATA DATA 1 32 }  { m_axi_mst_WSTRB STRB 1 4 }  { m_axi_mst_WLAST LAST 1 1 }  { m_axi_mst_WID ID 1 1 }  { m_axi_mst_WUSER USER 1 1 }  { m_axi_mst_ARVALID VALID 1 1 }  { m_axi_mst_ARREADY READY 0 1 }  { m_axi_mst_ARADDR ADDR 1 32 }  { m_axi_mst_ARID ID 1 1 }  { m_axi_mst_ARLEN LEN 1 8 }  { m_axi_mst_ARSIZE SIZE 1 3 }  { m_axi_mst_ARBURST BURST 1 2 }  { m_axi_mst_ARLOCK LOCK 1 2 }  { m_axi_mst_ARCACHE CACHE 1 4 }  { m_axi_mst_ARPROT PROT 1 3 }  { m_axi_mst_ARQOS QOS 1 4 }  { m_axi_mst_ARREGION REGION 1 4 }  { m_axi_mst_ARUSER USER 1 1 }  { m_axi_mst_RVALID VALID 0 1 }  { m_axi_mst_RREADY READY 1 1 }  { m_axi_mst_RDATA DATA 0 32 }  { m_axi_mst_RLAST LAST 0 1 }  { m_axi_mst_RID ID 0 1 }  { m_axi_mst_RUSER USER 0 1 }  { m_axi_mst_RRESP RESP 0 2 }  { m_axi_mst_BVALID VALID 0 1 }  { m_axi_mst_BREADY READY 1 1 }  { m_axi_mst_BRESP RESP 0 2 }  { m_axi_mst_BID ID 0 1 }  { m_axi_mst_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ mst { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ mst 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ mst 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
