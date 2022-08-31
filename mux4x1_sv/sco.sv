//////////////////////	Scoreboard
class scoreboard;
mailbox mbx;
reg y; 
transaction t;
 
function new(mailbox mbx);
this.mbx = mbx;
endfunction
 
task run();
forever begin
mbx.get(t);

case(t.s)
2'b00:		begin 
y=t.i[0];
if(t.y == y)
begin
$display("[SCO] :Test Passed");
end
else
begin
$display("[SCO] :Test Failed");
end
end

2'b01:
begin 
y=t.i[1];
if(t.y == y)
begin
$display("[SCO] :Test Passed");
end
else
begin
$display("[SCO] :Test Failed");
end
end

2'b10:
begin 
y=t.i[2];

if(t.y == y)
begin
$display("[SCO] :Test Passed");
end
else
begin
$display("[SCO] :Test Failed");
end
end


2'b11:
begin 
y=t.i[3];
if(t.y == y)
begin
$display("[SCO] :Test Passed");
end
else
begin
$display("[SCO] :Test Failed");
end
end

endcase 
  
 #10;

end
endtask
endclass
