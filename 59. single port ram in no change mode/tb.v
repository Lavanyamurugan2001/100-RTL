module ramnochnagetb;
reg clk;
reg we;
reg en;
reg addr;
reg di;
wire do;
raminfr uut(clk,en,we,addr,di,do);
initial
begin
$dumpfile("ram.vcd");
$dumpvars(0,ramnochnagetb);
end
initial
begin
 clk=0;
#5 en=1'b1;
#5 we = 1'b0;
#5 addr= 5'b11111;
# 5 di = 4'b1111;
end
always #5 clk=~clk;
endmodule
