module fasN_tb #(parameter N = 32);
    logic [N-1:0] A, B;
    logic SEL, CI;
    logic [N-1:0] Y;
    logic CO;

    fasN #(.N(N)) fasNg ( .A(A), .B(B), .SEL(SEL), .CI(CI), .Y(Y), .CO(CO) );

    initial begin
        SEL = 1'b0;
        CI  = 1'b0;
        A   = 32'b10000000000000000000000000000000;
        B   = 32'b10000000000000000000000000000000;

        #5
        A   = 32'b10000000001111111111111111111111;
        B   = 32'b11111111111111111111111111111111;

        #5
        SEL = 1'b1;
        CI  = 1'b0;
        A   = 32'b10000000000000000000000001000000;
        B   = 32'b10000000000000000000000000011000;

        #5
        A   = 32'b01100000001111111111111111111111;
        B   = 32'b00011111111111111111111111111111;
    end

    initial begin
        $monitor($time,
        " \n SEL=%b CI=%b \n\n A =   %b\n B =   %b\n RES = %b\n OVERFLOW=%b\n",
        SEL, CI, A, B, Y, CO);     
    end

    initial begin
        $dumpfile("fasN.vcd");
        $dumpvars("");
    end
endmodule
