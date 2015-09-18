///////////////////////////////////////////////////////////////////////////////
// $Id: cnet.v 1887 2007-06-19 21:33:32Z grg $
//
// Module: cnet.v
// Project: CPCI (PCI Control FPGA)
// Description: Simulates the CNET as seen from the CPCI
//
// Change history:
//
///////////////////////////////////////////////////////////////////////////////


module cnet(
            input cpci_rd_wr_L,
            input cpci_req,
            input [`CPCI_CNET_ADDR_WIDTH-1:0] cpci_addr,
            inout [`CPCI_CNET_DATA_WIDTH-1:0] cpci_data,
            output cpci_wr_rdy,
            output cpci_rd_rdy,

            input          reset,
            input          clk,

            // Programming interface to the CNET
            input          rp_prog_b,
            output         rp_init_b,
            input          rp_cs_b,
            input          rp_rdwr_b,
            input [7:0]    rp_data,
            output         rp_done,

            input          want_crc_error,

            input          rp_cclk
         );


// ==================================================================
// Local
// ==================================================================

wire [`CPCI_CNET_DATA_WIDTH-1:0] cpci_wr_data;
wire [`CPCI_CNET_DATA_WIDTH-1:0] cpci_rd_data;

// ==================================================================
// Instantiate module
// ==================================================================

cnet_reg_grp cnet_reg_grp (
         .cpci_rd_wr_L     (cpci_rd_wr_L),
         .cpci_req         (cpci_req),
         .cpci_addr        (cpci_addr),
         .cpci_wr_data     (cpci_data),
         .cpci_rd_data     (cpci_rd_data),
         .cpci_data_tri_en (cpci_data_tri_en),
         .cpci_wr_rdy      (cpci_wr_rdy),
         .cpci_rd_rdy      (cpci_rd_rdy),
         .cnet_reset       (reset),
         .clk              (clk)
      );

assign cpci_data = cpci_data_tri_en ? cpci_rd_data : 'bz;

assign rp_init_b = 1'b1;
assign rp_done = 1'b1;

endmodule // cnet

/* vim:set shiftwidth=3 softtabstop=3 expandtab: */
