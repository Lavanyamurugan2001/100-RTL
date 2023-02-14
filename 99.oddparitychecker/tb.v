`timescale 1ns / 1ps
module odd_checker_tb;
  reg a,b,c,P;
  odd_parity_checker tb(a,b,c,P,out);
  initial begin
  
    $monitor($time,"value of a=%b,b=%b,c=%b,P=%b,",a,b,c,P);
      a=0;b=0;c=0;P=0;
  end
  always #80 a=~a;
  always #40 b=~b;
  always #20 c=~c;
  always #10 P=~P;
  always@(a,b,c,P)
    begin
      #200 $finish;
    end
endmodule
