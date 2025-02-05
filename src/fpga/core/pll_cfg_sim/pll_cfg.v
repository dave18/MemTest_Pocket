// pll_cfg.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module pll_cfg (
		input  wire        mgmt_clk,          //          mgmt_clk.clk
		input  wire        mgmt_reset,        //        mgmt_reset.reset
		output wire        mgmt_waitrequest,  // mgmt_avalon_slave.waitrequest
		input  wire        mgmt_read,         //                  .read
		input  wire        mgmt_write,        //                  .write
		output wire [31:0] mgmt_readdata,     //                  .readdata
		input  wire [5:0]  mgmt_address,      //                  .address
		input  wire [31:0] mgmt_writedata,    //                  .writedata
		output wire [63:0] reconfig_to_pll,   //   reconfig_to_pll.reconfig_to_pll
		input  wire [63:0] reconfig_from_pll  // reconfig_from_pll.reconfig_from_pll
	);

	altera_pll_reconfig_top #(
		.device_family       ("Cyclone V"),
		.ENABLE_MIF          (0),
		.MIF_FILE_NAME       (""),
		.ENABLE_BYTEENABLE   (0),
		.BYTEENABLE_WIDTH    (4),
		.RECONFIG_ADDR_WIDTH (6),
		.RECONFIG_DATA_WIDTH (32),
		.reconf_width        (64),
		.WAIT_FOR_LOCK       (1)
	) pll_cfg_inst (
		.mgmt_clk          (mgmt_clk),          //          mgmt_clk.clk
		.mgmt_reset        (mgmt_reset),        //        mgmt_reset.reset
		.mgmt_waitrequest  (mgmt_waitrequest),  // mgmt_avalon_slave.waitrequest
		.mgmt_read         (mgmt_read),         //                  .read
		.mgmt_write        (mgmt_write),        //                  .write
		.mgmt_readdata     (mgmt_readdata),     //                  .readdata
		.mgmt_address      (mgmt_address),      //                  .address
		.mgmt_writedata    (mgmt_writedata),    //                  .writedata
		.reconfig_to_pll   (reconfig_to_pll),   //   reconfig_to_pll.reconfig_to_pll
		.reconfig_from_pll (reconfig_from_pll), // reconfig_from_pll.reconfig_from_pll
		.mgmt_byteenable   (4'b0000)            //       (terminated)
	);

endmodule
