// Code your testbench here
// or browse Examples
module mail();
  
  mailbox  m_box=new(3);
  bit [3:0]data;
  
  task trans();
    repeat(5) begin
      data=$random();
      if(m_box.try_put(data)) begin
        $display("try_put successful data value=%0d",data);
      end
      else begin
        $display("try_put failed data value=%0d",data);
        $display("Number of messages in mailbox=%0d",m_box.num());
           end
    end
  endtask
  
    task rec();
      bit [3:0]data_1;
    repeat(5) begin
     
      if(m_box.try_get(data_1)) begin
        $display("try_get successful data_1 value=%0d",data_1);
      end
      else begin
        $display("try_put failed data_1 value=%0d",data_1);
        $display("Number of messages in mailbox=%0d",m_box.num());
           end
    end
  endtask
  
  initial begin
    fork
      trans();
      rec();
    join
        
  end
    
endmodule
