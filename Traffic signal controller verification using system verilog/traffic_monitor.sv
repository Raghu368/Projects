class traffic_monitor;
  virtual traffic_if.TB vif;
  mailbox #(traffic_packet) monitor_queue;

  function new (virtual traffic_if.TB vif, mailbox #(traffic_packet) monitor_queue);
    this.vif = vif;
    this.monitor_queue = monitor_queue;
  endfunction

  task monitor();
    traffic_packet pkt;
    forever begin
      @(posedge vif.clk);
      pkt = new();
      pkt.expected_light = vif.light;
      monitor_queue.put (pkt);
    end
  endtask
endclass
