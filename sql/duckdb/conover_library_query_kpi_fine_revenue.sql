-- sql/duckdb/conover_library_kpi_fine_revenue.sql

SELECT
    b.branch_name,
    ROUND(SUM(c.fine_amount), 2) AS total_fine_revenue
FROM branches b
JOIN checkouts c
    ON b.branch_id = c.branch_id
GROUP BY b.branch_name
ORDER BY total_fine_revenue DESC;
