# UART Keyboard to 7-Segment Display - Basys 3 FPGA

This project displays PC keyboard inputs on a Basys 3 FPGA's 7-segment display using UART serial communication.

## How It Works
1. You press a key on your PC keyboard
2. The character is sent via UART (serial communication)
3. Basys 3 FPGA receives the data
4. The 7-segment display shows the character

## Hardware Setup
- Basys 3 FPGA board
- USB connection to PC (for both power and UART)
- Jumper JP1 set to USB position

## Software Requirements
- Vivado (or your FPGA toolchain)
- Serial terminal (Tera Term)
- Baud rate must match in code and terminal (e.g., 9600)

## Usage
1. Program the FPGA with the provided code
2. Open serial terminal with matching baud rate
3. Type keys - they'll appear on the display
