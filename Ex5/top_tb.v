//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex5 - Traffic Lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
reg clk;
reg  err;
wire red , amber, green;

parameter CLK_PERIOD = 10
timescale 1ns/100ps

initial begin 
	clk =0 ;
	err=0;
	reg [2,0] light = {red, amber, green};

		forever begin 
			if ( light != 3b'100 || light != 3b'110|| light != 3b'001|| light != 3b'011) 
				err= 1;
				$display ("****UNWANTED LIGHT****");
		end

end

initial begin 
	#50
	if (err==0 )
		$display ("TEST PASSD!");
	
		$finish;
end		

trafficlight  top (
input clk,
output reg red, amber, green
)

endmodule	
