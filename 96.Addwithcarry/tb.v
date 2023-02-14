module tb;
  reg a,b,carryin;
  wire carryout,sum;
  addwithcarryincarryout(a,b,carryin,carryout,sum);
  initial
    begin
       a=1;
       b=1'b0;
       carryin= 2'b11;
    end
endmodule
