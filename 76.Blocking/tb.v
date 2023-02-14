module proceduraltb;
reg preset;
wire count;
blocking uut (preset,count);
initial
begin
$dumpfile("pro.vcd");
$dumpvars;
end
initial
begin
preset =1 ;
end
endmodule
