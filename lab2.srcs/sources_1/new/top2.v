`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2019 06:59:14 PM
// Design Name: 
// Module Name: top2
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


module top2(
  input clk, reset, pb, mode_select, output [3:0] digit_select, output [6:0] seven
  );
  wire fastclk;
  wire slowclk;
  wire pulse;
  wire [15:0] count;
  wire [3:0] bin_seven;
  reg mode;
  
  clock_divider          cd(.clk(clk), .reset(reset), .clk_1khz(fastclk), .clk_1hz(slowclk));
  debouncer              db(.clk(clk), .reset(reset), .pb(pb), .pulse(pulse));
  counter16             ctr(.clk(clk), .reset(reset), .pb(mode), .count(count));
  display_control        dc(.clk(fastclk), .count(count), .reset(reset), .digit_select(digit_select), .seven(bin_seven));
  seven_segment_decoder ssd(.in(bin_seven), .out(seven));
  
  always @(posedge clk) begin
    if (mode_select)
      mode <= slowclk;
    else
      mode <= pulse;
  end
endmodule
