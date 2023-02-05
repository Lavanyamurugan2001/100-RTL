module tff (d , clk , reset , q);
input d, clk, reset ; 
output reg q;
always @ ( posedge clk)
if (~reset) begin
 q <= 1'b0;
end else if (d) begin
 q <= !q;
end
endmodule
