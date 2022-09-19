program test(adder_intf vif);

environment env;
mailbox m1,m2;

initial begin
m1=new();
m2=new();
env=new(m1,m2);
env.vif=vif;
env.run();
end

endprogram