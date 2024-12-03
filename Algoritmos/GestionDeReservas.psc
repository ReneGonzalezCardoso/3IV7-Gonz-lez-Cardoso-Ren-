Algoritmo GestionDeReservasSimple
	
    Definir reservaActiva Como Logico
    Definir opcion Como Entero
	
    reservaActiva <- Falso
    
    Mientras opcion <> 4 Hacer
        Escribir "1. Registrar Reserva"
        Escribir "2. Cancelar Reserva"
        Escribir "3. Consultar Disponibilidad"
        Escribir "4. Salir"
        Leer opcion
		
        Si opcion = 1 Entonces
            reservaActiva <- Verdadero
            Escribir "Reserva registrada."
        FinSi
		
        Si opcion = 2 Entonces
            Si reservaActiva Entonces
                reservaActiva <- Falso
                Escribir "Reserva cancelada."
            Sino
                Escribir "No hay reserva para cancelar."
            FinSi
        FinSi
        
        Si opcion = 3 Entonces
            Si reservaActiva Entonces
                Escribir "Habitación ocupada."
            Sino
                Escribir "Habitación disponible."
            FinSi
        FinSi
    Fin Mientras
	
FinAlgoritmo
