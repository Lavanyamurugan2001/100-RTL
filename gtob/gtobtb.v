module gtobtb;
wire [3:0] binary;
reg [3:0] gray;
gtob uut(.gray(gray),.binary(binary));
initial 
begin
	$dumpfile("gtobwave.vcd");
	$dumpvars;
	#1;gray=4'b0000;
	#1;gray=4'b1111;
	#1;gray=4'b1001;
	#1;gray=4'b1010;
	gray=4'b1000;
end
endmodule
