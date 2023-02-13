module d_latch_gate(clk,in,out);
input clk,in;
output reg out;
  always@(posedge clk)
  begin
    out<= in ^ out;
  end
endmodule
