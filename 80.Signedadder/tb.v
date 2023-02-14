module signedaddertb;
reg arb,bet;
wire lot;
signedadder uut (arb,bet,lot);
initial
begin
$dumpfile("dump.vcd");
$dumpvars;
end
initial
begin
  arb=1;
bet=2;
end
endmodule
