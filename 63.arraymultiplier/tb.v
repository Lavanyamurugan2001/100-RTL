module arraymultiplier;
wire product;
reg a,x;

  ArrayMultiplier #(.m(6), .n(5)) am (p, a, x);
  initial $monitor("a=%b,x=%b,p=%b", a, x, p);
  initial
    $dumpfile(array.vcd");
              $dumpvars(0,arraymultiplier);

  initial
  begin
    a = 6'b110111;
    x = 5'b11111;
  end
endmodule
