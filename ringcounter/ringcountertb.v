module tb_ring_ctr ;  
  parameter WIDTH = 4;  
    
  reg clk;  
  reg rstn;  
  wire [WIDTH-1:0] out;  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
    
  ring_ctr  u0 (.clk (clk),  
                .rstn (rstn),  
                .out (out));  
    
  always #10 clk = ~clk;  
    
  initial begin  
    {clk, rstn} <= 0;  
  
    $monitor ("T=%0t out=%b", $time, out);  
    repeat (2) @(posedge clk);  
    rstn <= 1;  
    repeat (15) @(posedge clk);  
    $finish;  
  end  
endmodule 
