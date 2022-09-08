class driver;

transaction tr;
mailbox mbx;
virtual counter_intf vif;

event done;

function new(mailbox mbx);
this.mbx=mbx;
endfunction

task run();

forever begin

mbx.get(tr);

vif.rst<=tr.rst;
vif.ld<=tr.ld;
vif.ud<=tr.ud;
vif.loadin<=tr.loadin;
//tr.count<=vif.count;
@(posedge vif.clk);
$display($time,"\t[DRV]: Interface Trigger :: rst=%b ld=%b ud=%b loadin=%0d",tr.rst, tr.ld, tr.ud, tr.loadin);
->done;

end

endtask

endclass