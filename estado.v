module estado(clk50mhz,up,down,reset,sDisplay);
	input up, down, clk50mhz, reset;
	output reg[6:0]sDisplay;
	reg[4:0]saida;
	reg[3:0]saida2;
	reg[4:0]entrada;
	parameter s0 = 5'b00000;

	temporizador T1(clk50mhz,clk1hz);
	interpretador I1(saida,saida2);
	display D1(saida2,sDisplay);
		
	always@(posedge clk1hz)
		begin
			if(reset)
				entrada <= s0;
			else	
				entrada <= saida;
		end
	
	always@(entrada,up,down)
	begin
		case({entrada, up, down})
			7'b0000000:	saida=	5'b00000;
			7'b0000001:	saida=   5'b01000;
			7'b0000010:	saida=	5'b00001;
			7'b0000011:	saida=	5'b01001;
			7'b0000100:	saida=	5'b00001;
			7'b0000101:	saida=	5'b00000;
			7'b0000110:	saida=	5'b00010;
			7'b0000111:	saida=	5'b01010;
			7'b0001000:	saida=	5'b00010;
			7'b0001001:	saida=	5'b00001;
			7'b0001010:	saida=   5'b00011;
			7'b0001011:	saida=	5'b01011;
			7'b0001100:	saida=	5'b00011;
			7'b0001101:	saida=	5'b00010;
			7'b0001110:	saida=	5'b00100;
			7'b0001111:	saida=	5'b01100;
			7'b0010000:	saida=	5'b00100;
			7'b0010001:	saida=	5'b00011;
			7'b0010010:	saida=	5'b00101;
			7'b0010011:	saida=	5'b01101;
			7'b0010100:	saida=	5'b00101;
			7'b0010101:	saida=	5'b00100;
			7'b0010110:	saida=	5'b00110;
			7'b0010111:	saida=	5'b01110;
			7'b0011000:	saida=	5'b00110;
			7'b0011001:	saida=	5'b00101;
			7'b0011010:	saida=	5'b00111;
			7'b0011011:	saida=	5'b01111;
			7'b0011100:	saida=	5'b00111;
			7'b0011101:	saida=	5'b00110;
			7'b0011110:	saida=	5'b01000;
			7'b0011111:	saida=	5'b10000;
			7'b0100000:	saida=	5'b01000;
			7'b0100001:	saida=	5'b00111;
			7'b0100010:	saida=	5'b00000;
			7'b0100011:	saida=	5'b10001;
			7'b0100100:	saida=	5'b00000;
			7'b0100101:	saida=	5'b00000;
			7'b0100110:	saida=	5'b00000;
			7'b0100111:	saida=	5'b01001;
			7'b0101000:	saida=	5'b00001;
			7'b0101001:	saida=	5'b00001;
			7'b0101010:	saida=	5'b00001;
			7'b0101011:	saida=	5'b01010;
			7'b0101100:	saida=	5'b00010;
			7'b0101101:	saida=	5'b00010;
			7'b0101110:	saida=	5'b00010;
			7'b0101111:	saida=	5'b01011;
			7'b0110000:	saida=	5'b00011;
			7'b0110001:	saida=	5'b00011;
			7'b0110010:	saida=	5'b00011;
			7'b0110011:	saida=	5'b01100;
			7'b0110100:	saida=	5'b00100;
			7'b0110101:	saida=	5'b00100;
			7'b0110110:	saida=	5'b00100;
			7'b0110111:	saida=	5'b01101;
			7'b0111000:	saida=	5'b00101;
			7'b0111001:	saida=	5'b00101;
			7'b0111010:	saida=	5'b00101;
			7'b0111011:	saida=	5'b01110;
			7'b0111100:	saida=	5'b00110;
			7'b0111101:	saida=	5'b00110;
			7'b0111110:	saida=	5'b00110;
			7'b0111111:	saida=	5'b01111;
			7'b1000000:	saida=	5'b00111;
			7'b1000001:	saida=	5'b00111;
			7'b1000010:	saida=	5'b00111;
			7'b1000011:	saida=	5'b10000;
			7'b1000100:	saida=	5'b01000;
			7'b1000101:	saida=	5'b01000;
			7'b1000110:	saida=	5'b01000;
			7'b1000111:	saida=	5'b10001;
			default: saida=5'b10001;
		endcase
	end
	
endmodule



