# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_slv {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
key { 
	dir I
	width 8
	depth 16
	mode ap_memory
	offset 16
	offset_end 31
}
iv { 
	dir IO
	width 8
	depth 16
	mode ap_memory
	offset 32
	offset_end 47
}
inout_r { 
	dir IO
	width 8
	depth 16
	mode ap_memory
	offset 48
	offset_end 63
}
}
dict set axilite_register_dict slv $port_slv


