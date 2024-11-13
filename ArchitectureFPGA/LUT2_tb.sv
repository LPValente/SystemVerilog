module LUT2_tb;
    logic O, I0, I1;

    LUT2 #(.INIT(4'h8)) LUT_INST( .I0(I0), .I1(I1), .O(O));

    initial begin
        I1 = 1'b0;
        I0 = 1'b0;
        #5

        I1 = 1'b0;
        I0 = 1'b1;
        #5

        I1 = 1'b1;
        I0 = 1'b0;
        #5

        I1 = 1'b1;
        I0 = 1'b1;
        #5;
    end

    initial begin
        $display("                Tempo   Entradas LUT    Saídas");
        $display("                         I0    I1       O");
        $display("                ====   =============  =======");
        $monitor($time,"     %b    %b        %b", I0, I1, O);
    end
    
    initial begin
    	$dumpfile("LUT2.vcd");
    	$dumpvars("");
    end

endmodule
