module tb();
 
environment env;
 
mailbox gdmbx;
mailbox msmbx;
 
counter_intf vif();
 
counter16bit dut ( vif.clk, vif.rst, vif.ud, vif.ld,  vif.loadin, vif.count);
 
always #5 vif.clk = ~vif.clk;
 
initial begin
vif.clk = 0;
end
 
initial begin
gdmbx = new();
msmbx = new();
env = new(gdmbx, msmbx);
env.vif = vif;
env.run();
#500;
$finish;
end
 
endmodule