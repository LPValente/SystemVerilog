`timescale 1ns/1ns

module fa (A, B, CI, S, CO);
    input logic A, B, CI;
    output logic S, CO;

    logic T;

    assign T = A^B;

    assign S = T^CI;
    assign CO = (A&B)|(CI&T);

endmodule
