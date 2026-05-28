`timescale 1ns/1ns

module logicblocktb;

  logic [7:0] A, B;
  logic Ci;
  logic [1:0] m;


  wire Co_ref;
  wire [7:0] W_ref;

  logicblock uut_ref (
    .A(A), .B(B), .Ci(Ci), .m(m), .Co(Co_ref), .W(W_ref)
  );




  initial begin
    repeat (10) begin
      A  = $random;
      B  = $random;
      Ci = $random;
      m  = $random % 4;
      #10;
    end
    $finish;
  end

endmodule

