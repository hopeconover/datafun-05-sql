-- sql/duckdb/conover_library_kpi_material_demand.sql

SELECT
    material_type,
    COUNT(*) AS total_checkouts,
    ROUND(COUNT(*) * 100.0 /
          SUM(COUNT(*)) OVER (), 2) AS percent_of_total
FROM checkouts
GROUP BY material_type
ORDER BY total_checkouts DESC;
