`include "interface.sv"
`include "base_test.sv"

module tb_top;

  aif vif();
  adder DUT(vif.a,vif.b,vif.sum);
  base_test t1(vif);
  
endmodule