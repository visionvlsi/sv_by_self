/*
Unions in SystemVerilog
Unions are similar to structures that can contain different data types members except they share the same memory location.
Hence, it is memory efficient data structure. But it also restricts the user to use one member at a time.
*/
module union_example;
  typedef union {
    bit[15:0] salary;
    integer id;
  } employee;
    
  initial begin
    employee emp;
    emp.salary = 'h800;
    $display("salary updated for EMP: %p", emp);
    emp.id     = 'd1234;
    $display("ID updated for EMP: %p", emp); //Note: Salary information will be lost
  end
endmodule