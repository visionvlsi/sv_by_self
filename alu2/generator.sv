class generator;
  transaction trans;
  
  mailbox gen2driv;
  
  
  function new(mailbox gen2driv);
    this.gen2driv = gen2driv;
  endfunction
  
  task main();
    repeat (1)
      begin
        trans = new();
      /*trans.a = 56;
        trans.b = 46;
        trans.enable =1;
        trans.command = 0;*/
        trans.randomize();
        trans.display("Generator");
        gen2driv.put(trans);
      end
  endtask
endclass