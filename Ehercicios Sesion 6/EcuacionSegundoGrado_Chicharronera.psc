Algoritmo EcuacionSegundoGrado_Chicharronera
	Definir a, b, c, discriminante, realParte, imaginariaParte, x1, x2 Como Real
	Definir reproducir Como Caracter
	
	Repetir
		Escribir "Ingresa el valor de a:"
		Leer a
		Escribir "Ingresa el valor de b:"
		Leer b
		Escribir "Ingresa el valor de c:"
		Leer c
		
		discriminante = b^2 - 4 * a * c
		
		Si discriminante >= 0 Entonces
			Si discriminante > 0 Entonces
				x1 = (-b + raiz(discriminante)) / (2 * a)
				x2 = (-b - raiz(discriminante)) / (2 * a)
				Escribir "Las soluciones reales son: x1 = ", x1, " y x2 = ", x2
			SiNo
				x1 = -b / (2 * a)
				Escribir "La solución real doble es: x = ", x1
			FinSi
		SiNo
			Escribir "Las soluciones son imaginarias."
		FinSi
		
		Escribir "¿Deseas resolver otra ecuación? (S/N)"
		Leer reproducir
	Hasta Que reproducir = "N" O reproducir = "n"
	
FinAlgoritmo

