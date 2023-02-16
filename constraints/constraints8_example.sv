// inline constraints
class in_const;
  rand [7:0]a;
  rand int b;
  rand bit [4:0]c;
  
  task print();
    $display("a=%0d",a);
    $display("b=%0d",b);
    $display("c=%0d",c);
  endtask
  
endclass


module top;

    in_const con;
    initial begin
    	con=new();
      con.randomize() with {a>18;a<50;b>5;b<15;c>5;c<7;};
      	pkt.print();
     end
  
endmodule
