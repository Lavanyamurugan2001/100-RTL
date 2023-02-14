module target(clk,reg_a,reg_b,mask);
input clk;
input [3:0] reg_a,reg_b;
output reg mask;
always @(posedge clk)
 mask <= reg_a& reg_b;
endmodule
