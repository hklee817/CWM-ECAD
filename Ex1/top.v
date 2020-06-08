//////////////////////////////////////////////////////////////////////////////////
// Exercise #1 
// Student Name:Ho Lee
// Date: 08/06/2020
//
//  Description: In this exercise, you need to design a logical unit, where the  
//  output acts according to the following truth table:
//
//  a | b | out
// -----------------
//  0 | 0 | func[0]
//  0 | 1 | func [1]
//  1 | 0 | func [2]
//  1 | 1 | func [3]
//
//  inputs:
//           a, b, func[3:0]
//
//  outputs:
//           out
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module logicalunit(
    input a,
    input b,
    input [3:0] func,
    output out
    );
    
    wire   out;

    //wire   [1:0] ab =={a,b};
    //assign out= (ab== 2b'00)? func[0]:
		//(ab== 2b'01)? func[1]:
		//(ab== 2b'10)? func[2]:
		//func[3];

     assign out = (func == 4b'1110)? a|b:
		  (func == 4b'0110)? a^b:
		  (func == 4b'1000)? a&b;
	    
         
      //Todo: add you logic here

endmodule
