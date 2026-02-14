-- sql/duckdb/conover_library_query_branch_activity.sql

 ============================================================
-- PURPOSE
-- ============================================================
-- Break overall checkout performance down by branch.
--
-- This query answers:
-- "How many checkouts and how much revenue do we have by branch?"
--
-- WHY:
-- - Overall totals hide important differences.
-- - Grouping lets us compare parts of the system.
-- - This often reveals where action is needed:
--   * Which branches drive revenue?
--   * Which branches underperform?
--
-- IMPORTANT:
-- This query uses GROUP BY but does NOT join tables yet.
-- We are still working only with the dependent/child table (checkouts).



SELECT
    b.branch_id,
    b.branch_name,
    b.city,
    b.system_name,
    COUNT(c.checkout_id) AS total_checkouts,
    ROUND(SUM(c.fine_amount), 2) AS total_fines,
    ROUND(AVG(c.duration_days), 2) AS avg_duration_days
FROM branches b
JOIN checkouts c
    ON b.branch_id = c.branch_id
GROUP BY
    b.branch_id,
    b.branch_name,
    b.city,
    b.system_name
ORDER BY total_checkouts DESC;
