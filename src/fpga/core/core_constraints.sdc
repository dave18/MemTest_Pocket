#
# user core constraints
#
# put your clock groups in here as well as any net assignments
#

set_clock_groups -asynchronous \
 -group { bridge_spiclk } \
 -group { clk_74a } \
 -group { clk_74b } \
 -group { ic|pll|mf_pllbase_inst|altera_pll_i|cyclonev_pll|counter[0].output_counter|divclk } 
 

 set_clock_groups -exclusive -group [get_clocks { *|vpll|vpll_inst|altera_pll_i|*[*].*|divclk}]
 
 set_false_path -from {*|reset_n}