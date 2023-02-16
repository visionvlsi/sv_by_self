// Code your testbench here
// or browse Examples
class packet;
  rand int count;
  rand bit [15:0]data_in_1;
  rand bit [15:0]data_in_2;
  
  task print();
    $display("count=%0d",count);
    $display("data_in_1=%0d",data_in_1);
    $display("data_in_2=%0d",data_in_2);
  endtask
  constraint c1 {data_in_1>10; data_in_1<25;};
endclass


module top;

    packet pkt;
    initial begin
    	pkt=new();
      pkt.randomize() with {data_in_2>15; data_in_2<22;};
      	pkt.print();
     end
  
endmodule
