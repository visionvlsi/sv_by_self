module tb;
  reg [1:0] a; // 00 01 10 11 -> 0 1 2 3
  
  reg clk = 0;
  integer i;
  
  always #5 clk = ~clk;
  
  initial begin
    #100;
    $finish();    
  end
  
 // Method 1 : synchronizing Signal -> event
/*
  covergroup c @(posedge clk);
    coverpoint a;
  endgroup
*/
  
  // Method 2 : Manually specify when to sample the value -> event 
  
  covergroup c;
    coverpoint a;
  endgroup
  
  initial begin
    c ci = new();
    for(i = 0; i < 10; i++) begin 
      @(posedge clk);
      a = $urandom();
      $info("Value of a : %0d", a);
      ci.sample();
    end 
  end
 
endmodule
