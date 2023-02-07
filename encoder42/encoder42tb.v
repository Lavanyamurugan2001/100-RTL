module encodertb;
	reg Y;
	wire A;
	priority_encoderbehave  dut(.A(A),.Y(Y));
	initial
		begin
		#2 Y=4'b0001;
    	#2 Y=4'b001x;
    	#2 Y=4'b01xx;
    	#2 Y=4'b1xxx;
		end
		endmodule
