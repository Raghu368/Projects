interface traffic_if(input logic clk);
  logic reset;
  logic [2:0] light;

  // Modports
  modport DUT (input reset, clk, output light);
  modport TB (output reset, input clk, input light);
endinterface
