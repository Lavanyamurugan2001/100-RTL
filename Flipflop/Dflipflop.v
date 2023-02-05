module DFF(d,clk,rstn,q);
	input d,clk,rstn;
	output reg q;
	always@(posedge clk or posedge rstn)
	if(!rstn)
		q<=0;
	else
		q<=d;
endmodule
