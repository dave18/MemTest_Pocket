set_global_assignment -entity "vpll" -library "lib_vpll" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "vpll" -library "lib_vpll" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "vpll" -library "lib_vpll" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_vpll" -name SPD_FILE [file join $::quartus(sip_path) "vpll.spd"]

set_global_assignment -library "lib_vpll" -name MISC_FILE [file join $::quartus(sip_path) "vpll_sim/vpll.vo"]
