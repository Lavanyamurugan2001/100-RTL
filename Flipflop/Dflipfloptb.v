module dfftb;
reg d,clk,syn_rstn;
wire q;
dff dut(.d(d),.clk(clk),.syn_rstn(syn_rstn),.q(q));
initial
begin
	clk=0;
	forever clk=~clk;
end
initial begin
	$dumpfile("dump.vcd");
	$dumpvars(0,dfftb);
	syn_rstn=1;
	d<=0;
	#50;
	syn_rstn =0;
	d<=1;
	#50;
end
endmodule
