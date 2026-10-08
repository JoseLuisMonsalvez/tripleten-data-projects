# Experimento A/B — Landing pages A y B

Proyecto formativo de José Luis Monsálvez, Sprint 9 de TripleTen.

## Mi contribución y decisiones

Exploré y validé el dataset, comparé el gasto de usuarios convertidos con Welch, analicé la conversión con chi-cuadrado y elaboré gráficos y una síntesis de negocio.

Separé la tasa de conversión del gasto entre quienes compraron para no confundir poblaciones y denominadores. Las comparaciones por canal y tipo de usuario se presentan como exploratorias. La recomendación sobre B corresponde al ejercicio, sin atribuir una mejora comercial implementada.


## Problema de negocio y datos

Comparar dos versiones de una landing page para evaluar conversión y gasto de los usuarios que compraron, y explorar asociaciones con fuente de tráfico y tipo de usuario.

El notebook guarda resultados de **40.000 usuarios únicos**, sin duplicados de identificador: **19.982 en A** y **20.018 en B**. Incluye fecha, región, dispositivo, fuente de tráfico, tipo de usuario, conversión y gasto.

## Herramientas y análisis

Python, Pandas, SciPy y Matplotlib. Exploración y control de duplicados, prueba t de Welch sobre gasto de quienes convirtieron, pruebas de chi-cuadrado y gráficos de contingencia. Nivel de significancia del ejercicio: 0,05.

## Hallazgos guardados

- **Conversión:** A registra 2.512 conversiones (**12,57 %**); B registra 3.194 (**15,96 %**). Diferencia observada: **3,38 puntos porcentuales**.
- **Gasto medio entre quienes convirtieron:** 61,09 en A y 68,75 en B, en las unidades del dataset.
- Las pruebas de conversión y gasto muestran p-values que el notebook imprime como `0.0000` por redondeo; ese formato no significa probabilidad exactamente cero.
- Fuente de tráfico y conversión: p = **0,0341**.
- Tipo de usuario y conversión: p = **0,4736**; no se encontró evidencia suficiente de asociación al nivel empleado.

El ejercicio recomienda evaluar la adopción de B. El análisis del gasto corresponde únicamente a usuarios convertidos, no al ingreso promedio por visitante. Las pruebas por segmentos son exploratorias y no incorporan un ajuste por comparaciones múltiples. La lectura causal de un A/B depende de una asignación aleatoria y una implementación válidas.

## Resultado y ejecución

[Notebook](Landing_AB.ipynb) con cálculos, resultados guardados y dos gráficos. Se conserva la lógica del autor y se adapta la búsqueda del archivo a `data/` o `/datasets/`.

**Entrada pendiente:** `landing_experiment.csv` no estaba en la carpeta del ordenador. Para repetir el análisis, descárgalo desde el proyecto original de TripleTen y colócalo en `data/landing_experiment.csv`; después instala `pip install -r requirements.txt` e inicia Jupyter desde esta carpeta. Los resultados guardados se pueden leer sin ese archivo.

**Verificación:** lectura, estructura básica, sintaxis y revisión de resultados guardados. Las tasas se contrastaron con los conteos de conversiones guardados. No se reejecutó el análisis completo: faltan el CSV original y las dependencias estadísticas/gráficas en el entorno de preparación.
