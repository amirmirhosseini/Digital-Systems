`timescale 1ns/1ns

module logicblocktb;

  logic [7:0] AA, BB;
  logic Cii;
  logic [1:0] mm;


  wire Co_syn,Co_ref;
  wire [7:0] W_syn,W_ref;

  logicblock uut_ref (
    AA, BB, Cii, mm, Co_ref, W_ref
  );


  logicblock1 uut_syn (
    AA, BB, Cii, mm, Co_syn, W_syn
  );

  initial begin
    repeat (10) begin
      AA  = $random;
      BB  = $random;
      Cii = $random;
      mm  = $random % 4;
      #1000;
    end
    $finish;
  end

endmodule

