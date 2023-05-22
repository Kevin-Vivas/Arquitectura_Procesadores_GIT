module ROM(
    output  reg [6:0] Data_Out_Rom,
    input wire [4:0] Address_Rom,
	 input wire En,
    input wire clock 
);
reg [6:0] ROM[0:32];



initial 

begin
 ROM[0]  =  7'b1111111;  //Espacio
 ROM[1]  =  7'b0001000;  //Letra A
 ROM[2]  =  7'b0000011;  //Letra B
 ROM[3]  =  7'b1000110;  //Letra c
 ROM[4]  =  7'b0100001 ; //letra D
 ROM[5]  =  7'b0000110 ; //Letra E
 ROM[6]  =  7'b0001110 ; //Letra F
 ROM[7]  =  7'b0010000 ; //Letra G
 ROM[8]  =  7'b0001011 ; //Letra H
 ROM[9]  =  7'b1111001 ; //Letra I
 ROM[10] =  7'b1110001 ; //Letra J
 ROM[11] =  7'b0001001 ; //Letra K
 ROM[12] =  7'b1000111 ; //Letra L 
 ROM[13] =  7'b1001000 ; //Letra M
 ROM[14] =  7'b0101011 ; //Letra N
 ROM[15] =  7'b0101010 ; //Letra Ñ
 ROM[16] =  7'b1000000 ; //Letra O
 ROM[17] =  7'b0001100 ; //Letra P
 ROM[18] =  7'b0011000 ; //Letra Q
 ROM[19] =  7'b0101111 ; //Letra R
 ROM[20] =  7'b0010010 ; //Letra S
 ROM[21] =  7'b0000111 ; //Letra T 
 ROM[22] =  7'b1100011 ; //Letra U
 ROM[23] =  7'b1000001 ; //Letra V
 ROM[24] =  7'b0110000 ; //Letra W
 ROM[25] =  7'b0000101 ; //Letra x
 ROM[26] =  7'b0010001 ; //Letra Y
 ROM[27] =  7'b0100100 ; //Letra Z
 ROM[28] =  7'b1111111 ; //Espacio   
 ROM[29] =  7'b1111111 ; //Espacio
 ROM[30] =  7'b1111111 ; //Espacio
 ROM[31] =  7'b1111111 ; //Espacio
 
 Data_Out_Rom = 7'b1111111;

end

always @(posedge clock, negedge En ) begin

	if(En == 1'b0)begin
		Data_Out_Rom = 7'b1111111;
	end else begin
		Data_Out_Rom = ROM[Address_Rom];
	end
	//Data_Out_Rom = ROM[Address_Rom];
end    

endmodule