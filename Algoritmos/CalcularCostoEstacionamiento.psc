Proceso CalcularCostoEstacionamiento
	Definir horaEntrada, minutoEntrada, horaSalida, minutoSalida, horas, minutos, totalMinutos Como Entero
	Definir costoTotal, costoHorasCompletas, costoFracciones Como Real
	
	Escribir "Ingrese la hora de entrada (0 a 23): "
	Leer horaEntrada
	Escribir "Ingrese los minutos de entrada (0 a 59): "
	Leer minutoEntrada
	
	Escribir "Ingrese la hora de salida (0 a 23): "
	Leer horaSalida
	Escribir "Ingrese los minutos de salida (0 a 59): "
	Leer minutoSalida
	
	horas = horaSalida - horaEntrada
	minutos = minutoSalida - minutoEntrada
	
	Si minutos < 0 Entonces
		horas = horas - 1
		minutos = minutos + 60
	FinSi
	
	totalMinutos = (horas * 60) + minutos
	
	Si totalMinutos < 15 Entonces
		costoTotal = 0
	Sino
		costoHorasCompletas = (totalMinutos / 60) * 15
		
		minutosRestantes = totalMinutos % 60
		
		Si minutosRestantes > 0 Entonces
			costoFracciones = ((minutosRestantes + 14) / 15) * 6
		SiNo
			costoFracciones = 0
		FinSi
		
		costoTotal = costoHorasCompletas + costoFracciones
	FinSi
	
	Escribir "El costo total a pagar es: ", costoTotal, " pesos."
FinProceso
