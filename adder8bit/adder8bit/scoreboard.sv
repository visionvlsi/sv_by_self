class scoreboard;

mailbox mbx;
transaction tx;

logic [8:0]temp_sum;

function new(mailbox mbx);
this.mbx=mbx;
endfunction

task run();
tx=new();
forever
begin
mbx.get(tx);
temp_sum=tx.a + tx.b;
if(temp_sum==tx.sum)
begin
tx.display("[SCO]: Addition Successful");
end
else
begin
tx.display("[SCO]: Addition Unsuccessful");
end
#10;
end
endtask

endclass