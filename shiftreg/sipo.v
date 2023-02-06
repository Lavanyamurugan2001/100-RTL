module sipo(sin,po,clk);
input sin,clk;
output reg [3:0] po;reg [3:0] tmp;
always@(posedge clk)
begin
	tmp=tmp<<1;
	tmp[0]=sin;
	po=tmp;
end
endmodule
