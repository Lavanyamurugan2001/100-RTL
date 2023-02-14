module unsignedaddertb;
reg arb,bet;
wire lot;
unsignedadder uut (arb,bet,lot);
initial
 begin
   $dumpfile(" unsignedadder.vcd");
 $dumpvars;
end
initial
begin
 arb= 1;
bet =2;
end
endmodule
