# 1. IMAGEN BASE: Usamos una versión ligera de Linux con Python 3.10 preinstalado.
# El sufijo '-slim' reduce el peso de la imagen para despliegues más rápidos.
FROM python:3.10-slim

# 2. DIRECTORIO DE TRABAJO: Definimos dónde vivirá nuestra app dentro del contenedor.
WORKDIR /app

# 3. GESTIÓN DE DEPENDENCIAS: Copiamos el archivo de librerías primero para aprovechar el caché de Docker.
COPY requirements.txt .

# 4. INSTALACIÓN: Instalamos las librerías sin guardar archivos temporales para ahorrar espacio.
RUN pip install --no-cache-dir -r requirements.txt

# 5. CÓDIGO FUENTE: Copiamos todo el contenido de nuestra carpeta actual al contenedor.
COPY . .

# 6. PUERTO: Informamos que la aplicación escuchará en el puerto 8000 (puerto estándar de FastAPI).
EXPOSE 8000

# 7. COMANDO DE ARRANQUE: Ejecutamos Uvicorn para encender el servidor.
# --host 0.0.0.0 permite conexiones externas (necesario en la nube).
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]