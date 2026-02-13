-- sql/duckdb/conover_library_kpi_avg_duration.sql

SELECT
    material_type,
    ROUND(AVG(duration_days), 2) AS avg_duration_days
FROM checkouts
GROUP BY material_type
ORDER BY avg_duration_days DESC;
