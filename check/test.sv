// Code your testbench here
// or browse Examples
class transaction;
  rand  bit [3:0]a;
endclass

class generator;
  transaction tr;
  mailbox g2d;
  
  function new(mailbox g2d);
    this.g2d=g2d;
  endfunction
  
  task t1;
    tr=new();
    assert ((tr.randomize())) else $display("Error");
    g2d.put(tr);
    #10;
  endtask
endclass

class driver;
  transaction tr;
  mailbox g2d;
  bit [3:0]b1;
 
  function new(mailbox g2d);
    this.g2d=g2d;
  endfunction
 
  task t2;
 
		g2d.get(tr);
		b1=10;
		#10;
		$display("The value of b1 is %0d",b1);
   
  endtask
endclass

class top;
  driver dr;
  generator gr;
  mailbox g2d;
 
  task run;
  
      g2d=new();
      dr=new(g2d);
      gr=new(g2d);
	  dr.t2();
 
      endtask
  
endclass
      
   module tb;
     
     top t23;
     
     initial
       begin
         t23=new();
         t23.run();
		 //t23.dr.t2();
		 //t23.dr.b1=10;
		  //$display("The value of b1 is %0d",t23.dr.b1);
		 #5;
		 $stop;
       end
     
   endmodule