// Eric Yeats / Brady Taylor
// ECE 552 Advanced Computer Architecture I
// Final Project
// Efferent Weight Matrix


// This module represents a 2D (n x n) memory which contains
// the weights of the efferent connections from
// a neuron to all other neurons. Weights of 0
// indicate that no connection exists between neurons

// support row (src neuron tag) select and column (dst neuron tag) select
// todo - support data load in sequential format

module efferent_weight_matrix(clk, src_tag, dst_tag, write_en, weight_in, weight_out);

    parameter numwidth = 16;
    parameter tagbits = 1;
    parameter numneurons = 2;

    input clk, write_en;
    input [tagbits-1:0] src_tag, dst_tag;
    input [numwidth:0] weight_in;
    output [numwidth:0] weight_out;

    // type declarations
    wire clk, write_en;
    wire [tagbits-1:0] src_tag, dst_tag;
    wire [numwidth:0] weight_in;
    wire [numwidth:0] weight_out;
    
    // local storage
    reg [numwidth:0] mem [0:numneurons-1][0:numneurons-1];

    assign weight_out = mem[src_tag][dst_tag];

    always @(posedge clk) begin
        // support write
        if (write_en) begin
            mem[src_tag][dst_tag] <= weight_in;
        end

    end
endmodule