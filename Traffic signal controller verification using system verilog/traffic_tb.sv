`include "traffic_if.sv"
`include "test.sv"

module traffic_tb;

logic clk;
traffic_if tb_if(clk);

traffic dut (
  .clk(tb_if.clk),
  .reset(tb_if.reset),
  .light(tb_if.light)
);

// Clock generation
initial begin
  clk = 0;
  forever #5 clk = ~clk; // 10 ns clock period
end

// Run the test
initial begin
  traffic_test test = new(tb_if.TB);
  test.run();
  #1000; // Run simulation for 1000 time units
  $finish;
end

endmodule
