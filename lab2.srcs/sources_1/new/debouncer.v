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


module debouncer(
    input pb,
    input clk,
    input reset,
    output reg pb_out
    );
    reg button_push;
    reg deb_count_start;
    reg deb_count;
    reg output_exist;
    parameter MAX = 1000000;
    initial begin
      assign button_push = pb;
      deb_count_start    = 0;
      deb_count          = 0;
      output_exist       = 0;
    end
    always @(posedge clk) begin
      if (reset) begin
        button_push     <= 0;
        deb_count_start <= 0;
        deb_count       <= 0;
        output_exist    <= 0;
      end
      else if (button_push == 1) begin
        while (deb_count < MAX) begin
         if (output_exist == 0) begin
         // && deb_count_start == 0
         end
         else begin
           pb_out <= 0;
         end
        end
      end
    end // always @ posedge clk
endmodule
