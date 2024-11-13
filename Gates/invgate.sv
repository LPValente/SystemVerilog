`timescale 1ns/1ns

module invgate (a,b);
  input logic a;
  output logic b;
  
  assign b=!a;

endmodule
