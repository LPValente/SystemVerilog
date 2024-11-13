module fulladdsub_tb;
    logic A, B, SEL, CI;
    logic Y, CO;

    fulladdsub fasg( .A(A), .B(B), .SEL(SEL), .CI(CI), .Y(Y), .CO(CO));

    initial begin
        SEL = 1'b0;
        CI = 1'b0;
        A = 1'b0;
        B = 1'b0;

        #5
        A = 1'b0;
        B = 1'b1;

        #5
        A = 1'b1;
        B = 1'b0;

        #5
        A = 1'b1;
        B = 1'b1;

        #5
        CI = 1'b1;
        A = 1'b0;
        B = 1'b0;

        #5
        A = 1'b0;
        B = 1'b1;

        #5
        A = 1'b1;
        B = 1'b0;

        #5
        A = 1'b1;
        B = 1'b1;

        #5
        SEL = 1'b1;
        CI = 1'b0;
        A = 1'b0;
        B = 1'b0;

        #5
        A = 1'b0;
        B = 1'b1;

        #5
        A = 1'b1;
        B = 1'b0;

        #5
        A = 1'b1;
        B = 1'b1;

        #5
        CI = 1'b1;
        A = 1'b0;
        B = 1'b0;

        #5
        A = 1'b0;
        B = 1'b1;

        #5
        A = 1'b1;
        B = 1'b0;

        #5
        A = 1'b1;
        B = 1'b1;

    end

    initial begin
        $monitor($time, "%b  %b  %b  %b | %b  %b", SEL, CI, A, B, Y, CO);
    end

    initial begin
        $dumpfile("fulladdsub.vcd");
        $dumpvars("");
    end

endmodule
