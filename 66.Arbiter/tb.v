module arbiter_tb();

reg [4:0] req;
wire [4:0] grt;
reg clk, rst;

arb uut (
  .req(req),
  .grt(grt),
  .clk(clk),
  .rst(rst)
);

initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
  rst = 1;
  #10 rst = 0;
end

initial begin
  req = 0;
  #100 $finish;
end

endmodule
