module top_test;

adder_intf vif();
test t1(vif);
adder8bit dut(vif.a,vif.b,vif.sum);

endmodule