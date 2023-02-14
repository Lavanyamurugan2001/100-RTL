module updowncountermod(clk, clear, updown, q);

input clk;

input clear;

input updown;

output [3:0] q;

reg [3:0] q;

always@(posedge clear or posedge clk)

begin

if(clear)

q <=4’b0000;

else if(updown)

q <= q+1’b1;

else

q <= q-1’b1;

end

 

endmodule

 
