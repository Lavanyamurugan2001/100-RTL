module one_2demux (d,s1,y0,y1);
input d,s1;
	output y0,y1;
	assign s1n=~s1;
	assign y0=s1n&d;
	assign y1=s1&d;
endmodule 
