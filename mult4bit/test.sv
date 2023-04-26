`include "interface.sv"
`include "base_test.sv"

module tb_top;

  aif vif();
  mult DUT(vif.a,vif.b,vif.prod);
  base_test t1(vif);
  
endmodule