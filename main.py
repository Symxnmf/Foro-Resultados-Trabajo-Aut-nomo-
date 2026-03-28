# Importamos la librería FastAPI para crear nuestra API
from fastapi import FastAPI

# Inicializamos la aplicación
app = FastAPI()

# Definimos la ruta principal (el "Home")
@app.get("/")
def read_root():
    """
    Esta función se ejecuta cuando alguien entra a la URL base.
    Sirve como prueba de que el entorno cloud está activo.
    """
    return {
        "estado": "Entorno Cloud Configurado ✅",
        "actividad": "Actividad 1.2 - Ingeniería en Datos e IA",
        "infraestructura": "Docker + Python + FastAPI",
        "mensaje": "El entorno técnico está listo para procesar datos."
    }