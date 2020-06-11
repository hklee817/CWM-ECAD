//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #6 - Dice or Traffic Lights?
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex6 - Dice or Traffic Lights?
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
module DiceTraffic (clk, rst,button,sel,result);
	input rst,clk, button, sel;
	output [2:0] result;

	wire [2:0] light;
	wire [2;0] num;

	dice the_DICE (
		.clk(clk),
		.rst(rst),
		.button(button),
		.throw(num)
	);

	trafficlight the_traffic(
		.clk(clk),
		.rst(rst),
		.red(light[2]),
		.amber(light[1]),
		.green(light[0])
	);

	mux the_mux(
		.a(num),
		.b(light),
		.sel(sel),
		.out(result)
	);

endmodule
