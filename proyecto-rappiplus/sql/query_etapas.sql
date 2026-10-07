-- Consulta extraída del notebook original de José Luis Monsálvez.
SELECT
    nombre_evento,
    COUNT(*) AS total_eventos,
    COUNT(DISTINCT id_usuario) AS usuarios_unicos
FROM events
GROUP BY nombre_evento
ORDER BY usuarios_unicos DESC;
