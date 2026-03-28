# 🚀 Preparación de Entorno Técnico - Actividad 1.2
**Ingeniería en Datos e IA**

Este repositorio contiene la investigación y configuración de un entorno técnico para desarrollar soluciones de Inteligencia Artificial en la nube.

## 🛠️ Herramientas Seleccionadas

1. **IDE Online:** GitHub Codespaces.
2. **Control de Versiones:** GitHub.
3. **Entorno de Ejecución:** Docker con Python 3.10.
4. **Despliegue:** Render / Railway (Estrategia PaaS).
5. **Base de Datos:** Supabase (PostgreSQL).

## 📑 Justificación Técnica

* **Compatibilidad:** El uso de Docker permite que el entorno sea agnóstico al sistema operativo. Si funciona en mi PC, funcionará en la nube sin cambios.
* **Escalabilidad:** Al usar una base de datos externa como Supabase, el almacenamiento de datos puede crecer independientemente del código.
* **Integración Cloud:** GitHub Codespaces permite editar el código directamente en la nube, facilitando el trabajo colaborativo y la integración continua (CI/CD) con Render.

## ⚙️ Instrucciones de Replicación

1. Crear un repositorio en GitHub a partir de estos archivos.
2. Habilitar **GitHub Codespaces** para el desarrollo online.
3. Ejecutar `docker build -t mi-entorno-ia .` para construir la imagen.
4. Conectar el repositorio a **Render** para el despliegue automático.