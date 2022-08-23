module alu(
			input [7:0] a,b,
			input [1:0] sel,
			input clk,rst,
			output reg [7:0] out

);

always @(posedge clk)

begin
if(rst)
out <=0;

else

begin
case(sel)
2'b00: //addition
out = a+b;
2'b01: //subtraction
out=a-b;
2'b10: //multiplication
out = a*b;
2'b11: // division
out = a / b;

default: out = a+b;
endcase
end
end
endmodule