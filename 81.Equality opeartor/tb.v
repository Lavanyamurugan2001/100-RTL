module notequaltb;
reg a,b;
wire z;
notequals uut (a,b,z);
initial 
begin
 a= 1;
b = 2;
end
endmodule
