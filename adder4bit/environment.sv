class env;
  agent agt;
  scoreboard sb;
  mailbox m2sb;
  function new(virtual aif vif);
    m2sb = new();
    agt = new(m2sb,vif);
    sb = new(m2sb);
  endfunction

  task run();
    fork
      agt.run();
      sb.run();
    join_any
    #10;
    $finish;
  endtask
endclass