module conttb;
reg statein;
wire stateout;
continuous uut (statein,stateout);
initial
begin
$dumpfile("continuous.vcd");
$dumpvars;
end
initial
begin
statein = 1'bx;
end
endmodule
