///////////////////////////////////////	Monitor
class monitor;
mailbox mbx;
  virtual mux_intf vif;
transaction t;
 
function new(mailbox mbx);
this.mbx = mbx;
endfunction
 
task run();
t = new();
forever begin
t.i = vif.i;
t.s = vif.s;
t.y=vif.y;
mbx.put(t);
$display("[MON] : data send to SCO i:%b s:%b y:%b", t.i,t.s,t.y);
#10;
end
endtask
endclass
