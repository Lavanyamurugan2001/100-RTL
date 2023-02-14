module vectortb;
reg a,b,c;
wire rfile;
vectoroperations uut (a,b,c,rfile);
initial
begin
 a= 1;
 b= 2;
 c= 1;
end
endmodule
