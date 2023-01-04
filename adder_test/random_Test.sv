`include "environment.sv"
program test(intf i_intf);
  environment env;
  
  initial begin
    //creating environment
    env = new(i_intf);
    env.gen.repeat_count = 5;
    env.run();
  end
endprogram
