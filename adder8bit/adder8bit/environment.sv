class environment;

generator gen;
driver drv;
monitor mon;
scoreboard sco;

mailbox m1;
mailbox m2;

event gddone;

virtual adder_intf vif;

function new(mailbox m1, mailbox m2);
this.m1=m1;
this.m2=m2;
gen = new(m1);
drv = new(m1);
mon = new(m2);
sco = new(m2);
endfunction

task run();
gen.done=gddone;
drv.done=gddone;
drv.vif=vif;
mon.vif=vif;

fork
gen.run();
drv.run();
mon.run();
sco.run();
join_any

endtask

endclass