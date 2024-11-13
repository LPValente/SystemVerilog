`timescale 1ns/1ns

module Ex1 (A,B,C,D,Y);
    input logic A,B,C,D;
    output logic Y;

    wire [2:0] w;

    LUT2 #(.INIT(4'h7)) L2NAND1( .I0(A), .I1(B), .O(w[0]) );
    LUT2 #(.INIT(4'h7)) L2NAND2( .I0(C), .I1(w[0]), .O(w[1]) );
    LUT2 #(.INIT(4'h7)) L2NAND3( .I0(C), .I1(D), .O(w[2]) );

    LUT2 #(.INIT(4'h1)) L2NOR4( .I0(w[1]), .I1(w[2]), .O(Y) );

endmodule
