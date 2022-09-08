class scoreboard;

mailbox msmbx;
transaction tr;

function new(mailbox msmbx);
this.msmbx=msmbx;
endfunction

task run();

forever begin
tr=new();
msmbx.get(tr);
$display("[SCO]: DATA RCVD");
end

endtask

endclass