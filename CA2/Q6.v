`timescale 1ns/1ns  
module C16B(input [15:0] a, b, output g6t, e6t);  
    wire [7:0] eqj;  
    wire [7:0] gtj;  
    wire [3:0] eq_layer1;  
    wire [3:0] gt_layer1;  
    wire [1:0] eq_layer2;  
    wire [1:0] gt_layer2;  

    genvar j;  
    generate  
        for (j = 0; j < 8; j = j + 1) begin  
            C1B cmp2bit(a[2*j+1 : 2*j], b[2*j+1 : 2*j], gtj[j], eqj[j]);  
        end  
    endgenerate  

    genvar k;  
    generate  
        for (k = 0; k < 4; k = k + 1) begin  
            GTEQ ge_layer1(eqj[2*k], eqj[2*k+1], gtj[2*k], gtj[2*k+1], gt_layer1[k], eq_layer1[k]);  
        end  
    endgenerate  

    generate  
        for (k = 0; k < 2; k = k + 1) begin  
            GTEQ ge_layer2(eq_layer1[2*k], eq_layer1[2*k+1], gt_layer1[2*k], gt_layer1[2*k+1], gt_layer2[k], eq_layer2[k]);  
        end  
    endgenerate  

    GTEQ final_compare(eq_layer2[0], eq_layer2[1], gt_layer2[0], gt_layer2[1], g6t, e6t);  
endmodule  

