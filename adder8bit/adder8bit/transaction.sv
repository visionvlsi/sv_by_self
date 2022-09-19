class transaction;
rand bit [7:0]a;
rand bit [7:0]b;
bit [8:0]sum;


function void display(string name);
$display("====================================");
$display("%s",name);
$display("a=%0d b=%0d sum=%0d",a,b,sum);
$display("====================================");

endfunction
endclass