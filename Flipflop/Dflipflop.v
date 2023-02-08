module DFF(d,clk,rst,q);
	input d,clk,rst;
	output reg q;
	always@(posedge clk or posedge rst)
	if(!rstn)
		q<=0;
	else
		q<=d;
endmodule
