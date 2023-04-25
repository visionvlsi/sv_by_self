//Transaction class

class transaction;

rand bit [3:0]a;
rand bit [3:0]b;
bit [4:0]sum;

function void display(string name="name");

$display("%s a=%b, b=%b , sum=%b",name, a,b,sum);

endfunction

endclass
