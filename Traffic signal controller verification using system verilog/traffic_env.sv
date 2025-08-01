`include "traffic_packet.sv"
`include "traffic_generator.sv"
`include "traffic_driver.sv"
`include "traffic_monitor.sv"
`include "traffic_scoreboard.sv"

class traffic_env;
  traffic_generator generator;
  traffic_driver driver;
  traffic_monitor monitor;
  traffic_scoreboard scoreboard;

  mailbox #(traffic_packet) packet_queue;
  mailbox #(traffic_packet) monitor_queue;

  virtual traffic_if.TB vif;

  function new (virtual traffic_if.TB vif);
    this.vif = vif;
    packet_queue = new();
    monitor_queue = new();
    generator = new (packet_queue);
    driver = new (vif);
    monitor = new(vif, monitor_queue);
    scoreboard = new (monitor_queue);
  endfunction

  task run();
    fork
      generator.g1();
      monitor.monitor();
      scoreboard.compare();
      drive();
    join
  endtask

  task drive();
    traffic_packet pkt;
    while (packet_queue.num > 0) begin
      packet_queue.get(pkt);
      driver.drive (pkt);
    end
  endtask
endclass
