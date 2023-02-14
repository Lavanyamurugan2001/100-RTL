module comparator(a,b,x,y,gt);
  input[3:0] a,b;
  output reg x,y,gt;
  always@(a,b)
  begin
    if(a == b)
      begin
       x = 1'b1;
        y = 1'b0;
        gt = 1'b0;
      end
    else if(a>b)
      begin
        x = 1'b0;
        y = 1'b0;
        gt = 1'b1;
    end
  else
    begin
       x=1'b0;
       y=1'b1;
       gt=1'b0;
    end
  end
endmodule
