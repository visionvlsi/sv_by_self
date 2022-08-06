/*
SystemVerilog unique0 if
The unique0 if/ else if statement does not issue any run time warning unlike the unique if statement.

None of if conditions are true or there is no ‘else’ statement
No run time warning is expected even if there is no if/ else if a condition is true or else the condition is missing.
*/
module unique0_if_example;  
  initial begin
    int a, b;
    a = 10;
    b = 20;
    unique0 if(a>30)
      $display("a is greater than 30");
    else if(30<b)
      $display("30 is less than b");
  end
endmodule