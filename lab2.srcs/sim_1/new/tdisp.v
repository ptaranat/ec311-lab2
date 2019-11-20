`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2019 05:04:47 PM
// Design Name: 
// Module Name: tdisp
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


module tdisp;
  reg clk;
  reg [15:0] count;
  reg reset;
  wire [3:0] digit_select;
  wire [3:0] seven;
  display_control uut(.clk(clk), .count(count), .reset(reset), .digit_select(digit_select), .seven(seven));
  initial begin
    clk = 0;
    reset = 1;
    #5 reset = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    count = 0;
    forever #10 count = count + 1;
  end
endmodule
