module encoder(D,en,y);

input logic [3:0]D,en;
output logic [1:0]y;

always_comb begin 
assign y=2'b00;
    casez (D)
        
        4'b0001:y=2'b00;
        4'b001?:y=2'b01;
        4'b01??:y=2'b10;
        4'b1???:y=2'b11;

        default: y=2'b00;
    endcase
    
end


endmodule
