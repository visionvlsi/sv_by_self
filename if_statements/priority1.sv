/*
SystemVerilog priority if
The execution of priority if is in sequential order.

priority if Example

note: The simulation issues following run time error/warning

None of if conditions are true or there is no ‘else’ statement.
*/
module priority_if_example;  
  initial begin
    int a, b;
    a = 20;
    b = 10;
    priority if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b");
  end
endmodule