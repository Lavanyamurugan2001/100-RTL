module ripplecountertb;
wire [3:0] Q;
reg clock,clear;
counter uut(.Q(Q),.clock(clock),.clear(clear));
initial
begin
$dumpfile("counter.vcd");
$dumpvars(0,ripplecountertb);
end
initial
begin
 clock=0;
 clear=0;
 end
initial
begin
 #5 clear =1'b1;
end
always #5 clock =~clock;
endmodule
