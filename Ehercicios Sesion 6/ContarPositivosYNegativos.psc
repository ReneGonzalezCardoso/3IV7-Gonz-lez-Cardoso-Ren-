Algoritmo ContarPositivosYNegativos
	Definir n, num, positivos, negativos, contador Como Entero
	Definir reproducir Como Caracter
	
	Repetir
		positivos = 0
		negativos = 0
		
		Escribir "¿Cuántos números deseas introducir?"
		Leer n
		
		Para contador = 1 Hasta n Con Paso 1 Hacer
			Escribir "Ingresa el número ", contador, ":"
			Leer num
			
			Si num > 0 Entonces
				positivos = positivos + 1
			SiNo
				Si num < 0 Entonces
					negativos = negativos + 1
				FinSi
			FinSi
		FinPara
		
		Escribir "Cantidad de números positivos: ", positivos
		Escribir "Cantidad de números negativos: ", negativos
		
		Escribir "¿Deseas contar otra serie de números? (S/N)"
		Leer reproducir
	Hasta Que reproducir = "N" O reproducir = "n"
	
FinAlgoritmo
