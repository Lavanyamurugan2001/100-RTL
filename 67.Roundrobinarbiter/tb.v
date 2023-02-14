module roundrobin_arbiter_tb();
  reg clk;
  reg rst;
  reg [3:0] req;
  wire [3:0] grant;
  
  //Instantiate Design Under Test
  
  round_robin uut(.clk(clk), .rst(rst), .req(req), .grant(grant));
  
  //Generate a 10 ns  Time Period Clock 
  always #5 clk = ~clk;
  
  //Drive the DUT or Generate stimuli for the DUT
 
  initial begin
    clk = 0;
    rst = 1;
    req = 4'b0;
    
    #5 rst = 1;
    
    @(posedge clk) req = 4'b1000;    
    
    @(posedge clk) req = 4'b1010;
    
    @(posedge clk) req = 4'b0010;
    
    @(posedge clk) req = 4'b0110;
    
    @(posedge clk) req = 4'b1110;
    
    @(posedge clk) req = 4'b1111;
    
    @(posedge clk) req = 4'b0100;
    
    @(posedge clk) req = 4'b0010;
    
    #5 rst = 0;
    
    #100 $finish;
  end
  endmodule 
