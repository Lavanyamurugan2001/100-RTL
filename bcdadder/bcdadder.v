module fulladder(a,b,c,s,co);
input a,b,c;
output s,co;
assign s=a^b^c;
assign co=(a&b)|(b&c)|(c&a);
endmodule


module four_bit_adder(x,y,cin,sum,cout);
input [3:0] x,y;
input cin;
output [3:0] sum;
output cout;
output[3:0] carryout;
wire c0,c1,c2;

fulladder fa0(.a(x[0]),.b(y[0]),.c(cin),.s(sum[0]),.co(c0));
fulladder fa1(.a(x[1]),.b(y[1]),.c(c0),.s(sum[1]),.co(c1));
fulladder fa2(.a(x[2]),.b(y[2]),.c(c1),.s(sum[2]),.co(c2));
fulladder fa3(.a(x[3]),.b(y[3]),.c(c2),.s(sum[3]),.co(cout));
endmodule

module bcdadder(A,B,c,S,Cout);
input [3:0]A,B;
output S;
input c;
output s1,s2,s3;
output Cout;
wire [3:0]sum1_w;
wire a1,a2;
	wire cout1_w;
	wire combo_out;
	assign a1= sum1_w[3]&sum1_w[2];
	assign a2= sum1_w[3]&sum1_w[1];
	assign combo_out=a1|a2|cout1_w;

four_bit_adder fa1(.x(A),.y(B),.cin(c),.sum(sum1_w),.cout(cout1_w));
four_bit_adder fa2(.x(sum1_w),.y({0,combo_out ,combo_out , 0}),.cin(cout1_w),.sum(S),.cout(Cout));
endmodule
