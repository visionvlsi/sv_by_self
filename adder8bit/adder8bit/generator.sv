class generator;

mailbox mbx;
transaction tx;
event done;

function new(mailbox mbx);
this.mbx=mbx;
endfunction

task run();
tx=new();
for(int i=0; i<45; i++)
begin
tx.randomize();
mbx.put(tx);
tx.display("[GEN]: Data sent to driver");
@(done);
#10;
end
endtask

endclass