module tff (t , clk , rstn , q);
input t, clk, rstn ; 
output reg q;
always @ ( posedge clk or negedge rstn)
if (!rstn) begin
 q <= 1'b0;
end else if (d) begin
 q <= !q;
end
endmodule
