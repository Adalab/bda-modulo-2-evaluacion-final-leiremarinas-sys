🚀 Ejercicio 1: Evaluación Final - Módulo 2

Este proyecto representa la culminación práctica del Módulo 2 del bootcamp de Análisis de Datos de Adalab.
Documenta un flujo completo de Extracción, Transformación, Carga y Análisis de Datos (ETL), cuyo objetivo es obtener datos de una fuente externa, cargarlos en una base de datos relacional y realizar análisis estadísticos y de consulta.

📋 1. Archivos del Repositorio Archivo Función Principal Leire_Ejercicio1.ipynb
Es el notebook de Python que orquesta el proyecto. Contiene el código para la Descarga, Transformación, Carga de datos a MySQL y la Ejecución de todas las consultas de análisis.

Ejercicio1_Fase4.sqlArchivo centralizado que almacena todas las sentencias SELECT diseñadas para el análisis de los datos cargados.

README.md Documentación oficial del flujo de trabajo, las fases del proyecto y los requerimientos.

2. Flujo de Trabajo y Fases del Proyecto
El proceso se lleva a cabo en tres fases principales, donde el notebook de Python (Leire_Ejercicio1.ipynb) actúa como el controlador central.

Fase 1: Extracción y Transformación (ET)
Esta fase se centra en obtener los datos de una API y prepararlos para su inserción en la base de datos MySQL.

Extracción: Se utiliza la librería requests de Python para descargar un archivo de datos en formato JSON desde una URL externa.

Transformación: Los datos se cargan en un DataFrame de Pandas. En este punto, se realiza la limpieza y adecuación de tipos de datos, crucialmente mapeando los valores nulos (NaN o None) a valores compatibles con SQL para evitar errores de inserción.

Fase 2: Carga (L)
Esta fase es responsable de transferir masivamente los datos limpios a la base de datos MySQL.

Conexión: El notebook establece una conexión con la base de datos Adalab_Peliculas, previamente configurada con la tabla peliculas.

Inserción Masiva: Se utiliza la función executemany del conector de MySQL para Python. Este método es el más eficiente para insertar cientos de registros en la tabla peliculas con una sola operación.

Fase 3: Análisis y Consultas (SQL desde Python)
La fase final valida la integridad de los datos y extrae información valiosa mediante análisis.

Lector de Consultas: El código de Python lee e interpreta las sentencias SELECT definidas en el archivo externo Ejercicio1_Fase4.sql.

Ejecución y Agregación: Se ejecutan consultas complejas que involucran agregaciones (COUNT, AVG), agrupaciones (GROUP BY) y filtrados (WHERE, ORDER BY).

Resultados: Los resultados del análisis son cargados y presentados como DataFrames de Pandas dentro del notebook, facilitando la visualización de insights como el promedio de duración por género o el conteo de películas por año.


