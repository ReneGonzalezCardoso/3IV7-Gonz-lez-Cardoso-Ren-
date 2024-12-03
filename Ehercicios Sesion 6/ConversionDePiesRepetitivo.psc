Algoritmo ConversionDePies
	Definir pies, pulgadas, yardas, cm, metros Como Real
	Definir opcion Como Entero
	Definir reproducir Como Caracter
	
	Repetir
		Escribir "Ingresa la medida en pies:"
		Leer pies
		
		Escribir "Elige la conversión que deseas realizar:"
		Escribir "1. Convertir a Pulgadas"
		Escribir "2. Convertir a Yardas"
		Escribir "3. Convertir a Centímetros"
		Escribir "4. Convertir a Metros"
		Leer opcion
		
		Segun opcion Hacer
			1: 
				pulgadas = pies * 12
				Escribir pies, " pies son ", pulgadas, " pulgadas."
			2: 
				yardas = pies / 3
				Escribir pies, " pies son ", yardas, " yardas."
			3: 
				cm = pies * 12 * 2.54
				Escribir pies, " pies son ", cm, " centímetros."
			4: 
				metros = (pies * 12 * 2.54) / 100
				Escribir pies, " pies son ", metros, " metros."
			De Otro Modo:
				Escribir "Opción no válida."
		FinSegun
		
		Escribir "¿Deseas realizar otra conversión? (S/N)"
		Leer reproducir
	Hasta Que reproducir = "N" O reproducir = "n"
	
FinAlgoritmo

