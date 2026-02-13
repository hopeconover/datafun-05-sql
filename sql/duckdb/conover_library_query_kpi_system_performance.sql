-- sql/duckdb/conover_library_kpi_system_performance.sql

SELECT
    b.system_name,
    COUNT(c.checkout_id) AS total_checkouts,
    ROUND(SUM(c.fine_amount), 2) AS total_fines,
    ROUND(AVG(c.duration_days), 2) AS avg_duration
FROM branches b
JOIN checkouts c
    ON b.branch_id = c.branch_id
GROUP BY b.system_name;
