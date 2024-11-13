`timescale 1ns/1ns

module fasN #(parameter N=32) (
    input logic [N-1:0] A, B,
    input logic CI, SEL,
    output logic[N-1:0] Y,
    output logic CO
);

    logic [N:0] C;
    assign C[0] = CI;
    
    genvar i;

    generate
        for (i=0; i<32; i++) begin : fas32gen
            fulladdsub fas (
                .A(A[i]),
                .B(B[i]),
                .SEL(SEL),
                .CI(C[i]),
                .Y(Y[i]),
                .CO(C[i+1])
                );
        end
    endgenerate

    assign CO = C[N];

endmodule
