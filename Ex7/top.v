//////////////////////////////////////////////////////////////////////////////////
// Exercise #7
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to implement a times table of 0..7x0..7
//  using a memory.
//
//  inputs:
//           clk, a[2:0], b[2:0], read
//
//  outputs:
//           result[4:0]
//////////////////////////////////////////////////////////////////////////////////

module timetable (
	input clk,
	input [2:0] a ,
	input [2:] b,
	input read ,
	output wire [5:0} result
	);

	BLOCKMEM the_block [5:0](
	.clk(clk),
	.ena(read),
	.wea(1b'0),
	.addr({a,b}),
	.dina(6b'0)
	.douta(result)
	);

endmodule
