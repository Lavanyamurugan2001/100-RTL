module signedadder(arb,bet,lot);
input [1:0] arb,bet;
output reg [2:0] lot;
always @(arb or bet)
begin :LABEL_A   // A sequential block requires a label if local declarations are present
integer arbint,betint;
arbint = -arb;
betint = bet;
lot =arbint+betint;
end endmodule
