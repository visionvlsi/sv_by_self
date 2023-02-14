// Code your design here
module adder(a,b,sum);
  input [3:0]a,b;
  output [4:0]sum;
  assign sum=a+b;  
endmodule

// Code your testbench here
// or browse Examples
class generator;
  
  rand bit [3:0]a,b;
  bit [4:0]sum;
  
  constraint values { 2<a; a<7;}
  constraint b_range { b inside {[3:8]};}
  constraint a_not_eq_b { a!=b;}
endclass

module tb;
  reg [3:0]a,b;
  wire [4:0]sum;
  
  generator g;
  adder dut(a,b,sum);
  
  initial begin
    
    for(int i=0; i<16; i++) begin
      g=new();
      g.randomize();
     
      a=g.a;
      b=g.b;
       
    
      #10;     
        $display("a %0d b %0d and the sum is %0d", g.a, g.b , sum);
    end
    
  end
  
  
  
endmodule
