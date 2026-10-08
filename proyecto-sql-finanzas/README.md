# Análisis del desempeño financiero por país con SQL

## Problema de negocio
Comparar ingresos, costes y beneficio bruto entre mercados y relacionarlos con el presupuesto de campañas para orientar la revisión de la inversión comercial.

## Contexto y datos
Proyecto formativo del Sprint 3 de TripleTen. La entrega describe la integración de ventas, productos, territorios y campañas de marketing en una tabla `ventas_clean`. El resumen contiene seis países: Estados Unidos, Australia, Reino Unido, Alemania, Francia y Canadá. El periodo y la moneda no están identificados en el libro.

## Mi contribución y proceso
Según la memoria de la entrega, consolidé la información de ventas y preparé indicadores de ingresos, costes, beneficio bruto, margen y relación entre beneficio bruto y gasto en campañas. Comparé los países y redacté una síntesis de contexto, hallazgos e implicaciones para el negocio.

## Herramientas y evidencia
SQL para el análisis descrito en la entrega y Excel para comunicar los resultados. El repositorio conserva el [resumen ejecutivo entregado a TripleTen](Resumen_ejecutivo.xlsx), sin modificar sus cifras ni su formato. Las consultas SQL y las tablas originales no están disponibles todavía, por lo que el libro demuestra los resultados y su interpretación, pero no permite auditar los JOIN ni repetir la extracción.

## Hallazgos respaldados por la tabla
- Estados Unidos presenta los mayores ingresos (3.353.939,92) y beneficio bruto (1.454.468,60).
- Australia ocupa el segundo lugar en ingresos (2.532.003,49) y beneficio bruto (1.057.045,31).
- Canadá registra el margen bruto más alto de los seis países (44,76 %), aunque tiene menor volumen de ingresos.
- La relación beneficio bruto / gasto en campañas es 75,75 % en Estados Unidos y 49,16 % en Australia. Los otros cuatro países se sitúan aproximadamente entre 17,43 % y 22,05 %.

## Definiciones y comprobaciones
El beneficio bruto se obtiene como ingresos menos costes. El margen es beneficio bruto / ingresos. La columna denominada `ROI_pct` en la entrega utiliza beneficio bruto / coste de campañas. No descuenta el gasto de campañas en el numerador ni demuestra beneficio incremental atribuible al marketing. Por ello no debe interpretarse como retorno neto positivo de la inversión.

Se contrastaron esas tres relaciones con los valores guardados de los seis países, admitiendo el redondeo a céntimos y cuatro decimales. El texto original menciona 3.335.940 de ingresos en Estados Unidos, mientras la tabla muestra 3.353.939,92. Esta ficha utiliza la tabla. El archivo contiene valores guardados y no contiene fórmulas ni errores de celda guardados; no se verificó su presentación en Excel.

## Resultado y aprendizaje
La entrega propuso revisar la distribución del presupuesto y explorar mayor inversión en Estados Unidos, además de optimizar campañas en Canadá y Europa. Son recomendaciones del ejercicio, no decisiones implementadas ni mejoras medidas. Antes de escalar una campaña sería necesario comprobar atribución, beneficio neto y respuesta marginal al gasto. El proyecto conecta indicadores financieros con decisiones comerciales y muestra la importancia de definir correctamente cada métrica.
