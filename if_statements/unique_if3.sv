/*
More than one if or else if conditions are true
In the below example, more that if or else if a condition is true which issues a compilation error/ warning.
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
    else if(a<50)
      $display("a is less than 50");
    else 
      $display("a is equal to b");
  end
endmodule