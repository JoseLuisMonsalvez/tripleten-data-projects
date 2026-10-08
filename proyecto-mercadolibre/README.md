# MercadoLibre — Embudo de conversión y retención

Proyecto formativo de José Luis Monsálvez, Sprint 4 de TripleTen. La entrega disponible es un resumen ejecutivo con resultados del ejercicio, no experiencia laboral en MercadoLibre.

## Mi contribución y decisiones

Organicé los resultados del ejercicio en tablas de embudo, países y cohortes y preparé el informe ejecutivo con hallazgos y propuestas de investigación.

Prioricé la transición hacia el carrito y la evolución de la actividad tras el registro. En esta presentación se explicitan las comprobaciones pendientes sobre denominadores, recorrido secuencial y madurez de las cohortes, porque las consultas y tablas originales no están disponibles en la entrega localizada.


## Problema de negocio

Explorar en qué eventos del proceso de compra disminuye la participación y cómo varía la retención por país y cohorte, para priorizar investigaciones sobre experiencia de compra y reactivación.

## Contexto, herramientas y análisis

El [libro de resultados](Resumen_ejecutivo.xlsx) contiene cinco hojas: Informe Ejecutivo, Embudo General, Embudo General x Pais, Retencion x Pais y Retencion x Cohort. El informe describe el periodo de enero a agosto de 2025 y tablas de conversión y actividad en D7, D14, D21 y D28.

Se presenta como ejercicio de análisis de journeys con SQL y síntesis de resultados en una hoja de cálculo. Las consultas SQL y las tablas fuente no estaban en la carpeta de entrega; por tanto, no se incluye código SQL inventado ni se afirma que el cálculo pueda repetirse a partir de este libro.

## Hallazgos del libro

- Las tasas guardadas son 76,90 % en `select_item`, 11,01 % en `add_to_cart` y 1,25 % en `purchase`. La principal diferencia entre esas tasas aparece antes del carrito.
- Uruguay registra una tasa final del 4,55 %, frente al 0,00 % de Paraguay y el 0,68 % de Brasil.
- Las tablas muestran actividad elevada en D7 y menor actividad en D28. La cohorte de agosto registra 70,8 % en D7 y 0,2 % en D28.

Estas tasas se reproducen como resultados guardados. Sin las consultas fuente no se puede confirmar su denominador ni un recorrido individual secuencial. Tampoco puede descartarse que la última cohorte tenga una ventana de observación incompleta; se debe verificar antes de atribuir el descenso a peor adquisición o experiencia.

## Resultado y recomendaciones

Un libro con tablas por país/cohorte y una síntesis ejecutiva. Se propone investigar el paso al carrito, analizar diferencias entre mercados y revisar ventanas de observación antes de decidir acciones de retención. No se midió el resultado de implementar esas propuestas.

## Consulta y verificación

Abre el XLSX en Excel o impórtalo en Google Sheets. Se revisaron las hojas y sus valores guardados; no se ejecutaron consultas ni se verificó la apariencia en Excel. Para reproducir el cálculo hacen falta las consultas y los datasets del ejercicio original.
