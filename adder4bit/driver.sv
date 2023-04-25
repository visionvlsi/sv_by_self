class driver;
event done;
transaction tr;
mailbox g2d;
virtual aif vif;

function new(mailbox g2d, virtual aif vif);
this.g2d=g2d;
this.vif=vif;
endfunction

task run;

forever 
begin
g2d.get(tr);
vif.a<=tr.a;
vif.b<=tr.b;
tr.display("[DRV]::");
->done;
#10;
end
endtask

endclass