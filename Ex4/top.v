//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design an electronic dice, following
//  the diagram provided in the exercises documentation. The dice rolls as long as
//  a button is pressed, and stops when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           throw [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////
module dice (
	input clk,
	input rst,
	input button,
	output reg [2:0] throw
)
	always @ (posedge clk or posedge rst) begin
		if (rst )
			throw <= 3b'0;
		else if (button )
			throw <= throw +1;
		//else if (~button)
			//throw <= throw 
		end

endmodule
