module tff (t , clk , reset , q);
input t, clk, reset ; 
output reg q;
always @ ( posedge clk)
if (~reset) begin
 q <= 1'b0;
end else if (d) begin
 q <= !q;
end
endmodule
