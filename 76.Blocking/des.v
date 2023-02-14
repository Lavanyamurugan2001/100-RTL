module blocking(preset,count);
input [0:2] preset;
output reg [3:0]count;
always @(preset)
 count = preset+1;
endmodule
