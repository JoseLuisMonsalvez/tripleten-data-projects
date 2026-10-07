# RappiPlus — Análisis de negocio con Python, SQL y Power BI

Proyecto final del Bootcamp Data Analytics de TripleTen, realizado por **José Luis Monsálvez**. Integra calidad de datos, análisis económico, conversión, retención y experimentación para apoyar decisiones de negocio.

## Problema de negocio

Evaluar el desempeño del caso RappiPlus: ¿qué resultados económicos muestran los datos disponibles?, ¿en qué eventos del proceso de compra disminuye el número de usuarios?, ¿los usuarios vuelven después del registro? y ¿una modificación de la interfaz del checkout mejora la conversión?

## Contexto y datos

Los datos son materiales del proyecto formativo de TripleTen; no representan experiencia laboral en Rappi ni resultados de una intervención real.

| Fuente | Contenido y alcance |
| --- | --- |
| Pedidos | 25.100 filas originales; 24.920 después de la limpieza. Del 1 de enero al 30 de junio de 2025. |
| Catálogo | 7 productos, categorías, costes unitarios y proveedores. |
| Marketing | 1.620 registros de gasto por canal y país, del 1 de enero al 29 de junio de 2025. |
| Tablas SQL | `events`, `users` y `user_activity`; 8.000 usuarios en cohortes de registro de enero a mayo de 2025. |
| Experimento A/B | 10.000 usuarios: 4.965 en control y 5.035 en tratamiento. |

Los tres CSV limpios están incluidos en `data/`. El notebook carga los datos originales de pedidos, catálogo, marketing y experimento desde los enlaces de datasets de TripleTen que figuran en su código. Las tablas SQL requieren acceso a una base PostgreSQL compatible.

## Herramientas y análisis realizado

- **Python, Pandas y NumPy:** revisión de tipos, fechas, valores ausentes, duplicados, cantidades y consistencia de importes; integración del catálogo y cálculo de indicadores.
- **SQL / PostgreSQL:** usuarios únicos por evento, conversiones entre conteos de etapas y retención por cohortes con CTE, JOIN y funciones de ventana.
- **Estadística:** prueba Z bilateral de dos proporciones y un intervalo del 95 % para la diferencia de conversión.
- **Power BI:** informe con cuatro páginas: Overview Ejecutivo, Detalle de Órdenes, Conversión y Experimento A/B, y Retención por Cohortes.

## Hallazgos

### Calidad de datos

Se eliminaron 100 duplicados exactos y 80 filas sin información indispensable. Se corrigieron cuatro cantidades negativas y diez errores de escala; también se recuperaron 101 canales de marketing a partir del identificador de campaña. Los CSV finales contienen 24.920 pedidos, 7 productos y 1.620 registros de marketing, sin valores ausentes ni duplicados exactos.

### Resultado económico del caso

| Indicador | Valor |
| --- | ---: |
| Ingresos | 9.615.400,71 |
| Coste de productos | 3.832.849,13 |
| Gasto de marketing | 2.871.843,53 |
| Resultado después de productos y marketing | 2.910.708,05 |
| Resultado / ingresos | 30,27 % |
| Ticket promedio por pedido | 385,85 |

Los importes se expresan en las unidades monetarias del dataset; no se asigna una moneda no confirmada. El resultado considera únicamente productos y marketing: no equivale a beneficio neto, pues no incluye salarios, logística, impuestos ni otros gastos operativos.

### Conversión y retención

- Los conteos de `first_visit` y `purchase` fueron 7.796 y 6.240 usuarios, respectivamente: una razón del 80,04 %.
- Entre `begin_checkout` y `add_payment_info` hay una diferencia de 958 usuarios, equivalente al 13,29 % del conteo de checkout.
- `add_to_cart` registra más usuarios que `select_item`. Los conteos independientes no prueban que los mismos usuarios recorrieran todas las etapas en orden; se recomienda validar el seguimiento de eventos antes de interpretar un funnel secuencial.
- La actividad a los días 7, 14 y 21 después del registro fue del 42,00 %, 41,94 % y 41,88 %. Cada medición es independiente: un usuario puede volver tras estar inactivo en una medición anterior.

### Experimento A/B

La conversión observada fue del **15,69 % en control** y **16,29 % en tratamiento**. La diferencia de **0,60 puntos porcentuales** no fue estadísticamente significativa: **p = 0,4161**, con intervalo del 95 % de **−0,84 a 2,03 puntos porcentuales** y α = 0,05.

El experimento no aporta evidencia suficiente para afirmar que la nueva interfaz mejora la conversión. La recomendación es ampliar la evidencia antes de desplegarla de forma general.

## Resultado del proyecto

Notebook con limpieza, cálculos y conclusiones; siete consultas SQL extraídas de ese notebook; tres datasets limpios; e informe Power BI para explorar el resultado económico, las órdenes, la conversión y la retención. Las recomendaciones son propuestas del ejercicio y no mejoras comerciales implementadas.

## Archivos

- [Notebook con resultados guardados](RappiPlus.ipynb)
- [Informe Power BI](dashboard/RappiPlus.pbix)
- [Pedidos limpios](data/orders_clean.csv), [catálogo](data/catalog_clean.csv) y [marketing](data/marketing_clean.csv)
- [Consultas SQL](sql/)
- [Dependencias Python](requirements.txt)

## Cómo consultar o repetir el análisis

1. Abre `RappiPlus.ipynb` en GitHub o Jupyter para consultar las tablas y los resultados guardados.
2. Para ejecutarlo, instala las dependencias con `pip install -r requirements.txt` e inicia Jupyter desde esta carpeta. La primera parte utiliza los enlaces de datos originales de TripleTen y necesita conexión a internet.
3. Para las secciones SQL, configura la variable de entorno `RAPPIPLUS_DATABASE_URL` con una conexión PostgreSQL propia que disponga de `events`, `users` y `user_activity`. Ejemplo de formato: `postgresql+psycopg2://USUARIO:CONTRASENA@SERVIDOR:5432/BASE`. No publiques credenciales. Si no hay conexión, la celda de configuración se detiene y los resultados guardados siguen disponibles para consulta.
4. Abre `dashboard/RappiPlus.pbix` en Power BI Desktop. Para actualizar sus fuentes CSV, adapta las rutas en la configuración de origen de datos a los archivos de `data/`. Abrir y actualizar el informe requiere Power BI Desktop.

## Verificación de esta entrega

Se comprobaron la lectura del notebook, su estructura básica y sintaxis Python, la ausencia de errores en las salidas guardadas, los conteos y calidad de los tres CSV, y los indicadores económicos recalculados a partir de esos CSV. El p-value se recalculó utilizando los conteos guardados del experimento.

Esta copia sustituye los datos de conexión originales por una variable de entorno y conserva los cálculos y resultados del autor. No se ejecutó de principio a fin: el entorno de preparación no dispone de todas las dependencias ni de la conexión SQL. El archivo PBIX se pudo leer como archivo de proyecto y se confirmaron sus cuatro páginas; no se verificó su apariencia ni su actualización dentro de Power BI Desktop.
