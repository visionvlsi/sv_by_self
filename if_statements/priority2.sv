/*
An error/ warning example
None of if conditions are true or there is no ‘else’ statement
In the below example, no if or else if a condition is true. Also, else condition is not written. Hence, run time error/ warning is expected.

*/
module priority_if_example;  
  initial begin
    int a, b;
    a = 20;
    b = 10;
    priority if(a>30)
      $display("a is greater than 30");
    else if(30<b)
      $display("30 is less than b");
  end
endmodule