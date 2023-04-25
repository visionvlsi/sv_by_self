class scoreboard;
  bit [4:0]temp;
  mailbox m2sb;
  transaction tr;
  function new(mailbox m2sb);
    this.m2sb = m2sb;
  endfunction
  
  task run;
    forever begin
      m2sb.get(tr);
      temp=tr.a+tr.b;	  
      if(temp == tr.sum) begin
        $display("[SCO]:: Matched: a = %0d, b = %0d, sum = %0d", tr.a, tr.b, tr.sum);
      end
      else begin
        $display("[SCO]:: NOT matched: a = %0d, b = %0d, sum = %0d",temp, tr.a, tr.b, tr.sum);
      end
      #10;
    end
  endtask
  
endclass

