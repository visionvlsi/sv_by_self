/////////////////////	Generator class

class generator;
mailbox mbx;
event done;
transaction t;
integer i;
 
function new(mailbox mbx);
this.mbx = mbx;
endfunction
 
task run();
t = new();
for(i = 0; i < 16; i++)begin
t.randomize();
mbx.put(t);
$display("[GEN] : Data send to Driver i:%b s:%b", t.i, t.s);
@(done);
#10;
end
endtask
endclass
