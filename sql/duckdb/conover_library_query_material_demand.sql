-- sql/duckdb/conover_library_query_material_demand.sql

--============================================================
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
    COUNT(*) as count
FROM checkout
GROUP BY material_type
ORDER BY count DESC;
