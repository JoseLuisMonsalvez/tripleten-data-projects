-- Consulta extraída del notebook original de José Luis Monsálvez.
WITH funnel AS (
    SELECT
        CASE nombre_evento
            WHEN 'first_visit' THEN 1
            WHEN 'select_item' THEN 2
            WHEN 'add_to_cart' THEN 3
            WHEN 'begin_checkout' THEN 4
            WHEN 'add_payment_info' THEN 5
            WHEN 'purchase' THEN 6
            ELSE 7
        END AS orden_etapa,
        nombre_evento,
        COUNT(DISTINCT id_usuario) AS usuarios_unicos
    FROM events
    GROUP BY nombre_evento
),

funnel_con_etapa_anterior AS (
    SELECT
        orden_etapa,
        nombre_evento,
        usuarios_unicos,
        LAG(nombre_evento) OVER (
            ORDER BY orden_etapa
        ) AS etapa_anterior,
        LAG(usuarios_unicos) OVER (
            ORDER BY orden_etapa
        ) AS usuarios_etapa_anterior
    FROM funnel
)

SELECT
    orden_etapa,
    nombre_evento,
    usuarios_unicos,
    etapa_anterior,
    usuarios_etapa_anterior,

    CASE
        WHEN usuarios_etapa_anterior IS NULL THEN NULL
        ELSE ROUND(
            100.0 * usuarios_unicos /
            usuarios_etapa_anterior,
            2
        )
    END AS tasa_conversion_pct,

    CASE
        WHEN usuarios_etapa_anterior IS NULL THEN NULL
        ELSE usuarios_etapa_anterior - usuarios_unicos
    END AS usuarios_perdidos,

    CASE
        WHEN usuarios_etapa_anterior IS NULL THEN NULL
        ELSE ROUND(
            100.0 *
            (usuarios_etapa_anterior - usuarios_unicos) /
            usuarios_etapa_anterior,
            2
        )
    END AS tasa_abandono_pct

FROM funnel_con_etapa_anterior
ORDER BY orden_etapa;
