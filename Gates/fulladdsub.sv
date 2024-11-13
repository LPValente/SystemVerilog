`timescale 1ns/1ns

module fulladdsub (
    input logic A, B, SEL, CI,
    output logic Y, CO
);

    assign Y = A^B^CI;
    assign CO = (CI&B) | (B|CI)&(SEL^A);
endmodule
