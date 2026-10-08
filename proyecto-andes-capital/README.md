# Andes Capital Real Estate — Dashboard comercial inmobiliario

[Inicio del portafolio](../README.md) · [Todos los proyectos](../PROYECTOS.md)

![Andes Capital — Business Intelligence comercial](../docs/assets/andes-capital.svg)

## El caso en un minuto

**Pregunta de negocio:** ¿Qué propiedades aportan ingresos y cómo evoluciona la actividad comercial?

**Conclusión principal:** Las casas aportan el 37,26 % de los ingresos y los departamentos el 60,06 % de las operaciones: volumen y valor orientan prioridades distintas.

**Evidencia:** PBIX, memoria del análisis y tres CSV. Indicadores principales contrastados con los datos.

[Descargar el informe Power BI](https://raw.githubusercontent.com/JoseLuisMonsalvez/tripleten-data-projects/main/proyecto-andes-capital/dashboard/Andes_Capital.pbix)

El enlace descarga el archivo PBIX. Ábrelo con Power BI Desktop para consultar las páginas y utilizar los filtros; GitHub no ofrece una vista previa interactiva del informe. Las instrucciones de actualización figuran al final de esta ficha.

Proyecto formativo de José Luis Monsálvez, Sprint 11 del Bootcamp de TripleTen.

## Mi contribución y decisiones

Preparé el informe de Power BI con ventas, clientes y propiedades y documenté los hallazgos comerciales, la evolución temporal, las cohortes y las previsiones en la memoria de entrega.

Organicé la información en cuatro vistas para pasar de indicadores ejecutivos al detalle comercial. Comparé volumen, ingresos y ticket para evitar priorizar productos únicamente por número de operaciones. Mantuve el pronóstico como estimación con incertidumbre, separado de las ventas observadas.


## Problema de negocio

Reunir ventas, propiedades y clientes en una visión analítica que permita comparar ingresos, volumen, ticket, comisiones, canales, crecimiento temporal y actividad de clientes.

## Contexto y herramientas

- **8.500 ventas** de enero de 2023 a diciembre de 2024 en `hecho_ventas_propiedades.csv`.
- **3.500 clientes** y **8.000 propiedades** en tablas dimensionales.
- Power BI, modelado de hechos/dimensiones, calendario e inteligencia temporal. El notebook entregado sirve como memoria escrita del dashboard; no es un programa Python de cálculo.

## Análisis y hallazgos

El informe tiene cuatro páginas: **Overview Ejecutivo**, **Análisis Comercial**, **Análisis Estacional** y **Análisis de Cohortes**.

La comprobación sobre el CSV de ventas obtuvo:

| Indicador | Valor |
| --- | ---: |
| Ingresos | 6.012.502.170 |
| Ventas | 8.500 |
| Ticket promedio | 707.353,20 |
| Comisiones | 200.627.166 |
| Crecimiento de ingresos 2024 frente a 2023 | 11,14 % |

Los importes se expresan en las unidades monetarias del dataset, sin asignar una moneda no confirmada. Las casas generan aproximadamente el 37,26 % del ingreso; los departamentos concentran el 60,06 % de las operaciones. El caso muestra que el liderazgo por volumen puede diferir del liderazgo por valor.

La memoria también analiza recurrencia por cohortes y un pronóstico de tres meses con incertidumbre. Las previsiones son estimaciones del ejercicio, no resultados observados; aquí no se presentan como ventas realizadas.

## Resultado y archivos

- [Informe Power BI](dashboard/Andes_Capital.pbix)
- [Memoria del dashboard](Memoria_del_dashboard.ipynb)
- [Ventas](data/hecho_ventas_propiedades.csv), [clientes](data/dim_clientes.csv) y [propiedades](data/dim_propiedades.csv)

Se proponen estrategias diferenciadas por tipo de propiedad, ciudad y segmento. No se atribuyen mejoras comerciales reales a esas recomendaciones.

## Consulta, actualización y verificación

Abre el PBIX en Power BI Desktop. Para actualizarlo, adapta las rutas de sus fuentes a los tres CSV de `data/` y revisa las relaciones del modelo. La memoria se puede leer directamente en GitHub.

Se verificaron los archivos, las cuatro páginas y los indicadores principales recalculados desde el CSV. No se abrió ni se actualizó el PBIX dentro de Power BI Desktop: sus medidas, interacciones, cohortes y pronóstico no se reejecutaron en esa aplicación.
