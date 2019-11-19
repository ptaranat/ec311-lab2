`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2019 09:09:32 PM
// Design Name: 
// Module Name: tssd
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


module tssd;
reg [3:0] in;
wire [6:0] out;
seven_segment_decoder uut(.in(in), .out(out));
initial begin
    in = 0;
    forever #10 in = in+1;
end
endmodule
