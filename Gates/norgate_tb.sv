module norgate_tb;
  logic a, b;
  logic c;
  
  // instantiating the module to map connections
  norgate norg( .a(a), .b(b), .c(c) );
  
  initial
    begin
      a = 1'b0;
      b = 1'b0;

      #5
      a = 1'b1;
      b = 1'b0;

      #5
      a = 1'b0;
      b = 1'b1;

      #5
      a = 1'b1;
      b = 1'b1;
    end
  
    initial
    begin
      $display("                Tempo   Entradas    Saídas");
      $display("                         a    b       b");
      $display("                ====   ==========  =======");
      $monitor($time,"     %b    %b        %b", a, b, c);
    end

    initial begin
        $dumpfile("norgate.vcd");
        $dumpvars("");
    end
  
endmodule
