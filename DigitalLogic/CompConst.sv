`timescale 1ns/1ns

module CompConst(A, E);

    input logic [3:0] A;
    output logic E;

    logic [3:0] B;
    logic [5:0] T;

    assign B = 4'b0101;

    xnorgate xnor1 ( .a(A[3]), .b(B[3]), .c(T[3]));
    xnorgate xnor2 ( .a(A[2]), .b(B[2]), .c(T[2]));
    xnorgate xnor3 ( .a(A[1]), .b(B[1]), .c(T[1]));
    xnorgate xnor4 ( .a(A[0]), .b(B[0]), .c(T[0]));

    andgate and1 ( .a(T[3]), .b(T[2]), .c(T[4]));
    andgate and2 ( .a(T[1]), .b(T[0]), .c(T[5]));
    andgate and3 ( .a(T[4]), .b(T[5]), .c(E));

endmodule
