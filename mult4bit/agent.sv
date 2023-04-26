class agent;

generator gen;
driver drv;
monitor mon;
event done;
mailbox g2d;
virtual aif vif;

function new(mailbox m2sb, virtual aif vif);
g2d=new();
gen=new(g2d);
drv=new(g2d,vif);
mon=new(m2sb,vif);
gen.done=done;
drv.done=done;
endfunction

task run();

fork
gen.run();
drv.run();
mon.run();
join_any
endtask

endclass
