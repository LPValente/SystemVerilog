`timescale 1ns/1ns

module orgate (a,b,c);
  input logic a, b;
  output logic c;
  
  assign c=(a|b);

endmodule