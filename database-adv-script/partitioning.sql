----------------------------------------------------
-- Step 1: Create Partitioned Bookings Table
----------------------------------------------------
-- Drop old table if testing
-- DROP TABLE bookings CASCADE;

CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

----------------------------------------------------
-- Step 2: Create Partitions by Year
----------------------------------------------------
CREATE TABLE bookings_2023 PARTITION OF bookings
FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings
FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

----------------------------------------------------
-- Step 3: Example Indexes on Partitions
----------------------------------------------------
CREATE INDEX idx_bookings_2023_user_id ON bookings_2023(user_id);
CREATE INDEX idx_bookings_2024_user_id ON bookings_2024(user_id);
CREATE INDEX idx_bookings_2025_user_id ON bookings_2025(user_id);

----------------------------------------------------
-- Step 4: Test Performance with Queries
----------------------------------------------------
-- Query BEFORE partitioning would scan full table
-- With partitioning, only relevant partition is scanned

EXPLAIN ANALYZE
SELECT booking_id, user_id, property_id, start_date, end_date
FROM bookings
WHERE start_date BETWEEN '2025-01-01' AND '2025-06-30';
