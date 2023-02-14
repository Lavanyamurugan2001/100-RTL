module LFSRtb;
wire op;
reg clk,rst;
LFSR uut (clk,rst,op);
initial
begin
$dumpfile("LFSR.vcd");
$dumpvars(0,LFSRtb);
end
initial
begin
 rst =0;#5 rst =1'b1;
 clk=0;
end
always #5 clk=~clk;
endmodule
