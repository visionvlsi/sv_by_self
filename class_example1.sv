class my_class;
//properties
bit var1;
byte var2;
logic [3:0]var3;
//methods
function display();

$display("var1=%0d var2=%0d var3=%b",var1,var2,var3);

endfunction
endclass


module tb;
my_class ob1;
initial begin
ob1=new();
ob1.var2=10;
ob1.display;

end

endmodule
