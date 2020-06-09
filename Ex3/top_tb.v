//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #3 - Up/Down counter
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex3 - counter
// Guidance: start with simple tests of the module (how should it react to each 
// control signal?). Don't try to test everything at once - validate one part of 
// the functionality at a time.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
//Todo: Parameters
	parameter CLK_PERIOD =10;
//Todo: Regitsers and wires
	reg clk;
	reg rst;
	reg enable;
	reg dir;
	reg err;
	reg [7:0] counter_out;

//Todo: Clock generation
	initial begin
	  clk=0;
	  forever 
	    #(CLK-PERIOD/2) clk=~clk;
	end
//Todo: User logic
    	initial begin
	err =0; 
	rst =1;
	#6
	if (counter_out != 8b'0) begin
	err=1;
	$display("***TEST FAILED***check rst")
	end

	enable=0;
	diretion=0;
	#6
	if (counter_out != 8b'0) begin
	err=1;
	$display("***TEST FAILED***check enable and direction")
	end

		
	#6
	if (counter_out != 8b'0-8b'1) begin
	err=1;
	$display("***TEST FAILED***check enable and direction")
	end

	direction =1
	#6
	if (counter_out != 8b'0) begin
	err=1;
	$display("***TEST FAILED***check enable and direction")
	end
end
//Todo: Finish test, check for success
	initial begin
        #10 
        if (err==0)
          $display("***TEST PASSED! :) ***");
        $finish;
      end
//Todo: Instantiate counter module
 	counter top (
     
     	input clk,
	input rst,
	input direction,
	input enable,
	output reg [7,0] counter_out
);
endmodule 
