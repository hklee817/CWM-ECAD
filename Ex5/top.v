//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green
//////////////////////////////////////////////////////////////////////////////////

module traffic light ( 
input clk,
output reg red,
output reg amber,
output reg green
)

always @ ( posedge clk) begin
	case ({red , amber, green })     3b'100: red <=1 , amber <= 1, green <=0 ; 
				        3b'110: red <=0, amber <=0, green<=1;
					3b'001: red <=0, amber <=1, green<=1;
					default: red <=0, amber <=0, green<=1;
	endcase
end
