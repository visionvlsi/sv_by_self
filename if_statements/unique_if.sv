/*
SystemVerilog unique if
SystemVerilog allows us to use a unique keyword before if statement. Following error/warnings are expected:

None of if conditions are true or there is no ‘else’ statement.
More than one if or else if conditions are true.
*/
module unique_if_example;  
  initial begin
    int a, b;
    a = 10;
    b = 20;
    unique if(a>b)
      $display("a is greater than b");
	  
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b"); 
  end
endmodule