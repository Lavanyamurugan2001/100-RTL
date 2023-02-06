module fifomem (rdata, wdata, waddr, raddr, wclken, wclk);
 parameter DATASIZE = 8; 
 parameter ADDRSIZE = 4; 
 parameter DEPTH = 1<<ADDRSIZE;
 output [DATASIZE-1:0] rdata;
 input [DATASIZE-1:0] wdata;
 input [ADDRSIZE-1:0] waddr, raddr;
 input wclken, wclk;
 `ifdef VENDORRAM

 VENDOR_RAM MEM (.dout(rdata), .din(wdata),
 .waddr(waddr), .raddr(raddr),
 .wclken(wclken), .clk(wclk));
 `else
 reg [DATASIZE-1:0] MEM [0:DEPTH-1];
 assign rdata = MEM[raddr];
 always @(posedge wclk)
 if (wclken) MEM[waddr] <= wdata;
 `endif
endmodule
