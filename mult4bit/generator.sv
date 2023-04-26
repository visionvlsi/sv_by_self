//Generate class

class generator;
event done;
transaction tr;
mailbox g2d;

function new(mailbox g2d);
this.g2d=g2d;
endfunction

task run;
begin
tr=new();
repeat(10)
begin
void'(tr.randomize());
g2d.put(tr);
tr.display("[GEN]::");
wait(done.triggered);
#10;
end
end
endtask
endclass