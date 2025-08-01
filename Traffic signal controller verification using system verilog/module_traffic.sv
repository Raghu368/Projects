module traffic(
    input logic clk,
    input logic reset,
    output logic [2:0] light
);

typedef enum logic [1:0] {
    S_RED = 2'b00,
    S_GREEN = 2'b01,
    S_YELLOW = 2'b10
} state_t;

state_t state, next_state;
logic [3:0] count;

always_ff @(posedge clk or posedge reset) begin
    if (reset)
        state <= S_RED;
    else
        state <= next_state;
end

always_comb begin
    next_state = state;
    case (state)
        S_RED:    if (count == 4'd10) next_state = S_GREEN;
        S_GREEN:  if (count == 4'd10) next_state = S_YELLOW;
        S_YELLOW: if (count == 4'd5)  next_state = S_RED;
        default:  next_state = S_RED;
    endcase
end

always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        light <= 3'b100;
        count <= 0;
    end else begin
        count <= count + 1;
        case (state)
            S_RED:    light <= 3'b100;
            S_GREEN:  light <= 3'b001;
            S_YELLOW: light <= 3'b010;
        endcase
    end
end

endmodule
