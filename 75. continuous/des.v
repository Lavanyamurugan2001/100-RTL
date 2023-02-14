module continuoud(statein,stateout);
input statein;
output stateout;
assign stateout = ~statein;
endmodule
