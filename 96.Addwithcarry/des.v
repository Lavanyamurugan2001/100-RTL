module addwithcarryincarryout(a,b,carryin,carryout,sum);
  parameter numbits=3;
  input [numbits:1] a,b;
  input carryin;
  output carryout;
  output[numbits:1] sum;
  assign {carryout,sum} =a+b+carryin;
endmodule

