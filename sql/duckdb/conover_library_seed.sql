-- sql/duckdb/conover_library_seed.sql

INSERT INTO branches VALUES
(1, 'Downtown', 'Poplar Bluff', 'PB Regional'),
(2, 'Northside', 'Poplar Bluff', 'PB Regional'),
(3, 'Westside', 'Poplar Bluff', 'PB Regional');

INSERT INTO checkouts VALUES
(1, 1, 'Book', 14, 0.00, '2025-01-01'),
(2, 1, 'DVD', 7, 1.50, '2025-01-02'),
(3, 2, 'Laptop', 3, 5.00, '2025-01-03'),
(4, 2, 'Magazine', 5, 0.00, '2025-01-05'),
(5, 3, 'Audiobook', 10, 0.00, '2025-01-07'),
(6, 1, 'Book', 21, 2.00, '2025-01-10'),
(7, 3, 'Laptop', 4, 3.50, '2025-01-12');
