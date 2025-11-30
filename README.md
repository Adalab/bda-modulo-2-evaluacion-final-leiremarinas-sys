🚀 Ejercicio 1: Evaluación Final - Módulo 2

Este proyecto representa la culminación práctica del Módulo 2 del bootcamp de Análisis de Datos de Adalab. Documenta un flujo completo de Extracción, Transformación, Carga y Análisis de Datos (ETL), cuyo objetivo es obtener datos de una fuente externa, cargarlos en una base de datos relacional y realizar análisis estadísticos y de consulta.

📋 1. Archivos del Repositorio Archivo Función Principal

Leire_Ejercicio1.ipynbEs el notebook de Python que orquesta el proyecto. 
Contiene el código para la Descarga, Transformación, Carga de datos a MySQL y la Ejecución de todas las consultas de análisis.

Ejercicio1_Fase4.sql Archivo centralizado que almacena las sentencias SELECT diseñadas para el análisis inicial.

README.md Documentación oficial del flujo de trabajo, las fases del proyecto y los requerimientos.

2. Flujo de Trabajo y Fases del ProyectoEl proceso se lleva a cabo en tres fases principales, con un paso de corrección y ampliación posterior para asegurar la integridad de los datos.

Fase 1: Extracción y Transformación (ET)Esta fase inicial se encarga de preparar los datos para su inserción en MySQL.
Extracción: Se utiliza la librería requests de Python para descargar un archivo de datos en formato JSON desde una URL externa.
Transformación: Los datos se cargan en un DataFrame de Pandas. Se realiza la limpieza y adecuación de tipos de datos, crucialmente mapeando los valores nulos (NaN o None) a valores compatibles con SQL para evitar errores de inserción.

Fase 2: Se crea la conexión con SQL y la BD Adalab_Peliculas

FASE 3: Esta fase es responsable de transferir masivamente los datos limpios a la base de datos MySQL.Conexión: El notebook establece una conexión con la base de datos Adalab_Peliculas, y crea la tabla peliculas dentro de la misma.
Inserción Masiva: Se utiliza la función executemany del conector de MySQL para Python.

FASE 4: Consultas sobre la tabla creada con los datos importados de la API. EN este caso las consultas se realizan en un archivo SQL llamado Ejercicio1_Fase4.sql y después se automatiza en python la ejecución de todas las queries con sus reusltados



⚠️ Corrección y Ampliación de la Carga (Post-Inicial)

Durante la importación inicial, no se incluyó la columna Subtitulos en la tabla peliculas.
Para corregir esto y asegurar que todos los datos estén disponibles para el análisis, se ejecutaron pasos adicionales desde el notebook:

Modificación de la Estructura: Se utilizó el comando ALTER TABLE desde Python para añadir la columna Subtitulos a la tabla de MySQL.
Preparación del Dato: Los datos de subtítulos (originalmente listas de Python) se transformaron a una única cadena de texto (string) separada por comas, compatible con el tipo VARCHAR de MySQL.
Actualización de Datos: Se ejecutó una sentencia UPDATE masiva (utilizando executemany) para rellenar la nueva columna Subtitulos en todas las filas de la tabla.

Tras la corrección de la columna, se añadió una consulta adicional y específica desde Python para responder a la query faltante: "¿Cuántas películas incluyen subtítulos en español?". Esta consulta utiliza el operador LIKE para buscar la subcadena 'es' en la nueva columna Subtitulos.Resultados: Los resultados del análisis son cargados y presentados como DataFrames de Pandas dentro del notebook.


🚀 Ejercicio 2: Evaluación Final - Módulo 2

Diferentes queries sobre la Base de Datos Sakila


