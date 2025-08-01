`include "traffic_env.sv"

class traffic_test;
  traffic_env env;

  function new (virtual traffic_if.TB vif);
    env = new(vif);
  endfunction

  task run();
    env.run();
  endtask
endclass
