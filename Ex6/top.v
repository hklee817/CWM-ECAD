//////////////////////////////////////////////////////////////////////////////////
// Exercise #6 
// Student Name:
// Date: 
//
//
//  Description: In this exercise, you need to design a multiplexer between a dice and traffic 
//  lights, where the output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | dice
//   1  | traffic lights
//
//  inputs:
//           rst, clk, button,sel
//
//  outputs:
//           result[2:0]
//
//////////////////////////////////////////////////////////////////////////////////
timescale 1ns/100ps

parameter CLK_PERIOD =10;

reg clk,rst,sel,button,err;
wire [2:0] result;

initial begin clk =1b'0;
	forever #(CLK_PERIOD/2) clk =~clk;
		end

DiceTraffic selection(
	.clk(clk),
	.rst(rst),
	.button(button),
	.sel(sel),
	.result(result)
)

initial begin 
 	rst=1;
	button=0;
	sel=0;
	err=0;

	#6
	if (result != 3b'0) begin
		err= 1;
		$display ("****TEST FAILED ****");
	end


	rst=0;
	button =1;
	#6
	if (result != 3b'010) begin
		err= 1;
		$display ("****TEST FAILED ****");
	end


	sel=1;
	#6
	if (result != 3b'001) begin
		err= 1;
		$display ("****TEST FAILED ****");
	end


	sel= 0;
	#6
	if (result != 3b'011) begin
		err= 1;
		$display ("****TEST FAILED ****");
		$finish
	end
end


initial begin
	if (err==0) begin
		$display("***TEST PASSED");
	end
end

	
endmodule
