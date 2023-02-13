module demuxtb;
reg d,s1,s2;
wire y0,y1,y2,y3;
one_4demux uut (.d(d),.s1(s1),.s2(s2),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial
begin
$dumpfile("demux.vcd");
$dumpvars(0,demuxtb);
end
initial
begin
#10
    d=$random;
    s=3'bxxx;
end
endmodule
