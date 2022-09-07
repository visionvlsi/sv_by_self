class driver;

transaction tr;
event done;
mailbox mbx;
virtual counter_intf vif;

function new(mailbox mbx);
this.mbx=mbx;
endfunction

task run();

forever begin

mbx.get(tr);

vif.rst=tr.rst;
vif.ld=tr.ld;
vif.ud=tr.ud;
vif.loadin=tr.loadin;
$display("[DRV]: Interface Trigger");
->done;
@(posedge vif.clk);

end

endtask

endclass