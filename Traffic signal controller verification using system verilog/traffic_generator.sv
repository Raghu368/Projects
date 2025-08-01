class traffic_generator;
    mailbox #(traffic_packet) packet_queue;
    function new(mailbox #(traffic_packet) packet_queue);
        this.packet_queue = packet_queue;
    endfunction
    task g1();
        traffic_packet pkt;
        repeat (10) begin // Generate 10 packets
            pkt = new();
            pkt.randomize(); // Randomize packet fields
            packet_queue.put(pkt);
        end
    endtask
endclass
