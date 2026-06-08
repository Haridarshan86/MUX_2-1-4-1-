`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 19:49:40
// Design Name: 
// Module Name: mux
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


//module mux_2_1_conditional(input a,b,sel,output y);
//assign y=sel? b:a;
//endmodule




module mux_2_1_gatelevel(
    input a,
    input b,
    input sel,
    output y
);

wire nsel;
wire w1, w2;

not (nsel, sel);
and (w1, a, nsel);
and (w2, b, sel);
or  (y, w1, w2);

endmodule