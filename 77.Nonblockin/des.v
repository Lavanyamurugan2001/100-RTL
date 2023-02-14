module nonblock(reg_a,mask,reg_b);
input [3:0] reg_a,mask;
output reg reg_b;
always @(reg_a or mask)
reg_b <= reg_a&mask;
endmodule
