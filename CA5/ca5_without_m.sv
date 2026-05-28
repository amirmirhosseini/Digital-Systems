`timescale 1ns/1ns
module ca5_without_m1 (
    input clk,
    input rst,
    input rcIn,
    output logic txOut,
    output logic txValid,
    output logic txAbort
);



  parameter [1:0] A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
  logic [1:0] ps_seq, ns_seq;
  logic [2:0] cnt;
  logic cen, ld, co;
  logic seq_detected;
  wire j = ~rcIn;



  always @(posedge clk or posedge rst) begin
    if (rst)
      ps_seq <= A;
    else
      ps_seq <= ns_seq;
  end

  always @(ps_seq, j, co) begin
    ld = 0;
    cen = 0;
    ns_seq = ps_seq;
    case (ps_seq)
      A: ns_seq = j ? B : A;
      B: begin
        if (~j) begin
          ns_seq = C;
          ld = 1;
        end else
          ns_seq = A;
      end
      C: begin
        if (~j) begin
          if (~co) begin
            ns_seq = C;
            cen = 1;
          end else
            ns_seq = A;
        end else begin
          if (co)
            ns_seq = D;
          else
            ns_seq = B;
        end
      end
      D: ns_seq = j ? B : A;
      default: ns_seq = A;
    endcase
  end


  always @(posedge clk or posedge rst) begin
    if (rst)
      cnt <= 3'b000;
    else begin
      if (ld)
        cnt <= 3'b001;
      else if (cen)
        cnt <= cnt + 1;
      else
        cnt <= cnt;
    end
  end

  always @(*) begin
    co = (cnt == 3'b110) ? 1'b1 : 1'b0;
  end

  assign seq_detected = (ps_seq == D);



  reg [7:0] shift_reg;
  wire abort_detected = (shift_reg == 8'b10000001);

  always @(posedge clk or posedge rst) begin
    if (rst)
      shift_reg <= 8'b0;
    else
      shift_reg <= {shift_reg[6:0], rcIn};
  end



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


  always @(ps, seq_detected, tx_cnt, abort_detected, rcIn) begin
    ns = ps;
    txOut = 1;
    txValid = 0;
    txAbort = 0;
    case (ps)
      IDLE: begin
        txOut = 1;
        if (seq_detected)
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

