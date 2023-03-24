`timescale 1ns / 1ps


module project_2(
    input x,
    input clk,
    input rst,
    output reg y
    );
    
    reg [3:0] state;
    reg [3:0] next_state;
    reg a_dec;
    reg b_dec;
    parameter S0 = 3'd0,
    S1 = 3'd1,
    S2 = 3'd2,
    S3 = 3'd3,
    S4 = 3'd4,
    S5 = 3'd5,
    S6 = 3'd6;
    
    initial begin
        next_state <= S0;
        a_dec <= 0;
        b_dec <= 0;
    end
    
    always @(posedge clk or posedge rst)
        if(rst == 1)
            begin
            state <= S0;
            end
        else
            state <= next_state;            
        
    always @(state or x)
        begin
        case(state)
        S0: begin
            y <= 0; 
            if (x==0)
                next_state <= S1;
            else
                next_state <= S0;
            end
        S1: begin
            y <= 0;
            if(x==0)
                next_state <= S3;
            else
                next_state <= S2;
            end
        S2: begin
            y <= 0;
            if( x==0 )
                next_state <= S4;
            else
                next_state <= S0;
            end            
        S3: begin
            y <= 0;
            if(x==0)
                next_state <= S3;
            else
                next_state <= S5;
            end
        S4: begin
            if(x==0)
                begin
                if(b_dec==0)
                    begin
                    next_state <= S3;
                    y <= 1;
                    end
                else
                    begin
                    next_state <= S6;
                    y <= 1;
                    end
                end
            else
                begin
                next_state <= S2;
                y <= 0;
                end
            end
        S5: begin
            if(x==0)
                begin
                if(a_dec==0)
                    begin
                    next_state <= S4;
                    y <= 1;
                    a_dec <= 1;
                    end
                else
                    begin
                    next_state <= S6;
                    y <= 1;
                    end
                end
            else
                begin
                next_state <= S0;
                y <= 0;
                end
            end
        S6: begin
            y <= 1;
            next_state <= S6;
            a_dec <= 0;
            b_dec <= 0;
            end
        default: next_state <= S0;
        endcase
        end
endmodule
