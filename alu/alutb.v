module alutb;
reg[7:0]a,b;
reg[3:0] sel;
wire[7:0]out;
wire carryout;
	integer i;
arithmetic uut(
            .a(a),.b(b),.
	                   
            sel(sel),.
	    out(out),.
            carryout(carryout));
     initial begin
	     	$dumpfile("alu.vcd");
	$dumpvars;

    // hold reset state for 100 ns.
      a = 8'h0A;
      b = 8'h0B;
      sel = 4'h0;
      
      for (i=0;i<=15;i=i+1)
      begin
       sel = sel + 8'h01;
       #10;
      end;
      
      a = 8'hF6;
      b = 8'h0A;
      
    end
endmodule
