module fullsubtb;
reg a,b,bin;
wire d,bout;
fullsub lav(a,b,bin,d,bout);
initial
begin
	$dumpfile("dump.vcd");
	$dumpvars(0,fullsubtb);
	#1 a=0;b=0;bin=0;
        #1 a=0;b=0;bin=1;
       	#1 a=0;b=1;bin=0;
	#1 a=0;b=1;bin=1;
	#1 a=1;b=0;bin=0;
	#1 a=1;b=0;bin=1;
	#1 a=1;b=1;bin=0;
	#1 a=1;b=1;bin=1;
end
endmodule
