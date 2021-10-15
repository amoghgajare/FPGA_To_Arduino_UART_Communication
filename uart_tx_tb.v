`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institute: Indian Institute of Technology, Kanpur
// Engineer: Amogh Gajare
// 
// Create Date: 10/07/2021 11:06:58 AM
// Module Name: Testbench for UART_String_Transmitter
// Project Name: FPGA based UART Transmitter
// Tool Versions: Quartus Prime 19.1 Lite Edition, Xilinx Vivado 2019.1
//
// Revision:
// Revision 1.0 - File Created.
//
// Additional Comments: 
//////////////////////////////////////////////////////////////////////////////////


module uart_tx_tb();

parameter CLKS_PER_BIT=17;

reg       i_Clock;
reg       i_Tx_DV; 
wire      o_Tx_Active;
wire  o_Tx_Serial;
wire clk2mhz;
wire      o_Tx_Done;

uart_tx #(.CLKS_PER_BIT(CLKS_PER_BIT)) uut
  (
   .i_Clock(i_Clock),
   .i_Tx_DV(i_Tx_DV), 
   .clk2mhz(clk2mhz),
   .o_Tx_Active(o_Tx_Active),
   .o_Tx_Serial(o_Tx_Serial),
   .o_Tx_Done(o_Tx_Done)
   );

initial begin
i_Tx_DV=1'b1;
end

always begin
i_Clock=1'b0;
#10;
i_Clock=1'b1;
#10;
end

endmodule
