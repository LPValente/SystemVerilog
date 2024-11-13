module Ex2_tb;

    logic [3:0] A;
    logic Y;

    Ex2 ex2t( .A(A), .Y(Y));

    initial begin
        integer i;

        for (i=0;i<16;i++) begin
            A = i[3:0];
            
            #5;
            $display($time,("   %b || %b "), A, Y);
        end
    end

    /*initial begin
        $monitor($time, ("   %b || %b "), A, Y);
    end*/

    initial begin
        $dumpfile("Ex2.vcd");
        $dumpvars("");
    end

endmodule
