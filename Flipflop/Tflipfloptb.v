module tfftb;
reg d, clk, reset ; 
wire q;
tff uut (.d(d), .clk(clk), .reset(reset) ,.q(q));
initial
begin
	$dumpfile("dump.vcd");
	$dumpvars(0,tfftb);
clk=0;
d = 0;
reset = 1;
#5 reset = 0;
#30 reset = 1;
$monitor($time, "\tclk=%b\t ,reset=%b\t, d=%b\t, q=%b",clk,reset,d,q);
#100 $finish;
end
always #5 clk = ~clk;
always #30 d = ~d;
	endmodule
