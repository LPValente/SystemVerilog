module qfas_tb;
    logic [3:0] A, B;
    logic SEL, CI;
    logic [3:0] Y;
    logic CO;

    qfas qfasg ( .A(A), .B(B), .SEL(SEL), .CI(CI), .Y(Y), .CO(CO));

    initial begin
        SEL = 1'b0;
        CI = 1'b0;
        A = 4'b0011;
        B = 4'b0011;

        #5
        A = 4'b0101;
        B = 4'b1010;

        #5
        A = 4'b0100;
        B = 4'b0011;

        #5
        A = 4'b1010;
        B = 4'b1011;

        #5
        SEL = 1'b1;
        CI = 1'b0;
        A = 4'b0011;
        B = 4'b0011;

        #5
        A = 4'b0101;
        B = 4'b1010;

        #5
        A = 4'b0100;
        B = 4'b0011;

        #5
        A = 4'b1010;
        B = 4'b1011;
    end

    initial begin
        $monitor($time, " SEL=%b CI=%b A=%b B=%b | OUT= %b%b", SEL, CI, A, B, CO, Y);
    end

    initial begin
        $dumpfile("qfas.vcd");
        $dumpvars("");
    end
endmodule
