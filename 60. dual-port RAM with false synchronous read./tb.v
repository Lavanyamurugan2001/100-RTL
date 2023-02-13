module tb;
reg clk,we,a,dpra,di;
wire spo,dpo;
raminfr uut(clk,we,a,dpra,di,spo,dpo);
initial
begin
 clk=0;
 #5 we=1'b1;
 #5 a= 5'd5;
 #5 dpra = 5'd5;
 #5 di =4'b1111;
end
endmodule

