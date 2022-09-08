module counter16bit(clk,rst,loadin,ld,ud,count);

input clk,rst;
input ld, ud;
input [15:0]loadin;
output reg [15:0]count;

always@(posedge clk, posedge rst)
begin
if(rst)
count<=0;
else if(ld)
count<=loadin;
else
begin
if(ud)
count<=count - 1'b1;
else
count<=count - 1'b1;
end
end
endmodule


