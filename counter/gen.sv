class generator;
transaction tr;
event done;
mailbox mbx;

function new(mailbox mbx);
this.mbx=mbx;
endfunction

task run();
tr=new();
tr.randomize();
mbx.put(tr);
$display("[GEN] : Data send to driver");
@(done);
endtask

endclass