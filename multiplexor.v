module multiplexor(
    input [1:0] Sel,
    input [7:0] A, 
    input [7:0] B, 
    input [7:0] C, 
    input [7:0] D,
    output [7:0] output1
    );
    
        assign output1 = ((Sel == 2'b00) ? A : (Sel == 2'b01) ? B : (Sel == 2'b10) ? C : D);
endmodule