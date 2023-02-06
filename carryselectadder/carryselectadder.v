//A carry select adder is an arithmetic combinational logic circuit which adds two N-bit binary numbers and outputs their N-bit binary sum and a 1-bit carry. 
//This is no different from a ripple carry adder in function, but in design the carry select adder does not propagate the carry 
//through as many full adders as the ripple carry adder does.
//This means that the time to add two numbers should be shorter. 
module full_adder( A, B, Cin, S, Cout);
 input wire A, B, Cin;
 output reg S, Cout;
 always @(A or B or Cin)
  begin
   S = A ^ B ^ Cin;
   Cout = A&B | B&Cin | Cin&A ;
  end
endmodule
module mux(A,B,S,Y);
input A,B,S;
output reg Y;
always@(A,B,S)
begin
Y=~S&A| S&B;
end
endmodule
module carry_select (x,y,carry,s,cout);
input [3:0]x,y;
input carry;
output [3:0]s;
output cout;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;
full_adder fao (x[0],y[0],1'b0,w1,w2);
full_adder fa1 (x[1],y[1],w2,w3,w4);
full_adder fa2 (x[2],y[2],w4,w5,w6);
full_adder fa3 (x[3],y[3],w6,w7,w8);
full_adder fa4 (x[0],y[0],1'b1,w9,w10);
full_adder fa5 (x[1],y[1],w10,w11,w12);
full_adder fa6 (x[2],y[2],w12,w13,w14);
full_adder fa7 (x[3],y[3],w14,w15,w16);
mux mu0(w1,w9,carry,s[0]);
mux mu1(w3,w11,carry,s[1]);
mux mu2(w5,w13,carry,s[2]);
mux mu3(w7,w15,carry,s[3]);
mux mu4(w8,w16,carry,cout);
endmodule
