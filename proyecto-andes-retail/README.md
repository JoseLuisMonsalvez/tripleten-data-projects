# Andes Retail Group — Desempeño comercial 2024–2025

Proyecto formativo de José Luis Monsálvez, Sprint 10 de TripleTen. Incluye datos de 5.000 registros de pedidos de Perú, Chile y Colombia, segmentos de clientes, categorías, regiones y estaciones.

## Mi contribución y decisiones

Construí el informe comercial original y preparé una narrativa por mercados, segmentos y evolución temporal. Esta actualización añade una reconciliación independiente de los indicadores contra el Excel de origen.

La reconciliación detectó que los costes se mostraban como ganancia en el informe original. Por esa razón, se publica el análisis económico comprobado y se deja la visualización original pendiente de corregir. Los archivos fuente permanecen intactos.


## Problema y herramientas

Analizar la evolución comercial de 2024 a 2025 y comunicar diferencias por país, segmento y categoría. Se utilizó Power BI para el informe original y se añadió una comprobación con Python/Pandas sobre el Excel de origen.

## Indicadores comprobados

| Indicador | Valor |
| --- | ---: |
| Ingresos | 5.531.994,00 |
| Costes del dataset | 3.590.244,67 |
| Ganancia: ingresos menos costes | 1.941.749,33 |
| Margen de ganancia | 35,10 % |
| Unidades vendidas | 57.601 |

Son las unidades monetarias del dataset. La ganancia considera exclusivamente el coste incluido, no todos los posibles gastos de una empresa real. Perú lidera los ingresos con 2.158.578, seguido de Chile con 2.027.669 y Colombia con 1.345.747.

## Discrepancia detectada en el dashboard original

El PDF exportado presenta aproximadamente **3,59 millones como ganancia** y **64,90 % como margen**. Esos valores corresponden al **coste** y a su proporción sobre ingresos en el Excel. No deben usarse como ganancia comprobada.

Los PBIX y PDF originales se conservan en la carpeta del ordenador y quedan pendientes de corregir antes de publicarlos. Para analizar el resultado económico utiliza la tabla anterior, [los KPI recalculados](kpis_verificados.csv) y [la comprobación reproducible](verificar_kpis.py).

La definición que debe revisarse en Power BI es:

```DAX
-- Sustituir 'Ventas' por el nombre real de la tabla importada.
Ingresos Totales = SUM('Ventas'[Ingresos])
Costos Totales = SUM('Ventas'[Costo])
Ganancia Total = [Ingresos Totales] - [Costos Totales]
Margen de Ganancia = DIVIDE([Ganancia Total], [Ingresos Totales])
```

El margen debe mostrarse con formato de porcentaje. Después de corregir las medidas y las tarjetas, hay que exportar otra vez el PDF y verificar que ambos coincidan con el Excel.

## Resultado y archivos

- [Datos de origen](data/Andes_Retail_Group_2024_2025.xlsx)
- [Comprobación de indicadores](verificar_kpis.py) y [resultados](kpis_verificados.csv)

El PBIX original, aún no publicado, contiene **Overview_Ejecutivo** y **Análisis_Detallado**. La propuesta es comparar mercados y segmentos y estudiar variaciones temporales; no se presentan recomendaciones como mejoras implementadas.

## Cómo repetir la comprobación

Instala `pip install -r requirements.txt` y ejecuta `python verificar_kpis.py` desde esta carpeta. El programa lee el Excel y regenera `kpis_verificados.csv`.

Se ejecutó esta comprobación y se contrastaron las cifras con el Excel. No se corrigió el modelo interno del PBIX ni se verificó el informe dentro de Power BI Desktop. Esa corrección visual y de medidas sigue pendiente.
