-- sql/duckdb/conover_library_bootstrap.sql

DROP TABLE IF EXISTS checkouts;
DROP TABLE IF EXISTS branches;

CREATE TABLE branches (
    branch_id INTEGER,
    branch_name VARCHAR,
    city VARCHAR,
    system_name VARCHAR
);

CREATE TABLE checkouts (
    checkout_id INTEGER,
    branch_id INTEGER,
    material_type VARCHAR,
    duration_days INTEGER,
    fine_amount DOUBLE,
    checkout_date DATE
);
