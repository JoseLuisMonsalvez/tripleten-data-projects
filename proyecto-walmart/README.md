# Walmart — Resumen ejecutivo de ventas

[Inicio del portafolio](../README.md) · [Todos los proyectos](../PROYECTOS.md)

Proyecto formativo del Sprint 2 de TripleTen, realizado por José Luis Monsálvez.

## Problema de negocio

Comparar las ventas semanales de 2012 por tienda y departamento, la participación de cada departamento y el indicador de ventas por m² utilizado en la entrega.

## Datos y herramientas

Excel y Google Sheets. El libro conserva las hojas README, Resumen, Dashboard, Pivot, raw_ventas, Clean Ventas, raw_departamento y raw_tiendas. Clean Ventas contiene 95.880 registros; 28.845 corresponden a 2012. Los resúmenes de la entrega muestran 14 departamentos y excluyen la categoría Otros.

## Mi contribución y análisis

Preparé datos limpios, resúmenes por departamento, indicadores y un dashboard para comunicar el desempeño de ventas. La copia para Excel sustituye las tablas dinámicas exportadas que provocaban reparaciones por fórmulas SUMIFS, AVERAGEIFS e INDEX/MATCH; mantiene los datos, las cifras y las conclusiones de la entrega original.

## Hallazgos de la entrega

- Despensa y Básicos presenta las mayores ventas de los departamentos incluidos: 85.052.985,88 y una participación del 16,08 %.
- Comida Fresca registra 59.510.812,89 en ventas; Artículos del Hogar y Papel, 58.876.083,76.
- El indicador original de ventas por m² de Despensa y Básicos es 562,09.

Los importes se muestran según las unidades del archivo original; no se asigna una moneda no confirmada.

## Definición conservada y límites

Para mantener exactamente los resultados entregados a TripleTen, el indicador denominado ventas por m² conserva el divisor de 151.315 utilizado en la hoja original. No equivale a dividir las ventas de cada departamento por su tamaño medio ni a una media de ventas por m² entre tiendas. Su interpretación debe respetar esta definición y evitar comparaciones con indicadores calculados de otra forma.

## Resultado y consulta

[Descargar el libro de Excel](https://raw.githubusercontent.com/JoseLuisMonsalvez/tripleten-data-projects/main/proyecto-walmart/Walmart_Sprint2_Resultados_Originales.xlsx)

1. Descarga el archivo y ábrelo en Excel.
2. En Dashboard, cambia el selector de departamento de la celda B2 para mostrar los dos indicadores del departamento elegido.
3. Consulta Resumen para las conclusiones y Pivot para los resúmenes que alimentan el dashboard. Los gráficos comparan los departamentos; el selector cambia las tarjetas de indicadores.

Se contrastaron los resultados de los 14 departamentos con la hoja entregada en la plataforma, se preservaron los datos y gráficos originales y se comprobó la apertura de la copia en Microsoft Excel sin solicitud de reparación. El cambio del selector se verificó en el modelo de cálculo; no se completó una prueba de todos los filtros en la aplicación nativa. No se modificaron los resultados para aplicar una definición diferente del indicador.
