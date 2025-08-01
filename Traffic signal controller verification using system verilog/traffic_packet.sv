class traffic_packet;

    // Input stimulus
    rand bit reset;

    // Expected output
    rand bit [2:0] expected_light;

    // Constraints (if needed)
    constraint expected_light_c {
        expected_light inside {3'b100, 3'b010, 3'b001}; // RED, YELLOW, GREEN
    }

    // Constructor
    function new();
        reset = 0;
        expected_light = 3'b000;
    endfunction

    // Print the packet details
    function void display();
        $display("Traffic Packet :: reset = %b, expected_light = %03b", reset, expected_light);
    endfunction
endclass
