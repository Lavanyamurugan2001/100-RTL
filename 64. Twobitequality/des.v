module twobitequality (A, B, z );
input [1:0]A,B;
output reg z; 
    always @(*)
        if ( A==B)
            z=1;
    else z=0;
endmodule
