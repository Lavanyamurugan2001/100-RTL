module mod12upcounter(out,rst,clk);
output [3:0]out;
input rst,clk;
reg [3:0]out;
always @(posedge clk)
begin
if(rst|out==4'b1011)
out<=4'b0000;
else
out<=out+1;
end
endmodule
