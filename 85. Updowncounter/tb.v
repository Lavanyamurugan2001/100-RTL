module updowncountert_b;

reg clk;

reg clear;

reg updown;

wire [3:0] q;

updowncountermod uut (.clk(clk),.clear(clear), .updown(updown), .q(q)   );

initial begin

clk = 0;

clear = 0;

updown = 0;

 

#5 clear=1’b1;

#5 clear=1’b0;

#100 updown=1’b1;

end

always #5 clk=~clk;

initial #150 $stop;

endmodule
