class monitor;
virtual aif vif;
mailbox m2sb;
transaction tr;

function new(mailbox m2sb, virtual aif vif);
this.vif=vif;
this.m2sb=m2sb;
endfunction

task run;
tr=new();
forever
begin
tr.a=vif.a;
tr.b=vif.b;
tr.sum=vif.sum;
m2sb.put(tr);
tr.display("[MON]::");
#10;
end

endtask

endclass