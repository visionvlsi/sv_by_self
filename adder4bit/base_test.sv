`include "package.sv"
program base_test(aif vif);
  env env_o;
  
  initial begin
    env_o = new(vif);
    env_o.run();
  end
endprogram
