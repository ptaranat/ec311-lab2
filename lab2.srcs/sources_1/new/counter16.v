`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2019 05:35:33 PM
// Design Name: 
// Module Name: counter16
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


module counter16(
  input clk, input reset, input pb, output reg [15:0] count
  );
  always @(posedge clk) begin
    if (reset)
      count <= 0;
    else if (pb)
      count <= count + 1;
  end
endmodule
