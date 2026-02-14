-- sql/duckdb/conover_library_query_branch_activity.sql

-- ============================================================
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
    b.branch_name,
    COUNT(c.checkout_id) as total_checkouts
FROM branch b
LEFT JOIN checkout c ON b.branch_id = c.branch_id
GROUP BY b.branch_name
ORDER BY total_checkouts DESC;
