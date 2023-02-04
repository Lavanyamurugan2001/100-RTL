module encoder83tb;
	reg Y;
	wire A;
	priority_encoderbehave  dut(.A(A),.Y(Y));
	initial
		begin
			$dumpfile("dump.vcd");
			$dumpvars(0,encoder83tb);
			#2 Y=00000000;	
			#2 Y=00000001;
			#2 Y=00000010;
			#2 Y=00000011;
			#2 Y=00000100;
			#2 Y=00000101;
			#2 Y=00000110;
			#2 Y=00000111;	
		end
		initial #2$finish;
endmodule
