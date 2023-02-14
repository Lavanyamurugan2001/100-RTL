module notequals(a,b,z);
input [3:0] a,b;
output reg z;
always @( a or b)
begin: DF_LABEL
 integer int_a,int_b;
  int_a=a;
  int_b=b;
  z=!int_a;
 z =int_b;
end
endmodule
