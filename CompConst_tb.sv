module CompConst_tb;
    logic [3:0] A;
    logic E;

    CompConst cc1 (.A(A), .E(E));

    initial begin
        A = 4'b0000;

        #5
        A = 4'b0001;

        #5
        A = 4'b0010;

        #5
        A = 4'b0011;

        #5
        A = 4'b0100;

        #5
        A = 4'b0101;

        #5
        A = 4'b0110;

        #5
        A = 4'b0111;

        #5
        A = 4'b1000;

        #5
        A = 4'b1001;

        #5
        A = 4'b1010;

        #5
        A = 4'b1011;

        #5
        A = 4'b1100;

        #5
        A = 4'b1101;

        #5
        A = 4'b1110;

        #5
        A = 4'b1111;

        #5;
    end

    initial begin
        $display(" A == B? B == 4'b0101" );
        $monitor($time, "  %b 0101 %b", A, E);
    end

    initial begin
        $dumpfile("CompConst.vcd");
        $dumpvars("");
    end


endmodule
