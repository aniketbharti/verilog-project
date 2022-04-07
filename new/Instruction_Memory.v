`timescale 1ns / 1ps

module Instruction_Memory (pc, instruction);   
    input [7:0] pc;
    output reg [7:0] instruction;
    reg [7:0] rom[255:0];    
    initial begin		          
        rom[0]= 8'b00111001;                          
    end    
    always @(pc)
        begin
            instruction <= rom[pc];
        end    
endmodule