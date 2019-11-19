`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2019 04:48:46 PM
// Design Name: 
// Module Name: top
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


module top(
  input clk, input reset, input pb, output [7:0] count
  );
  wire w1;
  debouncer deb(.clk(clk), .reset(reset), .pb(pb), .pulse(w1));
  counter   ctr(.clk(clk), .reset(reset),  .pb(w1), .count(count));
endmodule
