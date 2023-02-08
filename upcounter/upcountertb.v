module tb;
	parameter N=12;
	parameter WIDTH =4;
	reg clk,rst;
	wire [WIDTH -1:0]out;
	mod12upcounter uut (.clk(clk),.rst(rst),.out(out));
	always #10 clk=~clk;
		initial begin
			$dumpfile("dump.vcd");
			$dumpvars(0,tb);
			
				{clk,rst}<=0;
				repeat(2)@(posedge clk);
				rst<=1;
				repeat(10)@(posedge clk);
				$finish;
				end
				endmodule
