class monitor;

mailbox mbx;
transaction tx;


virtual adder_intf vif;

function new(mailbox mbx);
this.mbx=mbx;
endfunction

task run();
tx=new();
forever
begin

tx.a=vif.a;
tx.b=vif.b;
tx.sum=vif.sum;

mbx.put(tx);
tx.display("[MON]: Data sent to scoreboard");
#10;
end
endtask

endclass