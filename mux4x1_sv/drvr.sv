///////////////////////	Driver
 
class driver;
mailbox mbx;
event done;
transaction t;
  virtual mux_intf vif;
 
function new(mailbox mbx);
this.mbx = mbx;
endfunction
 
task run();
t = new();
forever begin
mbx.get(t);
vif.i = t.i;
vif.s = t.s;
  $display("[DRV] : Interface Trigger i:%b  s:%b", t.i, t.s);
->done;
 #10;
end
endtask
endclass  
