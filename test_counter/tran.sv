class transaction;
bit clk;
rand bit rst, ld, ud;
rand bit [15:0]loadin;
bit [15:0]count;

constraint reset { rst dist {1:=15, 0:=95};}
constraint load_ud {ld!=ud;}
constraint load { ld dist {1:=10,0:=95};}
constraint updown { ud dist {1:=50,0:=50};}
endclass