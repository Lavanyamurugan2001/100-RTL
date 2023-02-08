module one_4demux (d,s1,s2,y0,y1,y2,y3);
input d,s1,s2;
	output y0,y1,y2,y3;
	assign s1n=~s1;
	assign s2n=~s2;
	assign y0=s1n&s2n&d;
	assign y1=s1n&s2&d;	
	assign y2=s1&s2n&d;
	assign y3=s1&s2&d;
endmodule 
