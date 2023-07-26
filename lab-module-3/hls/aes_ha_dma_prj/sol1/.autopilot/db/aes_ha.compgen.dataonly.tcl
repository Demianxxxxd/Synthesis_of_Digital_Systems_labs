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
in_r { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
out_r { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
length_r { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
}
dict set axilite_register_dict slv $port_slv


