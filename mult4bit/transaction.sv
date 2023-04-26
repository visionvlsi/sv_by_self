//Transaction class

class transaction;

rand bit [3:0]a;
rand bit [3:0]b;
bit [7:0]prod;

function void display(string name="name");

$display("%s a=%b, b=%b , sum=%b",name, a,b,prod);

endfunction

endclass
