module boothmultb;
wire prod;
wire busy;
reg mc,mp;
reg clk,start;
multiplier uut (prod,busy,mc,mp,clk,start);
initial
begin
$dumpfile("mul.vcd");
$dumpvars(0,boothmultb);
end
initial
begin
clk=0;
 #5 mc=14; mp=15;start=1;
 #8 mc=7; mp=7;start=1;
end
always #5 clk=~clk;
endmodule

