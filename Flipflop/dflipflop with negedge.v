module DFF(d,clk,rstn,q);
	input d,clk,rst;
	output reg q;
  always@(posedge clk or negedge rstn)
	if(!rstn)
		q<=0;
	else
		q<=d;
endmodule
