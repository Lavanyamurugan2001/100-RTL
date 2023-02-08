module one_16demux (d,s0,s1,s2,s3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);
input d,s0,s1,s2,s3;
	output y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;
	assign s1n=~s1;
	assign s2n=~s2;
	assign s3n=~s3;
	assign s0n=~s0;
	assign y0=d&s0n&s1n&s2n&s3n;
	assign y1=d&s0n&s1n&s2n&s3;	
	assign y2=d&s0n&s1n&s2&s3n;
	assign y3=d&s0n&s1n&s2&s3;	 
	assign y4=d&s0n&s1&s2n&s3n;
	assign y5=d&s0n&s1&s2n&s3;
	assign y6=d&s0n&s1&s2&s3n;
	assign y7=d&s0n&s1&s2&s3; 
	assign y7=d&s0&s1n&s2n&s3n; 
	assign y7=d&s0&s1n&s2n&s3; 
	assign y7=d&s0&s1n&s2&s3n; 
	assign y7=d&s0&s1n&s2&s3; 
	assign y7=d&s0&s1&s2n&s3n; 
	assign y7=d&s0&s1&s2n&s3; 
	assign y7=d&s0&s1&s2&s3; 
	
endmodule 
