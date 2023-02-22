class my_class;
byte var1,var2;

function display(string name);
$display("name=%s,var1=%d,var2=%d",name,var1,var2);
endfunction

endclass

module tb;
my_class ob1,ob2;

initial begin
ob1=new;
ob1.var1=10;
ob1.var2=20;

ob2=ob1; //class assignment

ob1.display("ob1");
ob2.display("ob2");

ob2.var2=30;

$display("After changing");

ob1.display("ob1");
ob2.display("ob2");

end

endmodule
