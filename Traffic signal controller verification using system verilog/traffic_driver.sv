class traffic_driver;

    virtual traffic_if.TB vif;

    function new(virtual traffic_if.TB vif);
        this.vif = vif;
    endfunction

    task drive (traffic_packet pkt);
        vif.reset = pkt.reset;
        @(posedge vif.clk);
        vif.reset = 0; // De-assert reset after one clock cycle
    endtask
endclass
