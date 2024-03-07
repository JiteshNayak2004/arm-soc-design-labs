module mux(d,y,sel,en);
input logic [3:0]d;
input logic en;
input logic [1:0]sel;
output logic y;


always_comb begin
if(en==1'b0) begin
    case (sel)
    2'b00:y=d[0];
    2'b01:y=d[1];
    2'b10:y=d[2];
    2'b11:y=d[3]; 
    default: y=1'b0;
    endcase
    
end
else begin
    y=1'b0;
end


end


endmodule