-- sql/duckdb/conover_library_avg_duration.sql
-- ============================================================
-- PURPOSE
-- ============================================================
-- Summarize average checkout duration by material type.
--
-- This query answers:
-- - "What is the average checkout duration for each material type?"
-- - "Which material types have the longest checkout durations?"
--
-- WHY:
-- - Establishes system-wide performance
-- - Provides a baseline before breaking results down by branch
-- - Helps answer:
--   "Is overall checkout duration up or down?"

SELECT
    material_type,
    ROUND(AVG(duration_days), 1) as avg_duration_days
FROM checkout
GROUP BY material_type;
