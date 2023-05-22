// Este módulo implementa un bus de multi_Drop_Bus de 4bits que permite que varios dispositivos compartan la misma conexión de bus.
module Multi_Drop_Bus(
	input		[7:0] Bus, // Entrada de datos transmitidos a través del bus.
	input 	CLK, R,    // Señales de reloj y reinicio del sistema.
	input		[1:0] EN,   // Selección de dispositivo que recibe los datos.
	output	reg	[7:0] Aen, // Señal de habilitación de recepción de datos del dispositivo A.
	output	reg	[7:0] Ben, // Señal de habilitación de recepción de datos del dispositivo B.
	output	reg	[7:0] Cen  // Señal de habilitación de recepción de datos del dispositivo C.


);


// Este bloque se encarga de habilitar la recepción de datos en el dispositivo A.   
	always @(posedge CLK or negedge R)
		begin: RegAen
			if(!R) // Si la señal de reinicio está en bajo.
				Aen <= 8'h00; // Se establece la señal de habilitación de recepción de datos en cero.
			else 
				if(EN == 2'b01) // Si la señal de selección de dispositivo es igual a 2'b01 (Aen).
					Aen <= Bus; // Se establece la señal de habilitación de recepción de datos en el valor de la señal de entrada "Bus".
		end
		
// Este bloque se encarga de habilitar la recepción de datos en el dispositivo B.
	always @(posedge CLK or negedge R)
		begin: RegBen
			if(!R) // Si la señal de reinicio está en bajo.
				Ben <= 8'h00; // Se establece la señal de habilitación de recepción de datos en cero
			else 
				if(EN == 2'b10) // Si la señal de selección de dispositivo es igual a 2'b10 (Ben)
					Ben <= Bus;// Se establece la señal de habilitación de recepción de datos en el valor de la señal de entrada "Bus".
		end
		// Este bloque se encarga de habilitar la recepción de datos en el dispositivo C.
			always @(posedge CLK or negedge R)
		begin: RegCen
			if(!R) // Se establece la señal de habilitación de recepción de datos en cero
				Cen <= 8'h00; // Se establece la señal de habilitación de recepción de datos en cero
			else 
				if(EN == 2'b11)  // Si la señal de selección de dispositivo es igual a 2'b11 (Cen)
					Cen <= Bus; // Se establece la señal de habilitación de recepción de datos en el valor de la señal de entrada "Bus".
		end
		endmodule