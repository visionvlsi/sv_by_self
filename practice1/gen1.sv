class generator;
  rand bit[3:0]a,b;
  
  constraint data {
    
    a>16;
    
  }
endclass

module tb;
  generator gen;
  int status_a, status_b;
  initial begin
    
    gen=new();
    for(int i=0; i<16; i++) begin
     status_a=gen.a.randomize;
     status_b= gen.b.randomize();
      $display($time, "\ta=%0d\tb=%0d\tstatus_a=%b\tstatus_b=%b",gen.a,gen.b,status_a,status_b);
      
    end
    
  end
  
  
  
  
endmodule
