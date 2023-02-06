module btogtb;
wire [3:0] gray;
reg [3:0] binary;
b2g_converter uut(.gray(gray),.binary(binary));
initial 
begin
	$dumpfile("btogwave.vcd");
	$dumpvars(0,btogtb);
	#1;binary=4'b0000;
	#1;binary=4'b1111;
	#1;binary=4'b1001;
	#1;binary=4'b1010;
	#1;binary=4'b1000;
end
endmodule


