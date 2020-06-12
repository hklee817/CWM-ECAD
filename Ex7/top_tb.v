//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #7 - Times Table
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex7 - Times Table
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
timescale 1ns / 100ps

module top_tb(
);

parameter CLK_PERIOD = 10;

reg clk,read,err;
reg [2:0] a1;
reg [2:0] b1;
wire [5:0] product;

clk =1b'0;

table pro [5:0] (.clk(clk), .read(read), .a(a1), .b(b1), .result(product));

initial begin 
	err =0;

	a1 =1;
	b1=2;
	read =1;

	#6
	if (product != 6b'000010) begin 
		err =1;
		$display("***TEST FAILED****");
	end


	a1= 5;
	b1= 7:

	#6
	if(product != a1*b1) begin
		err=1;
		$display("***TEST FAILEd***");
	end

end

initial begin 

	if (err==0) begin 
		$display("*****TEST PASESED***");
	end	
end


endmodule

	
