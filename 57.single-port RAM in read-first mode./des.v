module raminfr (clk, en, we, addr, di, do);
 input        clk;
 input        we;
 input        en;
 input  [4:0] addr;
 input  [3:0] di;
 output [3:0] do;
 reg    [3:0] RAM [31:0];
 reg    [3:0] do;
 always @(posedge clk)
 begin
    if (en) begin
       if (we)
   RAM[addr] <= di;

              do <= RAM[addr];
    end
 end
endmodule
