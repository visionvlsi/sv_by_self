/*
Packed structures
Similar to a packed array, if memory allocated for variables in a structure is contiguous, then it is called a packed structure.

Only packed data types are allowed in packed structures.

Ex. A string is not a packed data type, so code will not compile. To use string as a data type in structure, unpack structures can be used.

The “packed” keyword is used to declare a packed structure.
*/
module struct_example;
  typedef struct packed {
    
    bit[31:0] salary;
    integer id;
  } employee;
    
  initial begin
    employee emp1, emp2;
    emp1.salary = 'h10000;
    emp1.id     = 'd1234;
    $display("EMP 1: %p", emp1);
    
    emp2.salary = 'h12000;
    emp2.id     = 'd4321;
    $display("EMP 2: %p", emp2);
  end
endmodule