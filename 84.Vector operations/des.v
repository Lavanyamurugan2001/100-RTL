module vectoroperations(a,b,c,rfile);
input [3:0] a,b,c;
output [3:0] rfile;
assign rfile =(a&b)|c;
endmodule
