module sipotb;
reg sin,clk;
wire [3:0] po;
sipo uut (.clk(clk),.sin(sin),.po(po));
initial
	begin

	$dumpfile("sipo.vcd");
        $dumpvars(0,sipotb);
	#10 sin=1'b0;
	#10 sin=1'b1;
	#10 sin=1'b1;
	#10 sin =1'b0;
end
always #20 clk=~clk;
endmodule

