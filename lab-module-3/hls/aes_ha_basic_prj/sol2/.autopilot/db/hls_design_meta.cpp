#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_slv_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_slv_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_slv_AWADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_slv_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_slv_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_slv_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_slv_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_slv_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_slv_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_slv_ARADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_slv_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_slv_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_slv_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_slv_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_slv_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_slv_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_slv_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "aes_ha";
