`timescale  1ns /  10ps


//
//				CY7C1370 
//			Simulatiom of Verilog model 
//
//

//				ds1370a.v
//
//			test bench for US vector input
//
//

//	define speed 166MHz

`define tx10 #6 
`define tx08 #4.8
`define tx05 #3
`define tx04 #2.4
`define tx02 #1.2

/*
`define tx10 #4.0		//    period
`define tx08 #3.2		//0.8 period
`define tx05 #2.0		//0.5 period  250MHZ
`define tx04 #1.6		//0.4 period
`define tx02 #0.8		//0.2 period

`define tx10 #4.4		//    period
`define tx08 #3.52		//0.8 period
`define tx05 #2.2		//0.5 period  225MHZ
`define tx04 #1.76		//0.4 period
`define tx02 #0.88		//0.2 period

`define tx10 #5			//    period
`define tx08 #4			//0.8 period
`define tx05 #2.5		//0.5 period  200MHZ
`define tx04 #2.0		//0.4 period
`define tx02 #1.0		//0.2 period
*/


module rw_test;

`define num_vectors    126
`define	impi {a[15:0],io[15:0],tsti[15:0],cenb,ce1b,ce2,ce3b,bweb,bwb,adv_lb}


reg	[59:1]	lsim_vectors	[1:`num_vectors];


reg		clk;
reg		adv_lb;
reg		ce1b;		//cs1b
reg		ce2;		//cs2
reg		ce3b;		//cs3b
reg	[3:0]	bwb;
reg		bweb;
reg		oeb;
reg		ftb;
reg		mode;		//lbob
reg		cenb;		//zz
reg		tp42;		//sclk
reg		tp39;		//se
reg		tp38;		//tm
reg	[18:0]	a;
reg	[35:0]	io;
reg	[35:0]	tsti;
reg		vddq;
reg		vssqr;
reg		iosel;

//wire	[31:0]	e = iosel ? io[31:0] : 32'bz;
//wire	[31:0]	d;

wire	[35:0]	d = iosel ? io[35:0] : 36'bz;

reg 		noti3;
reg		strb,j;
integer		vector,i;



cy7c1370 testram ( d, clk, a, bwb, bweb, adv_lb, ce1b, ce2, ce3b, oeb, cenb, mode);

initial
begin
  $dumpfile("dumpfile.dump");
  $dumpvars(0,rw_test);
end

initial
begin
io	= 36'bz;
ftb 	= 1;
oeb 	= 0;
a[18:16] = 3'h0;
mode	= 0;
strb 	= 0;
tp38	= 0;
tp39	= 0;
tp42	= 0;
`tx02;
forever `tx05 strb = ~strb;
end

initial
begin
clk	= 0;
forever `tx05 clk =~clk;
end

initial
 begin
 
 $readmemb("cy1370.inp", lsim_vectors);     //load input vector file

 `impi = lsim_vectors[1];         //apply 1st test vector

 for (vector = 2; vector <= `num_vectors; vector = vector + 1)
   @(posedge strb)
    begin

 `impi = lsim_vectors[vector];
 

      io[34:31] = io[15:12];
      io[30:27] = io[15:12];
      io[25:22] = io[11:08];
      io[21:18] = io[11:08];
      io[16:13] = io[07:04];
      io[12:09] = io[07:04];
      io[07:04] = io[03:00];
      io[03:00] = io[03:00];
      io[35] = io[34] ^^ io[33] ^^ io[32] ^^ io[31] ^^ io[30] ^^ io[29] ^^ io[28] ^^ io[27];
      io[26] = io[25] ^^ io[24] ^^ io[23] ^^ io[22] ^^ io[21] ^^ io[20] ^^ io[19] ^^ io[18];
      io[17] = io[16] ^^ io[15] ^^ io[14] ^^ io[13] ^^ io[11] ^^ io[11] ^^ io[10] ^^ io[9];
      io[8] = io[7] ^^ io[6] ^^ io[5] ^^ io[4] ^^ io[3] ^^ io[2] ^^ io[1] ^^ io[0];

      tsti[34:31] = tsti[15:12];
      tsti[30:27] = tsti[15:12];
      tsti[25:22] = tsti[11:08];
      tsti[21:18] = tsti[11:08];
      tsti[16:13] = tsti[07:04];
      tsti[12:09] = tsti[07:04];
      tsti[07:04] = tsti[03:00];
      tsti[03:00] = tsti[03:00];
      tsti[35] = tsti[34] ^^ tsti[33] ^^ tsti[32] ^^ tsti[31] ^^ tsti[30] ^^ tsti[29] ^^ tsti[28] ^^ tsti[27];
      tsti[26] = tsti[25] ^^ tsti[24] ^^ tsti[23] ^^ tsti[22] ^^ tsti[21] ^^ tsti[20] ^^ tsti[19] ^^ tsti[18];
      tsti[17] = tsti[16] ^^ tsti[15] ^^ tsti[14] ^^ tsti[13] ^^ tsti[11] ^^ tsti[11] ^^ tsti[10] ^^ tsti[9];
      tsti[8] = tsti[7] ^^ tsti[6] ^^ tsti[5] ^^ tsti[4] ^^ tsti[3] ^^ tsti[2] ^^ tsti[1] ^^ tsti[0];

      if (io === 36'hxxxxxxxx)
       iosel = `tx05 0;
      else
       iosel = `tx05 1;

    end
   #15 $finish; // This prevents simulation beyond end of test patterns
 end

always@(posedge clk)
begin
/*
      tsti[34:31] = tsti[15:12];
      tsti[30:27] = tsti[15:12];
      tsti[25:22] = tsti[11:08];
      tsti[21:18] = tsti[11:08];
      tsti[16:13] = tsti[07:04];
      tsti[12:09] = tsti[07:04];
      tsti[07:04] = tsti[03:00];
      tsti[03:00] = tsti[03:00];
      tsti[35] = tsti[34] ^^ tsti[33] ^^ tsti[32] ^^ tsti[31] ^^ tsti[30] ^^ tsti[29] ^^ tsti[28] ^^ tsti[27];
      tsti[26] = tsti[25] ^^ tsti[24] ^^ tsti[23] ^^ tsti[22] ^^ tsti[21] ^^ tsti[20] ^^ tsti[19] ^^ tsti[18];
      tsti[17] = tsti[16] ^^ tsti[15] ^^ tsti[14] ^^ tsti[13] ^^ tsti[11] ^^ tsti[11] ^^ tsti[10] ^^ tsti[9];
      tsti[8] = tsti[7] ^^ tsti[6] ^^ tsti[5] ^^ tsti[4] ^^ tsti[3] ^^ tsti[2] ^^ tsti[1] ^^ tsti[0];
*/
  
  if (io !== 36'hxxxxxxxx) 	//input cycle
  begin
    $display("NOTICE      : 001 : line = %d OK",vector -1);
  end
  else				//do the test
  begin
    if (d == tsti)
    begin
    $display("NOTICE      : 002 : line = %d OK",vector -1);
    end
    else
    begin
      j =0;
      for (i =0;i<36; i=i+1)
      begin
        if(tsti[i] !== 1'bx)
          begin
           if (d[i] !== tsti[i]) j = 1;
          end
	else
	  j = 0;
      end
      if (j) 
    $display("ERROR   *** : 003 : line = %d data = %b test = %b",vector -1,d,tsti);
      else
    $display("NOTICE      : 003 : line = %d OK",vector -1);
    end
  end
end

endmodule




