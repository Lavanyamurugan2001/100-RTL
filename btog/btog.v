module b2g_converter #(parameter WIDTH=4) (input [WIDTH-1:0] binary, output [WIDTH-1:0] gray);
  
  genvar i;

  
    for(i=0;i<WIDTH-1;i=i+1) begin
      assign gray[i] = binary[i] ^ binary[i+1];
    end
  
  
  assign gray[WIDTH-1] = binary[WIDTH-1];
endmodule
