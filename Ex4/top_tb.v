//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

	timescale 1ns /100ps

module top_tb(
	);

parameter CLK_PERIOD = 10;


reg count;
reg rst;
reg clk;
reg rst;
reg err;
wire [2:0] throw;

initial begin
	  clk=0;
	  forever 
	    #(CLK-PERIOD/2) clk=~clk;
	end

initial begin 
	err= 0;
	rst = 0;
	button =1;

	#6
	if ( throw != 3b'111) begin
		err= 1;
		$display ("****TEST FAILED!!***");
	end

	rst =1:
	#6
	if ( theow != 3b'0) begin 
		err= 1;
		$display ("****TEST FAILED!!, check RESET!***");
	end

	rst = 0;
	button = 0;
	#6
	if ( throw != 3b'0) begin 
		err = 1;
		$display ("****TEST FAILED!!, check BUtton!***");
	end

end

initial begin 
	#50
	if (err==0 )
		$display ("TEST PASSD!");
		$finish;
end		


dice top (
	input clk,
	input rst,
	input button,
	output reg [2:0] throw
)
 

endmodule 
