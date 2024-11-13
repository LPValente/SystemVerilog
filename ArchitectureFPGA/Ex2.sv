`timescale 1ns/1ns

module Ex2 (A, Y);
    input logic [3:0] A;
    output logic Y;

    wire [4:0] w;

    LUT3 #(.INIT(8'h01)) L3NOR1 ( .O(w[0]), .I0(A[3]), .I1(A[2]), .I2(A[1]));

    LUT3 #(.INIT(8'h80)) L3AND1 ( .O(w[1]), .I0(A[3]), .I1(A[2]), .I2(A[0]));

    LUT3 #(.INIT(8'h80)) L3AND2 ( .O(w[2]), .I0(A[3]), .I1(A[2]), .I2(A[1]));
    
    LUT3 #(.INIT(8'h01)) L3NOR2 ( .O(w[3]), .I0(A[3]), .I1(A[2]), .I2(A[0]));

    LUT3 #(.INIT(8'hFE)) L3OR1 ( .O(w[4]), .I0(w[2]), .I1(w[1]), .I2(w[0]));
    LUT3 #(.INIT(8'hFE)) L3OR2 ( .O(Y), .I0(w[3]), .I1(w[3]), .I2(w[4]));

endmodule
