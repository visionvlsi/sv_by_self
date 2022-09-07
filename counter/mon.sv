class monitor;

mailbox mbx;
virtual counter_intf vif;
transaction tr;

function new(mailbox mbx);
this.mbx=mbx;
endfunction


task run();

tr=new();

forever begin

tr.rst=vif.rst;
tr.ld=vif.ld;
tr.ud=vif.ud;
tr.loadin=vif.loadin;
mbx.put(tr);
$display("[MON]: Data sent to scoreboard");
@(posedge vif.clk);

end


endtask


endclass