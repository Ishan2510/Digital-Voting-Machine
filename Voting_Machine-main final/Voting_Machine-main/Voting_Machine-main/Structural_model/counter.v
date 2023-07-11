/////////////////////////////////////////////////////////////////////////////////////////
// Filename: counter.v
// Description: Design of a 3 candidate voting machine using asynchronous reset up counter as its component.
// Nomencleture: i = Input, o = Output            
/////////////////////////////////////////////////////////////////////////////////////////
module counter (
    input clk,
    input clear,                                                  // active-high clear
    input i_in,                                                   
    input i_enable,                                               // active-low enable
    output reg [31:0] o_out                                       // output for total number of votes of the candidate
);
    reg [31:0] count = 32'b0;                                    // counting register for the candidate with intial value set as zero

    always @(posedge clk or negedge clear) begin
        if (clear == 1'b0) begin
            if (i_enable == 1'b0) begin   //enabled
                if (i_in == 1'b1) begin
                    count = count + 1;
                end 
                else begin
                    count = count;
                end
            end
            else begin //disable
                count = 32'bX;
            end
        end
        else begin
            count = 0;
        end
        
        o_out = count;                                          // provide value of counting registers at output
    end
endmodule
