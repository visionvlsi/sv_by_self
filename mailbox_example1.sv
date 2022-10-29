// Code your testbench here
// or browse Examples
module mail();
  
  mailbox m_box=new(3);
  int value=5;
  string name="vlsi";
  
  task trans();
    m_box.put(value);
    $display("put data value=%0d",value);
    m_box.put(name);
    $display("put data name=%s",name);
  endtask
  
   task rec();
     int value_1;
     string name_1;
     m_box.get(value_1);
     $display("get data value_1=%0d",value_1);
     m_box.get(name_1);
     $display("get data name_1=%s",name_1);
  endtask
  
  initial begin
    fork
      trans();
      rec();
    join
        
  end
    
endmodule
