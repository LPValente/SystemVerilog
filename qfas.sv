`timescale 1ns/1ns

module qfas (
    input logic [3:0] A, B,
    input logic SEL, CI,
    output logic [3:0] Y,
    output logic CO
);

    logic [2:0] W;

    fulladdsub  Bit0 (  .A(A[0]), .B(B[0]), .SEL(SEL), .CI(CI),   .Y(Y[0]), .CO(W[0]) );
    fulladdsub  Bit1 (  .A(A[1]), .B(B[1]), .SEL(SEL), .CI(W[0]), .Y(Y[1]), .CO(W[1]) );
    fulladdsub  Bit2 (  .A(A[2]), .B(B[2]), .SEL(SEL), .CI(W[1]), .Y(Y[2]), .CO(W[2]) );
    fulladdsub  Bit3 (  .A(A[3]), .B(B[3]), .SEL(SEL), .CI(W[2]), .Y(Y[3]), .CO(CO)   );

endmodule
