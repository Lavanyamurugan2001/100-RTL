module ttb;
reg A,B;
wire z;
twobitequality uut (A,B,z);
initial
begin
$dumpfile("2bitequal.vcd");
$dumpvars(0,ttb);
end
initial
begin
# 5 A= 2;
#5  B= 4;
end
endmodule
