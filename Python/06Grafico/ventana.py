import tkinter as tk 
from tkinter import ttk 
from tkinter import messagebox

# Crear la ventana principal
ventana = tk.Tk()

# Botón para una función de saludar
def mostrar_saludo():
    nombre = entrada_nombre.get()
    saludo = f"Hola {nombre}"
    etiqueta_saludo.config(text=saludo)

# Función para mostrar el estado de la casilla de verificación
def mostar_estado_casilla():
    estado = "Seleccionado" if casilla_var.get() else "No seleccionado"
    etiqueta_casilla.config(text=f"Estado de la casilla: {estado}")

# Función para un radio button
def mostar_opcion():
    pass

# Etiqueta de bienvenida
etiqueta_vivienvenida = tk.Label(ventana, text="Bienvenido a tu primera interfaz", font=("Arial", 16))
etiqueta_vivienvenida.pack(pady=10)

# Botón para mostrar saludo
boton_saludo = tk.Button(ventana, text="Saludar", command=mostrar_saludo)
boton_saludo.pack(pady=10)

ventana.mainloop()
