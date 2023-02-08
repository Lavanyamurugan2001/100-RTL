module one_8demux (d,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7);
input d,s1,s2,s3;
	output y0,y1,y2,y3,y4,y5,y6,y7;
	assign s1n=~s1;
	assign s2n=~s2;
	assign s3n=~s3;
	assign y0=d&s1n&s2n&s3n;
	assign y1=d&s1n&s2n&s3;	
	assign y2=d&s1n&s2&s3n;
	assign y3=d&s1n&s2&s3;	 
	assign y4=d&s1&s2n&s3n;
	assign y5=d&s1&s2n&s3;
	assign y6=d&s1&s2&s3n;
	assign y7=d&s1&s2&s3;
	
endmodule
