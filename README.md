🚀 Ejercicio 1: Flujo Completo de Extracción, Carga y Análisis de Datos de Películas (ETL)
Este proyecto documenta un flujo de trabajo integral de Ingeniería de Datos (ETL), cuyo objetivo es obtener datos de una fuente externa (API), cargarlos en una base de datos relacional (MySQL) y, finalmente, realizar análisis mediante consultas SQL ejecutadas desde Python.

📋 1. Fases del Proyecto
El proceso se divide en tres fases principales, ejecutadas secuencialmente por un único script de Python (analisis_peliculas.py):

Fase 1: Extracción y Transformación (ET)
Esta fase se centra en obtener los datos de la fuente y prepararlos para la base de datos.

Extracción: Se realiza una solicitud HTTP a una API específica para descargar un archivo de datos en formato JSON que contiene la información de las películas.

Transformación: Los datos JSON se cargan en un DataFrame de Pandas. Se realiza una limpieza esencial, donde los valores nulos (NaN) se convierten a None para ser aceptados correctamente como valores NULL por MySQL. Los datos se estructuran en tuplas listas para la inserción masiva.

Fase 2: Carga (L)
Esta fase es responsable de mover los datos limpios a la base de datos MySQL.

Conexión: El script establece una conexión con la base de datos Adalab_Peliculas.

Inserción Masiva: Se utiliza el método executemany del conector de Python para insertar todas las tuplas de datos simultáneamente en la tabla peliculas. Este es un método eficiente para la carga de grandes volúmenes de datos.

Confirmación: La transacción se confirma (commit) para hacer permanentes los cambios en la base de datos.

Fase 3: Análisis y Consultas (SQL desde Python)
Una vez que los datos están cargados, la fase final se enfoca en el análisis.

Lectura del Archivo SQL: El script lee y separa las consultas definidas en el archivo externo Ejercicio1_Fase4.sql.

Ejecución de Consultas: Cada consulta SQL es ejecutada individualmente contra la base de datos utilizando la librería Pandas (pd.read_sql).

Visualización de Resultados: Los resultados de cada consulta (por ejemplo, el conteo de películas largas, el promedio de duración por género, o la película más antigua) son devueltos como DataFrames de Pandas y se muestran en la consola para su interpretación.

🛠️ 2. Componentes Clave
Componente	Función
MySQL	Almacena los datos en la tabla peliculas.
requests	Permite la descarga del JSON desde la API.
pandas	Herramienta fundamental para la limpieza, estructuración (DataFrame) y presentación de los resultados del análisis.
mysql-connector	Biblioteca esencial que permite a Python comunicarse, conectarse y ejecutar comandos en MySQL.
Ejercicio1_Fase4.sql	Archivo centralizado que contiene todas las sentencias SELECT para el análisis de la información.
