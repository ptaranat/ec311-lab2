`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2019 04:45:38 PM
// Design Name: 
// Module Name: tctr
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


module tctr;
  reg clk, reset, pb;
  wire [15:0] count;
  counter16 uut(.clk(clk), .reset(reset), .pb(pb), .count(count));
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end
  initial begin
    reset = 1;
    #20 reset = 0;
  end
  initial begin
    pb = 1;
  end
endmodule
