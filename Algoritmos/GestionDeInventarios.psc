Algoritmo GestionDeInventariosSimple
	
    Definir stockActual, opcion, cantidadProducto Como Entero
    
    stockActual <- 0
    
    Mientras opcion <> 4 Hacer
        Escribir "1. Ingresar Productos"
        Escribir "2. Actualizar Stock"
        Escribir "3. Consultar Stock"
        Escribir "4. Salir"
        Leer opcion
		
        Si opcion = 1 Entonces
            Escribir "Ingrese la cantidad de productos:"
            Leer cantidadProducto
            stockActual <- stockActual + cantidadProducto
            Escribir "Stock actualizado."
        FinSi
        
        Si opcion = 2 Entonces
            Escribir "Ingrese cantidad vendida:"
            Leer cantidadProducto
            stockActual <- stockActual - cantidadProducto
            Escribir "Stock actualizado."
        FinSi
        
        Si opcion = 3 Entonces
            Escribir "Stock actual: ", stockActual
        FinSi
    Fin Mientras
	
FinAlgoritmo