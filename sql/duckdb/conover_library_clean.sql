-- sql/duckdb/conover_library_clean.sql

DELETE FROM checkouts
WHERE duration_days IS NULL;

UPDATE branches
SET branch_name = TRIM(branch_name);
