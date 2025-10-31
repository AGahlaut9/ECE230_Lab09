module d_latch(
    input D, E,
    output reg Q, 
    output NotQ
);

    // Will contain D-Latch behavior
    always @(D, E) begin
        if(E)
            Q <= D;
        end
        
        assign NotQ = ~Q;
        
endmodule