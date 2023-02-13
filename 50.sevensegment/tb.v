module sevensegmenttb;
reg [3:0] BinaryNum;
	integer i;
	wire [6:0] Segment;
	sevensegment uut (
		.BinaryNum(BinaryNum), 
		.Segment(Segment)
	);
    initial
		begin
		for(i=0;i<10;i=i+1)
		begin
		BinaryNum=i;
		#10;
		end
		end
		endmodule
