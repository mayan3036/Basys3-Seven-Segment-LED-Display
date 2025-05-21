`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2025 12:31:07
// Design Name: 
// Module Name: 7_Segment_Display
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


module Seven_Segment_Display(
    input [7:0] ascii_char,
    output reg [6:0] seg
);
    always @(*) begin
        case (ascii_char)

            // Digits 0-9 (ASCII 0x30 to 0x39)
            8'h30: seg = 7'b1000000; // 0
            8'h31: seg = 7'b1111001; // 1
            8'h32: seg = 7'b0100100; // 2
            8'h33: seg = 7'b0110000; // 3
            8'h34: seg = 7'b0011001; // 4
            8'h35: seg = 7'b0010010; // 5
            8'h36: seg = 7'b0000010; // 6
            8'h37: seg = 7'b1111000; // 7
            8'h38: seg = 7'b0000000; // 8
            8'h39: seg = 7'b0010000; // 9

            // Uppercase A-Z
            8'h41: seg = 7'b0001000; // A
            8'h42: seg = 7'b0000011; // B
            8'h43: seg = 7'b1000110; // C
            8'h44: seg = 7'b0100001; // D
            8'h45: seg = 7'b0000110; // E
            8'h46: seg = 7'b0001110; // F
            8'h47: seg = 7'b1000010; // G
            8'h48: seg = 7'b0001001; // H
            8'h49: seg = 7'b1111001; // I
            8'h4A: seg = 7'b1100001; // J
            8'h4B: seg = 7'b0001111; // K (approximate)
            8'h4C: seg = 7'b1000111; // L
            8'h4D: seg = 7'b1010100; // M (approximate)
            8'h4E: seg = 7'b0101010; // N (approximate)
            8'h4F: seg = 7'b1000000; // O
            8'h50: seg = 7'b0001100; // P
            8'h51: seg = 7'b0011000; // Q (approximate)
            8'h52: seg = 7'b0101111; // R (approximate)
            8'h53: seg = 7'b0010010; // S
            8'h54: seg = 7'b0000111; // T (approximate)
            8'h55: seg = 7'b1000001; // U
            8'h56: seg = 7'b1110001; // V (approximate)
            8'h57: seg = 7'b1010101; // W (approximate)
            8'h58: seg = 7'b0111011; // X (approximate)
            8'h59: seg = 7'b0010001; // Y
            8'h5A: seg = 7'b0100100; // Z

            // Lowercase a-z (some share same patterns as uppercase)
            8'h61: seg = 7'b0001000; // a
            8'h62: seg = 7'b0000011; // b
            8'h63: seg = 7'b1000110; // c
            8'h64: seg = 7'b0100001; // d
            8'h65: seg = 7'b0000110; // e
            8'h66: seg = 7'b0001110; // f
            8'h67: seg = 7'b0010000; // g
            8'h68: seg = 7'b0001011; // h
            8'h69: seg = 7'b1111001; // i
            8'h6A: seg = 7'b1110001; // j
            8'h6B: seg = 7'b0001111; // k (approximate)
            8'h6C: seg = 7'b1000111; // l
            8'h6D: seg = 7'b1010100; // m (approximate)
            8'h6E: seg = 7'b0101010; // n (approximate)
            8'h6F: seg = 7'b1000000; // o
            8'h70: seg = 7'b0001100; // p
            8'h71: seg = 7'b0011000; // q
            8'h72: seg = 7'b0101111; // r (approximate)
            8'h73: seg = 7'b0010010; // s
            8'h74: seg = 7'b0000111; // t (approximate)
            8'h75: seg = 7'b1000001; // u
            8'h76: seg = 7'b1110001; // v
            8'h77: seg = 7'b1010101; // w (approximate)
            8'h78: seg = 7'b0111011; // x (approximate)
            8'h79: seg = 7'b0010001; // y
            8'h7A: seg = 7'b0100100; // z

            default: seg = 7'b1111111; // blank
        endcase
    end
endmodule