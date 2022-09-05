class generator;
  rand [3:0]a,b;
 endclass


module tb;
  generator gen;
  
  initial begin
    
    gen=new();
    
    for(int i=0; i<16; i++) begin
      gen.randomize();
      $display("The value of a=%0d, b=%0d",gen.a, gen.b);
      #10;
    end
    endmodule
