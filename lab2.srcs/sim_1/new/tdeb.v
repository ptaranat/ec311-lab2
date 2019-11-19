`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2019 04:19:59 PM
// Design Name: 
// Module Name: tdeb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tdeb;
  wire pulse;
  reg clk, reset, pb;
  debouncer uut(.clk(clk), .reset(reset), .pb(pb), .pulse(pulse));
  initial begin
    clk = 0;
    reset = 0;
    forever #10 clk = ~clk;
  end
  initial begin
  pb = 0;
  #10;
  pb =1;
  #20;
  pb = 0;
  #10;
  pb = 1;
  #30; 
  pb = 0;
  #10;
  pb = 1;
  #40;
  pb = 0;
  #10;
  pb = 1;
  #30; 
  pb = 0;
  #10;
  pb = 1; 
  #400; 
  pb = 0;
  #10;
  pb = 1;
  #20;
  pb = 0;
  #10;
  pb = 1;
  #30; 
  pb = 0;
  #10;
  pb = 1;
  #40;
  pb = 0; 
 end
endmodule
