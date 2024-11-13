`timescale 1ns/1ns

module conta_votos (
    V,
    R
    );
    
    input logic [2:0] V;
    output logic [3:0] R;

    logic [8:0] T;
    logic [2:0] I;

    invgate inv1 ( .a(V[2]), .b(I[2]));
    invgate inv2 ( .a(V[1]), .b(I[1]));
    invgate inv3 ( .a(V[0]), .b(I[0]));

    //R[3]
    andgate and1 ( .A(V[2]), .B(V[1]), .C(T[0]));
    andgate and2 ( .A(T[0]), .B(V[0]), .C(R[3]));

    //R[2]
    andgate and3 ( .A(I[2]), .B(V[1]), .C(T[1]));
    andgate and4 ( .A(T[1]), .B(V[0]), .C(T[2]));

    xorgate xor1( .a(V[1]), .b(V[0]), .c(T[3]));
    andgate and5 ( .A(V[2]), .B(T[3]), .C(T[4]));

    orgate or1 ( .a(T[2]), .b(T[4]), .c(R[2]));

    //R[1]
    andgate and6 ( .A(V[2]), .B(I[1]), .C(T[5]));
    andgate and7 ( .A(T[5]), .B(I[0]), .C(T[6]));

    andgate and8 ( .A(I[2]), .B(T[3]), .C(T[7]));

    orgate or2 ( .a(T[6]), .b(T[7]), .c(R[1]));

    //R[0]
    orgate or3 ( .a(V[2]), .b(V[1]), .c(T[8]));
    norgate nor2 ( .a(T[8]), .b(V[0]), .c(R[0]));

endmodule
