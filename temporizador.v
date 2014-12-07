module temporizador(clock, saida);
input clock;
output saida;

reg [25:0] conta;

 always@(posedge clock) begin
     conta <= conta + 1;
 end
 
 assign saida = conta[25];

endmodule

