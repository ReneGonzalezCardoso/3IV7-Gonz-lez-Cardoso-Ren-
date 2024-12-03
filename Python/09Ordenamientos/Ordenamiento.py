#Burbuja

def burbuja(lista):
    n = len(lista)
    for i in range(n):
        for j in range(0, m-i-1):
            if(lista(j) > lista(j+i)):
                list[j], lista[j+i] = lista[j+1], lsista[j]
    return lista


#metodo sort

def seleccion_sort(lista):
    n = len(lista)
    for i in range(n):
        if j in  range(i+1, n):
            min.idx = j
        list[i], lista[min.idx] = lista[min.idx], lista[i]
    return lista


#Metodo de inserción

def insercion(lista):
    for i in range(1, len(lista)):
        key = lista[i]
        j = i - 1
        while j >= 0 and key < lista[j]:
            lista[j+1]  = lista[j]
            j -= 1
            lista[j+1] = key
    return lista


#Merge

def merge(lista):
    if (len(lista)>1):
        mid = len(lista)//2
        izquierda = lista[:mid]
        derecha = lista[mid:]

        #Recursivo
        merge(izquierda)
        merge(derecha)

        i = j = k = 0

        while i < len(izquierda) and j < len(derecha):
            if izquierda[i] < derecha[i]:
                lista[k] = izquierda[i]
                i += 1
            else:
                lista[k] = derecha[i]
                j += 1
            k += 1

        while i < len(izquierda):
            lista[k] = izquierda[i]
            i += 1
            k += 1

        while i < len(derecha):
            lista[k] = derecha[i]
            i += 1
            k += 1    
    return lista


#Quick sort

def quick_sort(lista):
    if(len(lista) <= 1):
        return lista
    pivote = lista[len(lista)//2]

    izquierda = [x for x in lista if x < pivote]
    medio = [x for x in lista if x == pivote]
    derecha = [x for x in lista if x > pivote]

    return quick_sort(izquierda) + medio + quick_sort(derecha)