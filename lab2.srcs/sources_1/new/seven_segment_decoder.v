`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2019 05:22:11 PM
// Design Name: 
// Module Name: seven_segment_decoder
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


module seven_segment_decoder(
  input [3:0] in, output reg [6:0] out
  );
  always @(*) begin
    case (in)
      4'b0000 : out <= 7'b0000001; //0
      4'b0001 : out <= 7'b1001111; //1
      4'b0010 : out <= 7'b0010010; //2
      4'b0011 : out <= 7'b0000110; //3
      4'b0100 : out <= 7'b1001100; //4
      4'b0101 : out <= 7'b0100100; //5
      4'b0110 : out <= 7'b0100000; //6
      4'b0111 : out <= 7'b0001111; //7
      4'b1000 : out <= 7'b0000000; //8
      4'b1001 : out <= 7'b0000100; //9
      4'b1010 : out <= 7'b0001000; //A
      4'b1011 : out <= 7'b1100000; //b
      4'b1100 : out <= 7'b0110001; //C
      4'b1101 : out <= 7'b1000010; //d
      4'b1110 : out <= 7'b0110000; //E
      4'b1111 : out <= 7'b0111000; //F
      default : out <= 7'b0000001;
    endcase
  end
endmodule
