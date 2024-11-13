module Ex1_tb;
    logic A,B,C,D;
    logic Y;

    Ex1 ex1t( .A(A), .B(B), .C(C), .D(D), .Y(Y));

    initial begin
        integer i;

        for (i=0;i<16;i++) begin
            {A, B, C, D} = i[3:0];
            #5;

            $display($time, ("    | %b  %b  %b  %b || %b"), A, B, C, D, Y);
        end
    end

    /*initial begin
        $monitor($time, ("    | %b  %b  %b  %b || %b"), A, B, C, D, Y);
    end*/

    initial begin
        $dumpfile("Ex1.vcd");
        $dumpvars("");
    end

endmodule
