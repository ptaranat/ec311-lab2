`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2019 07:59:10 PM
// Design Name: 
// Module Name: tdc
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


module tclkdiv;
wire clk_1khz, clk_1hz;
reg clk, reset;
clock_divider uut(.clk(clk), .reset(reset), .clk_1khz(clk_1khz), .clk_1hz(clk_1hz));

initial begin
    clk = 0;
    reset = 0;
    forever #1 clk = ~clk;
  end

endmodule
