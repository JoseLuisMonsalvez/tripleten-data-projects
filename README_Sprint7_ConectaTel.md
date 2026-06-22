# Sprint 7 - Análisis de Clientes ConectaTel

## Objetivo del proyecto

Analizar el comportamiento de los clientes de ConectaTel para identificar patrones de uso, detectar valores atípicos y crear segmentos de clientes según su edad y nivel de consumo.

## Datasets utilizados

El análisis se realizó con tres datasets:

- `plans.csv`: información de los planes disponibles.
- `users_latam.csv`: información de los clientes, edad, ciudad, plan y fechas relevantes.
- `usage.csv`: registros de uso de servicios, llamadas y mensajes.

## Etapas del análisis

1. Carga y exploración inicial de los datos.
2. Revisión de columnas numéricas y categóricas.
3. Detección de valores inválidos y sentinels.
4. Limpieza básica de datos.
5. Estandarización de fechas.
6. Creación de métricas de uso por usuario.
7. Análisis estadístico descriptivo.
8. Visualización de distribuciones.
9. Identificación de outliers.
10. Segmentación de clientes por edad y nivel de uso.
11. Elaboración de conclusiones ejecutivas.

## Herramientas utilizadas

- Python
- Pandas
- Matplotlib
- Seaborn
- Jupyter Notebook / Google Colab
- GitHub

## Cómo ejecutar el notebook

1. Descargar o abrir el archivo `.ipynb` desde este repositorio.
2. Abrirlo en Google Colab o Jupyter Notebook.
3. Ejecutar las celdas en orden desde el inicio hasta el final.
4. Revisar las tablas, gráficos y conclusiones generadas.

## Principales resultados

- La mayoría de los usuarios pertenece al segmento de uso medio.
- El grupo de edad predominante corresponde a usuarios adultos.
- Se detectaron outliers en mensajes, llamadas y minutos de llamada.
- Los usuarios de alto uso representan una oportunidad para planes premium o estrategias de fidelización.

## Recomendaciones

- Diseñar ofertas específicas para usuarios de uso medio con potencial de migración a planes superiores.
- Crear beneficios para usuarios de alto uso.
- Mantener el seguimiento de outliers, ya que pueden representar clientes intensivos y valiosos para el negocio.

## Archivo principal

El notebook principal del proyecto es:

`S7 Version-Estudiante-Project-ConectaTel.ipynb`

## Autor

José Luis Monsálvez  
Bootcamp Data Analytics - TripleTen
