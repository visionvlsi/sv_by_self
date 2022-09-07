class scoreboard;

mailbox mbx;
transaction tr;

function new(mailbox mbx);
this.mbx=mbx;
endfunction

task run();

forever begin
mbx.get(tr);
$display("[SCO] : Data Rcvd");
end

endtask

endclass