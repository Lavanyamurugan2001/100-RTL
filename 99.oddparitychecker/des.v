module odd_parity_checker (a,b,c,P,out);
  input a,b,c,P;
  output out;
  assign out=~((~(a^b))^(~(c^P)));
endmodule
