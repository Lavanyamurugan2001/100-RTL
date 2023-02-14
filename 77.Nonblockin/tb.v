module nonblocktb;
reg reg_a,mask;
wire reg_b;
nonblock uut(reg_a,mask,reg_b);
initial
begin
$dumpfile("nonblock.vcd");
$dumpvars;
end
initial
begin
  reg_a=1'b1;
  mask =1'b0;
end
endmodule
