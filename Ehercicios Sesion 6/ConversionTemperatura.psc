Algoritmo ConversionTemperatura
	Definir fahrenheit, celsius, kelvin, rankine Como Real
	Definir opcion Como Entero
	Definir reproducir Como Caracter
	
	Repetir
		Escribir "Ingresa la temperatura en grados Fahrenheit:"
		Leer fahrenheit
		
		Escribir "Elige la conversión que deseas realizar:"
		Escribir "1. Convertir a Celsius"
		Escribir "2. Convertir a Kelvin"
		Escribir "3. Convertir a Rankine"
		Leer opcion
		
		Segun opcion Hacer
			1: 
				celsius = (fahrenheit - 32) * 5 / 9
				Escribir fahrenheit, " grados Fahrenheit son ", celsius, " grados Celsius."
			2: 
				kelvin = (fahrenheit - 32) * 5 / 9 + 273.15
				Escribir fahrenheit, " grados Fahrenheit son ", kelvin, " grados Kelvin."
			3: 
				rankine = fahrenheit + 459.67
				Escribir fahrenheit, " grados Fahrenheit son ", rankine, " grados Rankine."
			De Otro Modo:
				Escribir "Opción no válida."
		FinSegun
		
		Escribir "¿Deseas realizar otra conversión de temperatura? (S/N)"
		Leer reproducir
	Hasta Que reproducir = "N" O reproducir = "n"
	
FinAlgoritmo
