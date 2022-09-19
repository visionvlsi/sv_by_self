class driver;

mailbox mbx;
transaction tx;
event done;

virtual adder_intf vif;

function new(mailbox mbx);
this.mbx=mbx;
endfunction

task run();
tx=new();
forever
begin
mbx.get(tx);
vif.a=tx.a;
vif.b=tx.b;
tx.display("[DRV]: Interface Triggered");
->done;
#10;
end
endtask

endclass