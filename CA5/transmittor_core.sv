module transmitter_core(
    input clk,
    input rst,
    input rcIn,
    input start_transmit,         
    input abort_detected,         
    output logic txOut,
    output logic txValid,
    output logic txAbort
);

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



  always @(ps, start_transmit, tx_cnt, abort_detected, rcIn) begin
    ns = ps;
    txOut = 1;
    txValid = 0;
    txAbort = 0;

    case (ps)
      IDLE: begin
        if (start_transmit)
          ns = DETECTED;
      end
      DETECTED: begin
        txOut = rcIn;
        txValid = 1;
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
      tx_cnt <= 0;
    else if (ps == TRANSMIT)
      tx_cnt <= tx_cnt + 1;
    else
      tx_cnt <= 0;
  end

endmodule

