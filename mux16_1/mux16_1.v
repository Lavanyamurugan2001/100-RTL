module sixteen_1(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,s0,s1,s2,s3,y);
	input wire i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,s0,s1,s2,s3;
	output reg y;
	always@(s0&s1&s2&s3&i0&i1&i2&i3&i4&i5&i6&i7&i8&i9&i10&i11&i12&i13&i14&i15)
		begin
			case(s0&s1&s2&s3)
				4'b0000 : y=i0;
				4'b0001 : y=i1;
				4'b0010 : y=i2;
				4'b0011 : y=i3;
				4'b0100 : y=i4;
				4'b0101 : y=i5;
				4'b0110 : y=i6;
				4'b0111 : y=i7;
				4'b1000 : y=i8;
				4'b1001 : y=i9;
				4'b1010 : y=i10;
				4'b1011 : y=i11;
				4'b1100 : y=i12;
				4'b1101 : y=i13;
				4'b1110 : y=i14;
				
				default :y=i15;
			endcase
		end
	endmodule
