`timescale 1ns/1ns

module Ex3 (A,B,Ci,Co,S);
    input logic A, B, Ci;
    output logic Co, S;

    wire [2:0] w;

    LUT3 #(.INIT(8'h96)) L3XOR1 ( .O(S), .I0(A), .I1(B), .I2(Ci) );

    LUT2 #(.INIT(4'h8)) L2AND1 ( .O(w[0]), .I0(Ci), .I1(B) );
    LUT2 #(.INIT(4'h8)) L2AND2 ( .O(w[1]), .I0(A), .I1(B) );
    LUT2 #(.INIT(4'h8)) L2AND3 ( .O(w[2]), .I0(Ci), .I1(A) );
    LUT3 #(.INIT(8'hFE)) L3OR1 ( .O(Co), .I0(w[0]), .I1(w[1]), .I2(w[2]) );

endmodule
