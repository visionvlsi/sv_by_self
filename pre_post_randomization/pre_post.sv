// Code your testbench here
// or browse Examples
class packet;
  rand bit [15:0]data_in_1;
  rand bit [15:0]data_in_2;
  rand bit [15:0]data_in_3;
  rand bit [15:0]addr_in;
  
  function void pre_randomize();
    $display("Inside pre_randomize::before randomization");
    data_in_2.rand_mode(0); //used to prevent the randomization of declared field
  endfunction
  
  function void post_randomize();
     $display("Inside post_randomize::after randomization");
     addr_in=data_in_1 + data_in_3;
  endfunction
  
  task print();
    $display("data_in_1=%0h",data_in_1);
    $display("data_in_2=%0h",data_in_2);
    $display("data_in_3=%0h",data_in_3);
    $display("addr_in=%0h",addr_in);
  endtask
  
endclass

module top;
  packet pkt;
  initial begin
    pkt=new();
    pkt.randomize();
    pkt.print();
    
  end
  
  
endmodule
