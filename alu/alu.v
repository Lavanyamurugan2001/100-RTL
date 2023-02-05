module arithmetic(a,b,sel,out,carryout);
input [7:0]a,b;
input [3:0] sel;
output [7:0]out;
output carryout;
reg [7:0]result;
wire[8:0] tmp;
assign out=result;
assign tmp ={1'b0,a}+{1'b0,b};
assign carryout=tmp[8];
always @(*)
begin
	case(sel)
		4'b0000:
		result=a+b;
		4'b0001:
		result=a-b;
		4'b0010:
		result=a*b;
		4'b0011:
		result=a/b;
		4'b0100:
		result=a<<1;
		4'b0101:
		result=a>>1;
		4'b0110:
		result=a&b;
		4'b0111:
		result=a|b;
	default : result= a+b;
endcase
end
endmodule
