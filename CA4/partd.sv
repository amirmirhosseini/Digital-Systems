`timescale 1ns/1ns
module partd1 (input clk, rst, j, output w);


  parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
  logic [1:0] ps, ns;


  logic [2:0] cnt;
  logic cen, ld, co;


  always @(posedge clk or posedge rst) begin
    if (rst)
      ps <= A;
    else
      ps <= ns;
  end


  always @(ps , j , co) begin

    ld = 0;
    cen = 0;
    ns = ps;

    case (ps)
      A: ns = j ? B : A;

      B: begin
	ld = 1;
        if (~j) begin
          ns = C;
        end else
          ns = B;
      end

      C: begin
        if (~j) begin
          if (~co) begin
            ns = C;
            cen = 1;
          end else
            ns = A;
        end else begin
          if (co)
            ns = D;
          else
            ns = B;
        end
      end

      D: ns = j ? B : A;

      default: ns = A;
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
    end
  end


  always @(cnt) begin
    if (cnt == 3'b110)
      co = 1'b1;
    else
      co = 1'b0;
  end


  assign w = (ps == D) ? 1'b1 : 1'b0;

endmodule

