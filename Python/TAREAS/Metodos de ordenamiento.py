import tkinter as tk
from tkinter import messagebox
import time

# Métodos de ordenamiento básicos
def burbuja(lista):
    n = len(lista)
    for i in range(n):
        for j in range(0, n - i - 1):
            if lista[j] > lista[j + 1]:
                lista[j], lista[j + 1] = lista[j + 1], lista[j]
    return lista

def insercion(lista):
    for i in range(1, len(lista)):
        key = lista[i]
        j = i - 1
        while j >= 0 and key < lista[j]:
            lista[j + 1] = lista[j]
            j -= 1
        lista[j + 1] = key
    return lista

def quick_sort(lista):
    if len(lista) <= 1:
        return lista
    pivote = lista[len(lista) // 2]
    izquierda = [x for x in lista if x < pivote]
    medio = [x for x in lista if x == pivote]
    derecha = [x for x in lista if x > pivote]
    return quick_sort(izquierda) + medio + quick_sort(derecha)

# Función principal para ordenar
def ordenar():
    try:
        numeros = list(map(int, entrada.get().split(',')))
        if len(numeros) > 40:
            messagebox.showerror("Error", "La lista no puede tener más de 40 números.")
            return

        metodo = metodo_var.get()
        if metodo == "":
            messagebox.showerror("Error", "Selecciona un método de ordenamiento.")
            return

        inicio = time.time()
        if metodo == "Burbuja":
            ordenada = burbuja(numeros.copy())
        elif metodo == "Inserción":
            ordenada = insercion(numeros.copy())
        elif metodo == "Quick Sort":
            ordenada = quick_sort(numeros.copy())
        fin = time.time()

        resultado.set(f"Lista original: {numeros}\nLista ordenada: {ordenada}\nTiempo: {fin - inicio:.6f} segundos")
    except ValueError:
        messagebox.showerror("Error", "Por favor, ingresa solo números separados por comas.")

# Crear ventana principal
ventana = tk.Tk()
ventana.title("Ordenamiento de listas")
ventana.geometry("400x300")

tk.Label(ventana, text="Ingresa una lista de números separados por comas (máximo 40):").pack(pady=10)
entrada = tk.Entry(ventana, width=50)
entrada.pack(pady=5)

tk.Label(ventana, text="Selecciona un método de ordenamiento:").pack(pady=10)
metodo_var = tk.StringVar(value="")
metodos = ["Burbuja", "Inserción", "Quick Sort"]
for metodo in metodos:
    tk.Radiobutton(ventana, text=metodo, variable=metodo_var, value=metodo).pack(anchor="w")

tk.Button(ventana, text="Ordenar", command=ordenar).pack(pady=20)

resultado = tk.StringVar(value="")
tk.Label(ventana, textvariable=resultado, wraplength=380, justify="left").pack(pady=10)

ventana.mainloop()
