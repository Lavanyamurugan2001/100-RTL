module tb;
reg clk,we,en,addr,di;
wire dout;
raminfr uut(.clk(clk),.en(en),.we(we),.addr(addr),.di(di),do(do));
initial
begin
$dumpfile("tb.vcd");
$dumpvars(0,tb);
end
initial
begin
   #5 we=1'b1;
   #6 en=1'b0;
   #10 di =1'b1;
   #5 addr = 4'b1111;
end
endmodule
