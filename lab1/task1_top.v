module hex_to_7seg (out, in);

    output [6:0] out;       // low-active output for 7-segment display
    input [3:0] in;         // 4-bit binary input

    reg [6:0] out;          // make 'out' a variable

    always @(*) begin
        case (in)
            4'h0: out = 7'b1000000;  // Display 0
            4'h1: out = 7'b1111001;  // Display 1
            4'h2: out = 7'b0100100;  // Display 2
            4'h3: out = 7'b0110000;  // Display 3
            4'h4: out = 7'b0011001;  // Display 4
            4'h5: out = 7'b0010010;  // Display 5
            4'h6: out = 7'b0000010;  // Display 6
            4'h7: out = 7'b1111000;  // Display 7
            4'h8: out = 7'b0000000;  // Display 8
            4'h9: out = 7'b0010000;  // Display 9
            4'hA: out = 7'b0001000;  // Display A
            4'hB: out = 7'b0000011;  // Display B
            4'hC: out = 7'b1000110;  // Display C
            4'hD: out = 7'b0100001;  // Display D
            4'hE: out = 7'b0000110;  // Display E
            4'hF: out = 7'b0001110;  // Display F
            default: out = 7'b1111111; // Default (off)
        endcase
    end

endmodule