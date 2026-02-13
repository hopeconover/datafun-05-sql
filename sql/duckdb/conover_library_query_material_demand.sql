-- sql/duckdb/conover_library_query_material_demand.sql

============================================================
-- PURPOSE
-- ============================================================
-- Break overall checkouts down by material type.
--
-- This query answers:
-- "How many checkouts do we have by material type?"
--
-- WHY:
-- - Overall totals hide important differences.
-- - Grouping lets us compare parts of the system.
-- - This often reveals where action is needed:
--   * Which material types drive demand?
--   * Which material types underperform?
--
-- IMPORTANT:
-- This query uses GROUP BY but does NOT join tables yet.
-- We are still working only with the dependent/child table (sale).



SELECT
    material_type,
    COUNT(*) AS total_checkouts,
    ROUND(COUNT(*) * 100.0 /
          SUM(COUNT(*)) OVER (), 2) AS percent_of_total
FROM checkouts
GROUP BY material_type
ORDER BY total_checkouts DESC;
