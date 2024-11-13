module Ex3_tb;
    logic A, B, Ci, Co, S;

    Ex3 ex3t ( .A(A), .B(B), .Ci(Ci), .Co(Co), .S(S));

    initial begin
        for (int i=0; i<8; ++i) begin
            {A, B, Ci} = i[2:0];
            
            #5;
            $display($time, ("  %b %b %b || %b %b "), A,B,Ci,Co,S);
        end
        #5;
    end

    /*initial begin
        $monitor(("%0d  %b %b %b || %b %b "), $time, A,B,Ci,Co,S);
    end*/

    initial begin
        $dumpfile("Ex3.vcd");
        $dumpvars("");
    end

endmodule
