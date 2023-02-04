module halfsubtb;
  reg a, b;
  wire c, d;
  
  halfsub uut(a, b, c, d);
  
  initial begin
	  $dumpfile("dump.vcd");
	  $dumpvars(0,tb_top);
    $monitor("At time %0t: a=%b b=%b, difference=%b, borrow=%b",$time, a,b,c,d);
    a = 0; b = 0;
    #1;
    a = 0; b = 1;
    #1;
    a = 1; b = 0;
    #1;
    a = 1; b = 1;
  end
endmodule
