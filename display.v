module display(entrada,saida);
	input[3:0]entrada;
	output reg[6:0]saida;

	always@(*)
	begin
		case(entrada)  //Saida para display na forma: {a,b,c,d,e,f,g}
			4'b0000: saida=~7'b1111110;
			4'b0001: saida=~7'b0110000;
			4'b0010: saida=~7'b1101101;
			4'b0011: saida=~7'b1111001;
			4'b0100: saida=~7'b0110011;
			4'b0101: saida=~7'b1011011;
			4'b0110: saida=~7'b1011111;
			4'b0111: saida=~7'b1110000;
			4'b1000: saida=~7'b1111111;
			4'b1001: saida=~7'b1110011;
			default: saida=~7'b0000000;
		endcase
	end
endmodule
