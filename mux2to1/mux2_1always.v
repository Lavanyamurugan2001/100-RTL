module mux21 (a,b,sel,out);
input wire a,b,sel;
	output reg out;
	always@(a or b or sel)
		
		
		if(sel)
			out=a;
		else
			out=b;
	
endmodule
