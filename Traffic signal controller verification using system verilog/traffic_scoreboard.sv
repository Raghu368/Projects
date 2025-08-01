class traffic_scoreboard;

  mailbox #(traffic_packet) monitor_queue;
  int pass_count = 0, fail_count = 0;

  function new (mailbox #(traffic_packet) monitor_queue);
    this.monitor_queue = monitor_queue;
  endfunction

  task compare();
    traffic_packet pkt;
    forever begin
      monitor_queue.get(pkt); // Retrieve monitored packet
      if (pkt.expected_light inside {3'b100, 3'b010, 3'b001}) begin
        pass_count++;
        $display("PASS: Expected light = %03b", pkt.expected_light);
      end else begin
        fail_count++;
        $display("FAIL: Unexpected light = %03b", pkt.expected_light);
      end
    end
  endtask
endclass
