module unsignedadder (arb,bet,lot);
input [2:0] arb,bet;
output [2:0] lot;
assign lot =arb+bet;
endmodule
