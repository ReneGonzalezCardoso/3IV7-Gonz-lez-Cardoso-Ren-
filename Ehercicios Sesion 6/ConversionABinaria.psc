Algoritmo ConversionABinaria
	Definir num, residuo Como Entero
	Definir binario Como Texto
	Definir reproducir Como Caracter
	
	Repetir
		binario = ""
		
		Escribir "Ingresa el número decimal que deseas convertir a binario:"
		Leer num
		
		Si num >= 0 Entonces
			Mientras num > 0 Hacer
				residuo = num % 2
				nuevobinario = ConvertirATexto(residuo)
				binario = nuevobinario + binario
				
				num = Trunc(num / 2)
			FinMientras
			
			Si binario = "" Entonces
				binario = "0"
			FinSi
			
			Escribir "El número en binario es: ", binario
		FinSi
		
		Escribir "¿Deseas convertir otro número decimal? (S/N)"
		Leer reproducir
	Hasta Que reproducir = "N" O reproducir = "n"
	
FinAlgoritmo

