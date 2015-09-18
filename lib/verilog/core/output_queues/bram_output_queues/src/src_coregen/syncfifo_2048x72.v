////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: syncfifo_2048x72.v
// /___/   /\     Timestamp: Wed Dec 11 16:04:02 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog /root/netfpga/lib/verilog/core/output_queues/bram_output_queues/synth/coregen/tmp/_cg/syncfifo_2048x72.ngc /root/netfpga/lib/verilog/core/output_queues/bram_output_queues/synth/coregen/tmp/_cg/syncfifo_2048x72.v 
// Device	: 2vp50ff1152-7
// Input file	: /root/netfpga/lib/verilog/core/output_queues/bram_output_queues/synth/coregen/tmp/_cg/syncfifo_2048x72.ngc
// Output file	: /root/netfpga/lib/verilog/core/output_queues/bram_output_queues/synth/coregen/tmp/_cg/syncfifo_2048x72.v
// # of Modules	: 1
// Design Name	: syncfifo_2048x72
// Xilinx        : /opt/Xilinx/10.1/ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module syncfifo_2048x72 (
  rd_en, wr_en, full, empty, clk, rst, almost_full, dout, din, data_count
);
  input rd_en;
  input wr_en;
  output full;
  output empty;
  input clk;
  input rst;
  output almost_full;
  output [71 : 0] dout;
  input [71 : 0] din;
  output [10 : 0] data_count;
  
  // synthesis translate_off
  
  wire NlwRenamedSig_OI_almost_full;
  wire \BU2/N6 ;
  wire \BU2/N5 ;
  wire \BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_1_402 ;
  wire \BU2/U0/grf.rf/mem/tmp_ram_rd_en ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count ;
  wire \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or000013_399 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or00002 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or000019_397 ;
  wire \BU2/N01 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>_rt_373 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>_rt_372 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>_rt_370 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>_rt_368 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>_rt_366 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>_rt_364 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>_rt_362 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>_rt_360 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>_rt_358 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>_rt_356 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<10>_rt_354 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count2 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count1 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count5 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count3 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count4 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count8 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count6 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count7 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count9 ;
  wire \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count10 ;
  wire \BU2/U0/grf.rf/ram_wr_en ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>_rt_318 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>_rt_317 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>_rt_315 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>_rt_313 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>_rt_311 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>_rt_309 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>_rt_307 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>_rt_305 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>_rt_303 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>_rt_301 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<10>_rt_299 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count2 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count1 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count5 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count3 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count4 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count8 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count6 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count7 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count9 ;
  wire \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count10 ;
  wire \BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwss.wsts/wr_rst_d1_274 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or0000 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_fb_i_272 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_comb ;
  wire \BU2/U0/grf.rf/gl0.wr/gwss.wsts/comp2 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwss.wsts/comp1 ;
  wire \BU2/U0/grf.rf/gl0.wr/gwss.wsts/comp0 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<5>1_1_245 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<4>1_1_243 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<3>1_1_241 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<2>1_1_239 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<1>1_1_237 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<0>1_1_235 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.rsts/comp1 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.rsts/comp0 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count11 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count10 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count9 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count8 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count7 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count6 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count5 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count4 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count3 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count2 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count1 ;
  wire \BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_177 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ;
  wire \BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_mux0000 ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_comb ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_reg[0] ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_comb ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_asreg_169 ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_asreg_168 ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2_167 ;
  wire \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_166 ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2_165 ;
  wire \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_164 ;
  wire \BU2/N0_inv ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED ;
  wire [71 : 0] din_2;
  wire [10 : 0] NlwRenamedSig_OI_data_count;
  wire [71 : 0] dout_3;
  wire [10 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 ;
  wire [10 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 ;
  wire [9 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy ;
  wire [10 : 0] \BU2/U0/grf.rf/gl0.wr/wpntr/count ;
  wire [10 : 0] \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 ;
  wire [9 : 0] \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy ;
  wire [10 : 0] \BU2/U0/grf.rf/gl0.rd/rpntr/count ;
  wire [5 : 0] \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 ;
  wire [4 : 0] \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/carrynet ;
  wire [5 : 0] \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 ;
  wire [4 : 0] \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/carrynet ;
  wire [4 : 0] \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/carrynet ;
  wire [5 : 0] \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 ;
  wire [4 : 0] \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/carrynet ;
  wire [5 : 0] \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 ;
  wire [4 : 0] \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/carrynet ;
  wire [10 : 0] \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut ;
  wire [9 : 0] \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy ;
  wire [1 : 1] \BU2/U0/grf.rf/rstblk/wr_rst_reg ;
  wire [0 : 0] \BU2/rd_data_count ;
  assign
    dout[71] = dout_3[71],
    dout[70] = dout_3[70],
    dout[69] = dout_3[69],
    dout[68] = dout_3[68],
    dout[67] = dout_3[67],
    dout[66] = dout_3[66],
    dout[65] = dout_3[65],
    dout[64] = dout_3[64],
    dout[63] = dout_3[63],
    dout[62] = dout_3[62],
    dout[61] = dout_3[61],
    dout[60] = dout_3[60],
    dout[59] = dout_3[59],
    dout[58] = dout_3[58],
    dout[57] = dout_3[57],
    dout[56] = dout_3[56],
    dout[55] = dout_3[55],
    dout[54] = dout_3[54],
    dout[53] = dout_3[53],
    dout[52] = dout_3[52],
    dout[51] = dout_3[51],
    dout[50] = dout_3[50],
    dout[49] = dout_3[49],
    dout[48] = dout_3[48],
    dout[47] = dout_3[47],
    dout[46] = dout_3[46],
    dout[45] = dout_3[45],
    dout[44] = dout_3[44],
    dout[43] = dout_3[43],
    dout[42] = dout_3[42],
    dout[41] = dout_3[41],
    dout[40] = dout_3[40],
    dout[39] = dout_3[39],
    dout[38] = dout_3[38],
    dout[37] = dout_3[37],
    dout[36] = dout_3[36],
    dout[35] = dout_3[35],
    dout[34] = dout_3[34],
    dout[33] = dout_3[33],
    dout[32] = dout_3[32],
    dout[31] = dout_3[31],
    dout[30] = dout_3[30],
    dout[29] = dout_3[29],
    dout[28] = dout_3[28],
    dout[27] = dout_3[27],
    dout[26] = dout_3[26],
    dout[25] = dout_3[25],
    dout[24] = dout_3[24],
    dout[23] = dout_3[23],
    dout[22] = dout_3[22],
    dout[21] = dout_3[21],
    dout[20] = dout_3[20],
    dout[19] = dout_3[19],
    dout[18] = dout_3[18],
    dout[17] = dout_3[17],
    dout[16] = dout_3[16],
    dout[15] = dout_3[15],
    dout[14] = dout_3[14],
    dout[13] = dout_3[13],
    dout[12] = dout_3[12],
    dout[11] = dout_3[11],
    dout[10] = dout_3[10],
    dout[9] = dout_3[9],
    dout[8] = dout_3[8],
    dout[7] = dout_3[7],
    dout[6] = dout_3[6],
    dout[5] = dout_3[5],
    dout[4] = dout_3[4],
    dout[3] = dout_3[3],
    dout[2] = dout_3[2],
    dout[1] = dout_3[1],
    dout[0] = dout_3[0],
    din_2[71] = din[71],
    din_2[70] = din[70],
    din_2[69] = din[69],
    din_2[68] = din[68],
    din_2[67] = din[67],
    din_2[66] = din[66],
    din_2[65] = din[65],
    din_2[64] = din[64],
    din_2[63] = din[63],
    din_2[62] = din[62],
    din_2[61] = din[61],
    din_2[60] = din[60],
    din_2[59] = din[59],
    din_2[58] = din[58],
    din_2[57] = din[57],
    din_2[56] = din[56],
    din_2[55] = din[55],
    din_2[54] = din[54],
    din_2[53] = din[53],
    din_2[52] = din[52],
    din_2[51] = din[51],
    din_2[50] = din[50],
    din_2[49] = din[49],
    din_2[48] = din[48],
    din_2[47] = din[47],
    din_2[46] = din[46],
    din_2[45] = din[45],
    din_2[44] = din[44],
    din_2[43] = din[43],
    din_2[42] = din[42],
    din_2[41] = din[41],
    din_2[40] = din[40],
    din_2[39] = din[39],
    din_2[38] = din[38],
    din_2[37] = din[37],
    din_2[36] = din[36],
    din_2[35] = din[35],
    din_2[34] = din[34],
    din_2[33] = din[33],
    din_2[32] = din[32],
    din_2[31] = din[31],
    din_2[30] = din[30],
    din_2[29] = din[29],
    din_2[28] = din[28],
    din_2[27] = din[27],
    din_2[26] = din[26],
    din_2[25] = din[25],
    din_2[24] = din[24],
    din_2[23] = din[23],
    din_2[22] = din[22],
    din_2[21] = din[21],
    din_2[20] = din[20],
    din_2[19] = din[19],
    din_2[18] = din[18],
    din_2[17] = din[17],
    din_2[16] = din[16],
    din_2[15] = din[15],
    din_2[14] = din[14],
    din_2[13] = din[13],
    din_2[12] = din[12],
    din_2[11] = din[11],
    din_2[10] = din[10],
    din_2[9] = din[9],
    din_2[8] = din[8],
    din_2[7] = din[7],
    din_2[6] = din[6],
    din_2[5] = din[5],
    din_2[4] = din[4],
    din_2[3] = din[3],
    din_2[2] = din[2],
    din_2[1] = din[1],
    din_2[0] = din[0],
    almost_full = NlwRenamedSig_OI_almost_full,
    data_count[10] = NlwRenamedSig_OI_data_count[10],
    data_count[9] = NlwRenamedSig_OI_data_count[9],
    data_count[8] = NlwRenamedSig_OI_data_count[8],
    data_count[7] = NlwRenamedSig_OI_data_count[7],
    data_count[6] = NlwRenamedSig_OI_data_count[6],
    data_count[5] = NlwRenamedSig_OI_data_count[5],
    data_count[4] = NlwRenamedSig_OI_data_count[4],
    data_count[3] = NlwRenamedSig_OI_data_count[3],
    data_count[2] = NlwRenamedSig_OI_data_count[2],
    data_count[1] = NlwRenamedSig_OI_data_count[1],
    data_count[0] = NlwRenamedSig_OI_data_count[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  LUT3_L #(
    .INIT ( 8'hBF ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or000013  (
    .I0(\BU2/U0/grf.rf/ram_wr_en ),
    .I1(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_1_402 ),
    .I2(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/comp1 ),
    .LO(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or000013_399 )
  );
  LUT2_L #(
    .INIT ( 4'h8 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_or0000_SW0  (
    .I0(rd_en),
    .I1(\BU2/U0/grf.rf/gl0.rd/grss.rsts/comp1 ),
    .LO(\BU2/N01 )
  );
  RAMB16_S9_S9 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 9'h000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 9'h000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram  (
    .CLKA(clk),
    .CLKB(clk),
    .ENA(\BU2/N0_inv ),
    .ENB(\BU2/U0/grf.rf/mem/tmp_ram_rd_en ),
    .SSRA(\BU2/rd_data_count [0]),
    .SSRB(\BU2/U0/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(\BU2/U0/grf.rf/ram_wr_en ),
    .WEB(\BU2/rd_data_count [0]),
    .ADDRA({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .DIA({din_2[70], din_2[69], din_2[68], din_2[67], din_2[66], din_2[65], din_2[64], din_2[63]}),
    .DIB({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIPA({din_2[71]}),
    .DIPB({\BU2/rd_data_count [0]}),
    .DOA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED }),
    .DOPA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[7].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED }),
    .DOB({dout_3[70], dout_3[69], dout_3[68], dout_3[67], dout_3[66], dout_3[65], dout_3[64], dout_3[63]}),
    .DOPB({dout_3[71]})
  );
  RAMB16_S9_S9 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 9'h000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 9'h000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram  (
    .CLKA(clk),
    .CLKB(clk),
    .ENA(\BU2/N0_inv ),
    .ENB(\BU2/U0/grf.rf/mem/tmp_ram_rd_en ),
    .SSRA(\BU2/rd_data_count [0]),
    .SSRB(\BU2/U0/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(\BU2/U0/grf.rf/ram_wr_en ),
    .WEB(\BU2/rd_data_count [0]),
    .ADDRA({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .DIA({din_2[61], din_2[60], din_2[59], din_2[58], din_2[57], din_2[56], din_2[55], din_2[54]}),
    .DIB({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIPA({din_2[62]}),
    .DIPB({\BU2/rd_data_count [0]}),
    .DOA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED }),
    .DOPA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[6].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED }),
    .DOB({dout_3[61], dout_3[60], dout_3[59], dout_3[58], dout_3[57], dout_3[56], dout_3[55], dout_3[54]}),
    .DOPB({dout_3[62]})
  );
  RAMB16_S9_S9 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 9'h000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 9'h000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram  (
    .CLKA(clk),
    .CLKB(clk),
    .ENA(\BU2/N0_inv ),
    .ENB(\BU2/U0/grf.rf/mem/tmp_ram_rd_en ),
    .SSRA(\BU2/rd_data_count [0]),
    .SSRB(\BU2/U0/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(\BU2/U0/grf.rf/ram_wr_en ),
    .WEB(\BU2/rd_data_count [0]),
    .ADDRA({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .DIA({din_2[52], din_2[51], din_2[50], din_2[49], din_2[48], din_2[47], din_2[46], din_2[45]}),
    .DIB({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIPA({din_2[53]}),
    .DIPB({\BU2/rd_data_count [0]}),
    .DOA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED }),
    .DOPA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[5].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED }),
    .DOB({dout_3[52], dout_3[51], dout_3[50], dout_3[49], dout_3[48], dout_3[47], dout_3[46], dout_3[45]}),
    .DOPB({dout_3[53]})
  );
  RAMB16_S9_S9 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 9'h000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 9'h000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram  (
    .CLKA(clk),
    .CLKB(clk),
    .ENA(\BU2/N0_inv ),
    .ENB(\BU2/U0/grf.rf/mem/tmp_ram_rd_en ),
    .SSRA(\BU2/rd_data_count [0]),
    .SSRB(\BU2/U0/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(\BU2/U0/grf.rf/ram_wr_en ),
    .WEB(\BU2/rd_data_count [0]),
    .ADDRA({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .DIA({din_2[43], din_2[42], din_2[41], din_2[40], din_2[39], din_2[38], din_2[37], din_2[36]}),
    .DIB({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIPA({din_2[44]}),
    .DIPB({\BU2/rd_data_count [0]}),
    .DOA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED }),
    .DOPA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[4].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED }),
    .DOB({dout_3[43], dout_3[42], dout_3[41], dout_3[40], dout_3[39], dout_3[38], dout_3[37], dout_3[36]}),
    .DOPB({dout_3[44]})
  );
  RAMB16_S9_S9 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 9'h000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 9'h000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram  (
    .CLKA(clk),
    .CLKB(clk),
    .ENA(\BU2/N0_inv ),
    .ENB(\BU2/U0/grf.rf/mem/tmp_ram_rd_en ),
    .SSRA(\BU2/rd_data_count [0]),
    .SSRB(\BU2/U0/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(\BU2/U0/grf.rf/ram_wr_en ),
    .WEB(\BU2/rd_data_count [0]),
    .ADDRA({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .DIA({din_2[34], din_2[33], din_2[32], din_2[31], din_2[30], din_2[29], din_2[28], din_2[27]}),
    .DIB({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIPA({din_2[35]}),
    .DIPB({\BU2/rd_data_count [0]}),
    .DOA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED }),
    .DOPA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[3].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED }),
    .DOB({dout_3[34], dout_3[33], dout_3[32], dout_3[31], dout_3[30], dout_3[29], dout_3[28], dout_3[27]}),
    .DOPB({dout_3[35]})
  );
  RAMB16_S9_S9 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 9'h000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 9'h000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram  (
    .CLKA(clk),
    .CLKB(clk),
    .ENA(\BU2/N0_inv ),
    .ENB(\BU2/U0/grf.rf/mem/tmp_ram_rd_en ),
    .SSRA(\BU2/rd_data_count [0]),
    .SSRB(\BU2/U0/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(\BU2/U0/grf.rf/ram_wr_en ),
    .WEB(\BU2/rd_data_count [0]),
    .ADDRA({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .DIA({din_2[25], din_2[24], din_2[23], din_2[22], din_2[21], din_2[20], din_2[19], din_2[18]}),
    .DIB({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIPA({din_2[26]}),
    .DIPB({\BU2/rd_data_count [0]}),
    .DOA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED }),
    .DOPA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[2].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED }),
    .DOB({dout_3[25], dout_3[24], dout_3[23], dout_3[22], dout_3[21], dout_3[20], dout_3[19], dout_3[18]}),
    .DOPB({dout_3[26]})
  );
  RAMB16_S9_S9 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 9'h000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 9'h000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram  (
    .CLKA(clk),
    .CLKB(clk),
    .ENA(\BU2/N0_inv ),
    .ENB(\BU2/U0/grf.rf/mem/tmp_ram_rd_en ),
    .SSRA(\BU2/rd_data_count [0]),
    .SSRB(\BU2/U0/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(\BU2/U0/grf.rf/ram_wr_en ),
    .WEB(\BU2/rd_data_count [0]),
    .ADDRA({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .DIA({din_2[16], din_2[15], din_2[14], din_2[13], din_2[12], din_2[11], din_2[10], din_2[9]}),
    .DIB({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIPA({din_2[17]}),
    .DIPB({\BU2/rd_data_count [0]}),
    .DOA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED }),
    .DOPA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED }),
    .DOB({dout_3[16], dout_3[15], dout_3[14], dout_3[13], dout_3[12], dout_3[11], dout_3[10], dout_3[9]}),
    .DOPB({dout_3[17]})
  );
  RAMB16_S9_S9 #(
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 9'h000 ),
    .SRVAL_B ( 9'h000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SIM_COLLISION_CHECK ( "NONE" ),
    .INIT_A ( 9'h000 ),
    .INIT_B ( 9'h000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ))
  \BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram  (
    .CLKA(clk),
    .CLKB(clk),
    .ENA(\BU2/N0_inv ),
    .ENB(\BU2/U0/grf.rf/mem/tmp_ram_rd_en ),
    .SSRA(\BU2/rd_data_count [0]),
    .SSRB(\BU2/U0/grf.rf/rstblk/rd_rst_reg[0] ),
    .WEA(\BU2/U0/grf.rf/ram_wr_en ),
    .WEB(\BU2/rd_data_count [0]),
    .ADDRA({\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2], 
\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1], \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]}),
    .ADDRB({\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2], 
\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1], \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]}),
    .DIA({din_2[7], din_2[6], din_2[5], din_2[4], din_2[3], din_2[2], din_2[1], din_2[0]}),
    .DIB({\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0], 
\BU2/rd_data_count [0], \BU2/rd_data_count [0], \BU2/rd_data_count [0]}),
    .DIPA({din_2[8]}),
    .DIPB({\BU2/rd_data_count [0]}),
    .DOA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<7>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<6>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<5>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<4>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<3>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<2>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<1>_UNCONNECTED , 
\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOA<0>_UNCONNECTED }),
    .DOPA({\NLW_BU2/U0/grf.rf/mem/gbm.gbmg.gbmga.ngecc.bmg/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v2.ram/dp9x9.ram_DOPA<0>_UNCONNECTED }),
    .DOB({dout_3[7], dout_3[6], dout_3[5], dout_3[4], dout_3[3], dout_3[2], dout_3[1], dout_3[0]}),
    .DOPB({dout_3[8]})
  );
  LUT4 #(
    .INIT ( 16'h23AF ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_comb24_G  (
    .I0(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .I1(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count ),
    .I2(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/wr_rst_d1_274 ),
    .I3(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/comp0 ),
    .O(\BU2/N6 )
  );
  LUT4 #(
    .INIT ( 16'h8088 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_comb24_F  (
    .I0(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/comp1 ),
    .I1(wr_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .I3(rd_en),
    .O(\BU2/N5 )
  );
  MUXF5   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_comb24  (
    .I0(\BU2/N5 ),
    .I1(\BU2/N6 ),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_fb_i_272 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_comb )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_3  (
    .I0(rd_en),
    .I1(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2  (
    .I0(rd_en),
    .I1(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_1_402 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_1  (
    .I0(rd_en),
    .I1(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_177 )
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/grf.rf/mem/tmp_ram_rd_en1  (
    .I0(\BU2/U0/grf.rf/rstblk/rd_rst_reg[0] ),
    .I1(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .I2(rd_en),
    .O(\BU2/U0/grf.rf/mem/tmp_ram_rd_en )
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<10>  (
    .I0(NlwRenamedSig_OI_data_count[10]),
    .I1(rd_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [10])
  );
  LUT4 #(
    .INIT ( 16'h6530 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not00011  (
    .I0(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_fb_i_272 ),
    .I2(wr_en),
    .I3(rd_en),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h2030 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_comb2  (
    .I0(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_fb_i_272 ),
    .I2(wr_en),
    .I3(rd_en),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or00002 )
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<9>  (
    .I0(NlwRenamedSig_OI_data_count[9]),
    .I1(rd_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [9])
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<8>  (
    .I0(NlwRenamedSig_OI_data_count[8]),
    .I1(rd_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [8])
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<7>  (
    .I0(NlwRenamedSig_OI_data_count[7]),
    .I1(rd_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [7])
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<6>  (
    .I0(NlwRenamedSig_OI_data_count[6]),
    .I1(rd_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h39 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<0>  (
    .I0(rd_en),
    .I1(NlwRenamedSig_OI_data_count[0]),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [0])
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<5>  (
    .I0(NlwRenamedSig_OI_data_count[5]),
    .I1(rd_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [5])
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<4>  (
    .I0(NlwRenamedSig_OI_data_count[4]),
    .I1(rd_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<3>  (
    .I0(NlwRenamedSig_OI_data_count[3]),
    .I1(rd_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [3])
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<2>  (
    .I0(NlwRenamedSig_OI_data_count[2]),
    .I1(rd_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<1>  (
    .I0(NlwRenamedSig_OI_data_count[1]),
    .I1(rd_en),
    .I2(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [1])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<10>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [10]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<10>_rt_354 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<10>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [10]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<10>_rt_299 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>_rt_373 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>_rt_372 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>_rt_370 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>_rt_368 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>_rt_366 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [5]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>_rt_364 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [6]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>_rt_362 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [7]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>_rt_360 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [8]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>_rt_358 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [9]),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>_rt_356 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>_rt_318 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>_rt_317 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>_rt_315 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>_rt_313 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>_rt_311 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [5]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>_rt_309 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [6]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>_rt_307 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [7]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>_rt_305 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [8]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>_rt_303 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>_rt  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [9]),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>_rt_301 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<0>1_1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<0>1_1_235 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<1>1_1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<1>1_1_237 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<2>1_1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<2>1_1_239 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<3>1_1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<3>1_1_241 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<4>1_1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<4>1_1_243 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<5>1_1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<5>1_1_245 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1  (
    .I0(rd_en),
    .I1(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or000030  (
    .I0(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/comp2 ),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or00002 ),
    .I2(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or000013_399 ),
    .I3(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or000019_397 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or0000 )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or000019  (
    .I0(NlwRenamedSig_OI_almost_full),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/wr_rst_d1_274 ),
    .I2(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or000019_397 )
  );
  LUT4 #(
    .INIT ( 16'h32BA ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_or0000  (
    .I0(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 ),
    .I1(\BU2/U0/grf.rf/ram_wr_en ),
    .I2(\BU2/N01 ),
    .I3(\BU2/U0/grf.rf/gl0.rd/grss.rsts/comp0 ),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<0>1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [0])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1_0_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [0]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [1]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [0])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<1>1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1_1_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<2>1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1_2_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [4]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [5]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<3>1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1_3_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [6]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [7]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<4>1  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [4])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1_4_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [8]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [9]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<5>1  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1_5_not00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [10]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [5])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1_0_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [0])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1_0_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [0])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1_1_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1_1_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [1])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1_2_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [4]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [5]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [2])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1_2_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [4]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count [5]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/grf.rf/gl0.wr/ram_wr_en_i1  (
    .I0(wr_en),
    .I1(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_fb_i_272 ),
    .O(\BU2/U0/grf.rf/ram_wr_en )
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1_3_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [6]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [7]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1_3_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [6]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count [7]),
    .I2(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [3])
  );
  LUT4 #(
    .INIT ( 16'h8241 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1_4_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [8]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count [9]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9]),
    .I3(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [4])
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1_4_and00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [9]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9]),
    .I2(\BU2/U0/grf.rf/gl0.wr/wpntr/count [8]),
    .I3(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1_5_not00001  (
    .I0(\BU2/U0/grf.rf/gl0.rd/rpntr/count [10]),
    .I1(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1_5_not00001  (
    .I0(\BU2/U0/grf.rf/gl0.wr/wpntr/count [10]),
    .I1(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [5])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_comb1  (
    .I0(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2_165 ),
    .I1(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_168 ),
    .O(\BU2/U0/grf.rf/rstblk/rd_rst_comb )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_comb1  (
    .I0(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2_167 ),
    .I1(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_169 ),
    .O(\BU2/U0/grf.rf/rstblk/wr_rst_comb )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_0  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [0]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_1  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_2  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [2]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_3  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [3]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_4  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [4]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_5  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [5]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_6  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [6]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_7  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [7]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_8  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [8]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_9  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [9]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d2_10  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [10]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d2 [10])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_10  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [10]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [10])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_9  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [9]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_7  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [7]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_6  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [6]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_8  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [8]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_4  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [4]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_3  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_5  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [5]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_1  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [1])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_0  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_d1_2  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count_d1 [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>  (
    .CI(\BU2/N0_inv ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>_rt_373 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [0])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<0>  (
    .CI(\BU2/N0_inv ),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<0>_rt_373 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>_rt_372 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [1])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<1>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [0]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<1>_rt_372 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count1 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>_rt_370 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [2])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<2>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [1]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<2>_rt_370 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count2 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>_rt_368 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [3])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<3>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [2]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<3>_rt_368 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count3 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>_rt_366 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [4])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<4>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [3]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<4>_rt_366 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count4 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>_rt_364 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [5])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<5>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [4]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<5>_rt_364 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count5 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [5]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>_rt_362 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [6])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<6>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [5]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<6>_rt_362 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count6 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [6]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>_rt_360 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [7])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<7>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [6]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<7>_rt_360 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count7 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [7]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>_rt_358 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [8])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<8>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [7]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<8>_rt_358 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count8 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [8]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>_rt_356 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [9])
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<9>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [8]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy<9>_rt_356 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count9 )
  );
  XORCY   \BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<10>  (
    .CI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_cy [9]),
    .LI(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count_xor<10>_rt_354 ),
    .O(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count10 )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_2  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count2 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_0  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [0])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_1  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count1 ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_5  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count5 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_3  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count3 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_4  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count4 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_8  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count8 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_6  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count6 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_7  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count7 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_9  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count9 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/wpntr/count_10  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/ram_wr_en ),
    .CLR(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .D(\BU2/U0/grf.rf/gl0.wr/wpntr/Mcount_count10 ),
    .Q(\BU2/U0/grf.rf/gl0.wr/wpntr/count [10])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_0  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_1  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_2  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_3  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_4  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [4]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_5  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [5]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_6  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [6]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_7  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [7]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_8  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [8]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_9  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [9]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_d1_10  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/count [10]),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count_d1 [10])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>  (
    .CI(\BU2/N0_inv ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>_rt_318 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [0])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<0>  (
    .CI(\BU2/N0_inv ),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<0>_rt_318 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>_rt_317 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [1])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<1>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [0]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<1>_rt_317 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count1 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>_rt_315 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [2])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<2>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [1]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<2>_rt_315 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count2 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>_rt_313 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [3])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<3>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [2]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<3>_rt_313 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count3 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>_rt_311 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [4])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<4>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [3]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<4>_rt_311 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count4 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>_rt_309 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [5])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<5>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [4]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<5>_rt_309 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count5 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [5]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>_rt_307 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [6])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<6>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [5]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<6>_rt_307 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count6 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [6]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>_rt_305 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [7])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<7>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [6]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<7>_rt_305 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count7 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [7]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>_rt_303 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [8])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<8>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [7]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<8>_rt_303 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count8 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [8]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>_rt_301 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [9])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<9>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [8]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy<9>_rt_301 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count9 )
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<10>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_cy [9]),
    .LI(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count_xor<10>_rt_299 ),
    .O(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count10 )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_2  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count2 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [2])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_0  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count ),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_1  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count1 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_5  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count5 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_3  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count3 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_4  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count4 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_8  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count8 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_6  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count6 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_7  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count7 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_9  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count9 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/rpntr/count_10  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_2_275 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/rpntr/Mcount_count10 ),
    .Q(\BU2/U0/grf.rf/gl0.rd/rpntr/count [10])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/wr_rst_d1  (
    .C(clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/wr_rst_d1_274 )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i  (
    .C(clk),
    .D(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_afull_i_or0000 ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(NlwRenamedSig_OI_almost_full)
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_i  (
    .C(clk),
    .D(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_comb ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(full)
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_fb_i  (
    .C(clk),
    .D(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_comb ),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1]),
    .Q(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/ram_full_fb_i_272 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/gmux.gm[5].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/carrynet [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [5]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/comp2 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/carrynet [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/carrynet [4])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/carrynet [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [3]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/carrynet [3])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/gmux.gm[2].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/carrynet [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/carrynet [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/gmux.gm[1].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/carrynet [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [1]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/carrynet [1])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/gmux.gm[0].gm1.m1  (
    .CI(\BU2/N0_inv ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/v1 [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/gaf.c2/carrynet [0])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/gmux.gm[5].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/carrynet [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [5]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/comp1 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/carrynet [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [4]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/carrynet [4])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/carrynet [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [3]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/carrynet [3])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/gmux.gm[2].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/carrynet [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [2]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/carrynet [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/gmux.gm[1].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/carrynet [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [1]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/carrynet [1])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/gmux.gm[0].gm1.m1  (
    .CI(\BU2/N0_inv ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/v1 [0]),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c1/carrynet [0])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/gmux.gm[5].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/carrynet [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<5>1_1_245 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/comp0 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/carrynet [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<4>1_1_243 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/carrynet [4])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/carrynet [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<3>1_1_241 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/carrynet [3])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/gmux.gm[2].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/carrynet [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<2>1_1_239 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/carrynet [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/gmux.gm[1].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/carrynet [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<1>1_1_237 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/carrynet [1])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/gmux.gm[0].gm1.m1  (
    .CI(\BU2/N0_inv ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1<0>1_1_235 ),
    .O(\BU2/U0/grf.rf/gl0.wr/gwss.wsts/c0/carrynet [0])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/gmux.gm[0].gm1.m1  (
    .CI(\BU2/N0_inv ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/carrynet [0])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/gmux.gm[1].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/carrynet [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/carrynet [1])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/gmux.gm[2].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/carrynet [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/carrynet [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/carrynet [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [3]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/carrynet [3])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/carrynet [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/carrynet [4])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/gmux.gm[5].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/carrynet [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c2/v1 [5]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/comp1 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/gmux.gm[0].gm1.m1  (
    .CI(\BU2/N0_inv ),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/carrynet [0])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/gmux.gm[1].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/carrynet [0]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/carrynet [1])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/gmux.gm[2].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/carrynet [1]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/carrynet [2])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/carrynet [2]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [3]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/carrynet [3])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/carrynet [3]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/carrynet [4])
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/gmux.gm[5].gms.ms  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/carrynet [4]),
    .DI(\BU2/rd_data_count [0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.rsts/c1/v1 [5]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.rsts/comp0 )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_10  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count11 ),
    .Q(NlwRenamedSig_OI_data_count[10])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_9  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count10 ),
    .Q(NlwRenamedSig_OI_data_count[9])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_8  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count9 ),
    .Q(NlwRenamedSig_OI_data_count[8])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_7  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count8 ),
    .Q(NlwRenamedSig_OI_data_count[7])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_6  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count7 ),
    .Q(NlwRenamedSig_OI_data_count[6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_5  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count6 ),
    .Q(NlwRenamedSig_OI_data_count[5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_4  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count5 ),
    .Q(NlwRenamedSig_OI_data_count[4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_3  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count4 ),
    .Q(NlwRenamedSig_OI_data_count[3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_2  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count3 ),
    .Q(NlwRenamedSig_OI_data_count[2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_1  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count2 ),
    .Q(NlwRenamedSig_OI_data_count[1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_0  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/count_not0001 ),
    .CLR(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count1 ),
    .Q(NlwRenamedSig_OI_data_count[0])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<10>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [9]),
    .LI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [10]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count11 )
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [8]),
    .LI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [9]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count10 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<9>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [8]),
    .DI(NlwRenamedSig_OI_data_count[9]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [9]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [9])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<8>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [7]),
    .LI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [8]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count9 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<8>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [7]),
    .DI(NlwRenamedSig_OI_data_count[8]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [8]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [8])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<7>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [6]),
    .LI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [7]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count8 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<7>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [6]),
    .DI(NlwRenamedSig_OI_data_count[7]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [7]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [7])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<6>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [5]),
    .LI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [6]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count7 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<6>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [5]),
    .DI(NlwRenamedSig_OI_data_count[6]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [6]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [6])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<5>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [4]),
    .LI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [5]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count6 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<5>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [4]),
    .DI(NlwRenamedSig_OI_data_count[5]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [5]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [5])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<4>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [3]),
    .LI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count5 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<4>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [3]),
    .DI(NlwRenamedSig_OI_data_count[4]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [4]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [4])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<3>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [2]),
    .LI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [3]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count4 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<3>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [2]),
    .DI(NlwRenamedSig_OI_data_count[3]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [3]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [3])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<2>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [1]),
    .LI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count3 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<2>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [1]),
    .DI(NlwRenamedSig_OI_data_count[2]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [2]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [2])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<1>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [0]),
    .LI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count2 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<1>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [0]),
    .DI(NlwRenamedSig_OI_data_count[1]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [1]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [1])
  );
  XORCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<0>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_177 ),
    .LI(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count1 )
  );
  MUXCY   \BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<0>  (
    .CI(\BU2/U0/grf.rf/gl0.rd/ram_rd_en_i1_177 ),
    .DI(NlwRenamedSig_OI_data_count[0]),
    .S(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [0]),
    .O(\BU2/U0/grf.rf/gl0.rd/grss.gdc.dc/dc/Mcount_count_cy [0])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_i  (
    .C(clk),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_mux0000 ),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .Q(empty)
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i  (
    .C(clk),
    .D(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_mux0000 ),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] ),
    .Q(\BU2/U0/grf.rf/gl0.rd/grss.rsts/ram_empty_fb_i_176 )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_reg_1  (
    .C(clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/wr_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_reg_0  (
    .C(clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_reg[0] )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_reg_2  (
    .C(clk),
    .D(\BU2/rd_data_count [0]),
    .PRE(\BU2/U0/grf.rf/rstblk/rd_rst_comb ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_reg[2] )
  );
  FDPE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_asreg  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_164 ),
    .D(\BU2/rd_data_count [0]),
    .PRE(rst),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_168 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1  (
    .C(clk),
    .D(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_169 ),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_166 )
  );
  FDPE #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_asreg  (
    .C(clk),
    .CE(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_166 ),
    .D(\BU2/rd_data_count [0]),
    .PRE(rst),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_169 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1  (
    .C(clk),
    .D(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_168 ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_164 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2  (
    .C(clk),
    .D(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d1_166 ),
    .Q(\BU2/U0/grf.rf/rstblk/wr_rst_asreg_d2_167 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2  (
    .C(clk),
    .D(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d1_164 ),
    .Q(\BU2/U0/grf.rf/rstblk/rd_rst_asreg_d2_165 )
  );
  VCC   \BU2/XST_VCC  (
    .P(\BU2/N0_inv )
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/rd_data_count [0])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

// synthesis translate_on
