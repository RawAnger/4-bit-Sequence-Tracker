`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2022 00:38:11
// Design Name: 
// Module Name: project_2_tb
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


module project_2_tb();

 reg x;
 reg clk;
 reg rst;
 wire y;
 
 project_2 DUT(.x(x), .clk(clk), .rst(rst), .y(y));
 
    initial begin
    clk = 0;
    rst=0;
    end
    
    always begin
    #5  clk =  ~clk; 
    end
    
    initial begin
    #20;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        rst = 1; #10;
        rst = 0; x = 1'b1; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        rst = 1; #10;
        rst = 0; x = 1'b1; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        rst = 1; #10;
        rst = 0; x = 1'b1; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        x = 1'b0; #10;
        x = 1'b1; #10;
        x = 1'b1; #10;
        x = 1'b1; #10;
        x = 1'b1; #10;
        x = 1'b0; #10;
        $finish;
    end
endmodule

