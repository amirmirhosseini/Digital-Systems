`timescale 1ns/1ns

module c5_tb;

    logic clk, rst, rcIn;
    logic txOut, txValid, txAbort;
    logic txOut0, txValid0, txAbort0;

    serial_transmitter uut (
        .clk(clk),
        .rst(rst),
        .rcIn(rcIn),
        .txOut(txOut),
        .txValid(txValid),
        .txAbort(txAbort)
    );

    ca5_without_m cut (
        .clk(clk),
        .rst(rst),
        .rcIn(rcIn),
        .txOut(txOut0),
        .txValid(txValid0),
        .txAbort(txAbort0)
    );


    always #5 clk = ~clk;


    task send_bits(input [7:0] bits);
        integer i;
        begin
            for (i = 7; i >= 0; i = i - 1) begin
                rcIn = bits[i];
                #10;  
            end
        end
    endtask

    initial begin
       
        clk = 0;
        rst = 1;
        rcIn = 1;
        #20;

        rst = 0;
        #20;

        $display("Sending START sequence: 01111110");
        send_bits(8'b01111110); 

        #200;

        $display("Sending ABORT sequence: 10000001");
        send_bits(8'b10000001); 

        #200;

        $display("Test complete.");
        $stop;
    end

endmodule