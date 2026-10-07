-- Consulta extraída del notebook original de José Luis Monsálvez.
WITH usuarios_cohorte AS (
    SELECT
        id_usuario,
        DATE_TRUNC(
            'month',
            CAST(fecha_registro AS DATE)
        )::DATE AS cohorte
    FROM users
),

retencion_por_cohorte AS (
    SELECT
        uc.cohorte,

        COUNT(
            DISTINCT uc.id_usuario
        ) AS clientes_iniciales,

        COUNT(
            DISTINCT CASE
                WHEN ua.dias_despues_registro = 7
                     AND ua.activo = 1
                THEN uc.id_usuario
            END
        ) AS retenido_w1,

        COUNT(
            DISTINCT CASE
                WHEN ua.dias_despues_registro = 14
                     AND ua.activo = 1
                THEN uc.id_usuario
            END
        ) AS retenido_w2,

        COUNT(
            DISTINCT CASE
                WHEN ua.dias_despues_registro = 21
                     AND ua.activo = 1
                THEN uc.id_usuario
            END
        ) AS retenido_w3

    FROM usuarios_cohorte AS uc

    LEFT JOIN user_activity AS ua
        ON uc.id_usuario = ua.id_usuario

    GROUP BY uc.cohorte
)

SELECT
    cohorte,
    clientes_iniciales,
    retenido_w1,
    retenido_w2,
    retenido_w3,

    ROUND(
        100.0 * retenido_w1 /
        NULLIF(clientes_iniciales, 0),
        2
    ) AS semana_1,

    ROUND(
        100.0 * retenido_w2 /
        NULLIF(clientes_iniciales, 0),
        2
    ) AS semana_2,

    ROUND(
        100.0 * retenido_w3 /
        NULLIF(clientes_iniciales, 0),
        2
    ) AS semana_3

FROM retencion_por_cohorte
ORDER BY cohorte;
