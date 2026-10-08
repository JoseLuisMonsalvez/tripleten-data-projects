# Datos y reproducción del proyecto

Se añade el [CSV final del autor](data/ladb_mobility_economy_2024_clean.csv), con **15 filas de ciudad–año**, **14 columnas**, **7 países** y año **2024**. El archivo usa **punto y coma** como separador; se puede leer con `pd.read_csv(ruta, sep=';')`.

La referencia del resumen del notebook a «aproximadamente 30 ciudades» no coincide con la cobertura del CSV final localizado. Para describir el entregable se utiliza el conteo verificable de 15 filas. El notebook conserva su contenido original; esa afirmación histórica no se presenta como cobertura comprobada del archivo final.

El notebook original carga `tomtom_traffic.csv` y `oecd_city_economy.csv` desde `/datasets`. Esos archivos no se localizaron en las carpetas locales de entrega. Para repetir el proceso completo se necesitan las fuentes del proyecto original de TripleTen y sus rutas configuradas en el notebook, además de Pandas, NumPy, Matplotlib y Seaborn.

El CSV permite consultar el resultado integrado, pero no reemplaza las fuentes necesarias para repetir los pasos de limpieza y unión. No se reejecutó ese proceso en esta actualización.
