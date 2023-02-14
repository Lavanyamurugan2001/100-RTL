module pipotb;
reg clk,clear;
reg pi;
wire po;
pipo uut(clk,clear,pi,po);
initial
begin
$dumpfile("pipo.vcd");
$dumpvars(0,pipotb);
end initial
begin
clk = 0;
clear = 0;
pi = 0;
#5 clear=1;
#5 clear=0;
#10 pi=1001;
#10 pi=1010;
#10 pi=1111;
#10 pi=1110;
#10 pi=1001;
#10 pi=0000;
end
always #5 clk = ~clk;
endmodule
  
