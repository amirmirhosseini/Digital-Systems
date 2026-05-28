`timescale 1ns/1ns
module c5_module (
    input clk,
    input rst,
    input rcIn,
    output logic txOut,
    output logic txValid,
    output logic txAbort
);

  wire seq_detected;
  wire j = ~rcIn;  

  partd seq_detector (
    .clk(clk),
    .rst(rst),
    .j(j),
    .w(seq_detected)
  );



  reg [7:0] shift_reg;
  wire abort_detected;

  always @(posedge clk or posedge rst) begin
    if (rst)
      shift_reg <= 8'b0;
    else
      shift_reg <= {shift_reg[6:0], rcIn};
  end

  assign abort_detected = (shift_reg == 8'b10000001);



  parameter IDLE = 2'b00,
            DETECTED = 2'b01,
            TRANSMIT = 2'b10;

  reg [1:0] ps, ns;
  reg [6:0] tx_cnt;


  always @(posedge clk or posedge rst) begin
    if (rst)
      ps <= IDLE;
    else
      ps <= ns;
  end


always @(ps  , seq_detected , tx_cnt , abort_detected , rcIn) begin
  ns = ps;
  txOut = 1;
  txValid = 0;
  txAbort = 0;
  case (ps)
    IDLE: begin
      txOut = 1;
      txValid = 0;
      txAbort = 0;
      if (seq_detected)
        ns = DETECTED;
    end
    DETECTED: begin
      txOut = rcIn;
      txValid = 1;
      txAbort = 0;
      ns = TRANSMIT;
    end
    TRANSMIT: begin
      txOut = rcIn;
      txValid = 1;
      txAbort = abort_detected;
      if (abort_detected || tx_cnt == 7'd96)
        ns = IDLE;
    end
  endcase
end



  always @(posedge clk or posedge rst) begin
    if (rst)
      tx_cnt <= 7'd0;
    else if (ps == TRANSMIT)
      tx_cnt <= tx_cnt + 1;
    else
      tx_cnt <= 7'd0;
  end
endmodule