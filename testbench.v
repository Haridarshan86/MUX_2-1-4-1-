`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 19:51:00
// Design Name: 
// Module Name: testbench
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



module mux2to1_tb;

reg a, b, sel;
wire y;

integer i;

 mux_2_1_gatelevel dut(a, b,sel,y);

initial begin
    $display("Sel\tA\tB\tY");
    $monitor("%b\t%b\t%b\t%b", sel, a, b, y);

    for(i = 0; i < 8; i = i + 1) begin
        {sel, a, b} = i;
        #10;
    end
$finish;
end

endmodule