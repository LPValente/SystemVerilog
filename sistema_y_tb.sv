module sistema_y_tb;
    logic [3:0] A, B;
    logic E;

    sistema_y sy1 (.A(A), .B(B), .E(E));

    initial begin
        A = 4'b0000;
        B = 4'b0000;

        #5
        A = 4'b0001;
        B = 4'b0001;

        #5
        A = 4'b0010;
        B = 4'b0010;

        #5
        A = 4'b0011;
        B = 4'b0011;

        #5
        A = 4'b0100;
        B = 4'b0100;

        #5
        A = 4'b0101;
        B = 4'b0101;

        #5
        A = 4'b0110;
        B = 4'b0110;

        #5
        A = 4'b0111;
        B = 4'b0100;

        #5
        A = 4'b1000;
        B = 4'b0111;

        #5
        A = 4'b1001;
        B = 4'b0100; 

        #5
        A = 4'b1010;
        B = 4'b0000;

        #5
        A = 4'b1011;
        B = 4'b1110;

        #5
        A = 4'b1100;
        B = 4'b0001;

        #5
        A = 4'b1101;
        B = 4'b1101;

        #5
        A = 4'b1110;
        B = 4'b1110;

        #5
        A = 4'b1111;
        B = 4'b1110;

        #5;
    end

    initial begin
        $display(" A == B?" );
        $monitor($time, "  %b %b %b", A, B, E);
    end

    initial begin
        $dumpfile("sistema_y.vcd");
        $dumpvars("");
    end


endmodule
