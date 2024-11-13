module fa_tb;
    logic A, B, CI;
    logic S, CO;

    fa fag( .A(A), .B(B), .CI(CI), .S(S), .CO(CO));

    initial begin
        A = 1'b0;
        B = 1'b0;
        CI = 1'b0;

        #5
        A = 1'b1;
        B = 1'b0;
        CI = 1'b0;

        #5
        A = 1'b0;
        B = 1'b1;
        CI = 1'b0;

        #5
        A = 1'b1;
        B = 1'b1;
        CI = 1'b0;

        #5
        A = 1'b0;
        B = 1'b0;
        CI = 1'b1;

        #5
        A = 1'b1;
        B = 1'b0;
        CI = 1'b1;

        #5
        A = 1'b0;
        B = 1'b1;
        CI = 1'b1;

        #5
        A = 1'b1;
        B = 1'b1;
        CI = 1'b1;

        #5;
    end

    initial begin
        $display("                  Tempo    Entradas    Saídas");
        $display("                            A B CI      S Co ");
        $display("                  =====    ========    ======");
        $monitor($time, "        %b %b %b         %b %b     ", A, B, CI, S, CO);
    end

    initial begin
        $dumpfile("fa.vcd");
        $dumpvars("");
    end

endmodule
