module wptr_full(wfull,winc,wclk,wrst_n,afull_n,wptr);
parameter addrsize=4;
output wfull;
output reg [addrsize-1:0] wptr,wbin;
input wclk,winc,wrst_n,afull_n;
wire [addrsize-1:0] wgnext,wbnext;always@(posedge rclk or negedge rrstn_n)
	if(!wstn_n)
	begin
		wbin<=0;
		wptr<=0;
	end
	else
	begin
		wbin<=rbnext;
		wptr<=rgnext;
	end
	assign wbnext=!wfull?wbin+winc:wbin;
	assign wgnext=(wbnext>>1)^wbnext;
	always @(posedge wclk or negedge afull_n)
		if (!wrst_n){wfull,wfull2}<=2'b00;
		else if(!afull_n){wfull,wfull2}<=2'b11;
		else
			{wfull,wfull2}<={wfull2,~afull_n};
		endmodule

