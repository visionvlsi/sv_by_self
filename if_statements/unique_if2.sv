/*
An error/ warning Example
None of if conditions are true or there is no ‘else’ statement
In the below example, no if or else if the condition is true. Also, else condition is not written. Hence, run time error/ warning is expected.
*/
module unique_if_example;  
  initial begin
    int a, b;
    a = 10;
    b = 20;
    unique if(a>30)
      $display("a is greater than 30");
    else if(30<b)
      $display("30 is less than b");
  end
endmodule