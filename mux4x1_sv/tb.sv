////////////////////	Testbench Top

module tb;
 
  environment env;
  mux_intf vif();
  mailbox gdmbx, msmbx;
 
mux4x1 dut (vif.i, vif.s, vif.y);
 
 
 
initial begin
gdmbx = new();
msmbx = new();
 
env = new(gdmbx,msmbx);
env.vif = vif;
#50;  
env.run();
#600;
$finish;
end
 
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
 
 
 
endmodule
