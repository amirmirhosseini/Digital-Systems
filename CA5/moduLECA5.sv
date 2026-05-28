`timescale 1ns/1ns
module moduLECA5 (
    input clk,
    input rst,
    input rcIn,
    output logic txOut,
    output logic txValid,
    output logic txAbort
);

  wire seq_detected;
  wire j = ~rcIn;


  partd1 seq_detector (
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


  transmitter_core tx_core (
    .clk(clk),
    .rst(rst),
    .rcIn(rcIn),
    .start_transmit(seq_detected),
    .abort_detected(abort_detected),
    .txOut(txOut),
    .txValid(txValid),
    .txAbort(txAbort)
  );

endmodule

