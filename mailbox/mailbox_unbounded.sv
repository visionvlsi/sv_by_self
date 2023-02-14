// Code your testbench here
// or browse Examples
module mail();
  
  mailbox m_box=new();
  int value;
    
  task trans();
    repeat(10) begin
      value=$random();
      m_box.put(value);
    $display("put data value=%0d",value);
    end
  endtask
  
   task rec();
     int value_1;
    repeat(10) begin
      m_box.get(value_1);
      $display("get data value_1=%0d",value_1);
    end
   
    endtask
  
  initial begin
    fork
      trans();
      rec();
    join
        
  end
    
endmodule
