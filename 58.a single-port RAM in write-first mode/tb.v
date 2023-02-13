module raminfrtb;
reg clk;
reg we;
reg en;
reg addr;
reg di;
wire do;
  raminfr uut(.clk(clk),.we(we),.en(en),.addr(addr),.di(di),.do(do));  
initial
begin
$dumpfile ("ram.vcd");
$dumpvars(0,raminfrtb);
end
initial
begin
#5 we =1'b0;
#5 en=1'b1;
#5 di =4'b1111;
# 6 addr =5'b11111; 
end 
always #5 clk=~clk;
endmodule
