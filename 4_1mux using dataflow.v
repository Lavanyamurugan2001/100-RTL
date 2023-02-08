module four_1mux(I0,I1,I2,I3,S0,S1,Y);
input I0,I1,I2,I3,S0,S1;
output Y;
assign Y=S1?(S0?I0:I1):(S0?I2:I3);
endmodule
