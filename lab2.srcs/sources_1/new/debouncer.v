`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 05:02:21 PM
// Design Name: 
// Module Name: debouncer
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


module debouncer #(
  parameter COUNT_MAX = 9600) (
  input clk, input, reset, input pb, output reg pulse
  );
  reg [31:0] count;

  always @(posedge clk) begin
    if (reset)
      count <= 0;
    else if (button)
      count <= count + 1;
    else
      count <= 0;
  end

  always @(posedge clk) begin
    if (reset)
      pulse <= 1'b0;
    else if (count == COUNT_MAX)
      pulse <= 1'b1;
    else
      pulse <= 1'b0;
    end
  end
endmodule
