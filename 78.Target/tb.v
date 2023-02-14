module targettb;
reg clk;
reg reg_a,reg_b;
wire mask;
target uut (clk,reg_a,reg_b,mask);
initial
begin
$dumpfile ("target.vcd");
$dumpvars;
end
initial begin
//always @(posedge clk)
reg_a =1;
reg_b =1;
end
always #5 clk =~clk;
endmodule
