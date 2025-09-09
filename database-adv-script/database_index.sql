-- Indexes for the ALX Airbnb Database

-- 1. Users table
-- Frequently used in JOINs and WHERE clauses
CREATE INDEX idx_users_user_id ON users(user_id);
CREATE INDEX idx_users_email ON users(email);

-- 2. Bookings table
-- Frequently used for lookups and date filters
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- 3. Properties table
-- Used in JOINs and search queries
CREATE INDEX idx_properties_property_id ON properties(property_id);
CREATE INDEX idx_properties_location ON properties(location);

-- 4. Reviews table
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
CREATE INDEX idx_reviews_user_id ON reviews(user_id);

----------------------------------------------------
-- PERFORMANCE TESTING WITH EXPLAIN ANALYZE
----------------------------------------------------

-- Example 1: Querying bookings by user_id
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 5;

-- Example 2: Querying bookings by property_id
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE property_id = 10;

-- Example 3: Querying properties by location
EXPLAIN ANALYZE
SELECT *
FROM properties
WHERE location = 'Paris';

-- Example 4: Joining users and bookings
EXPLAIN ANALYZE
SELECT u.user_id, u.name, COUNT(b.booking_id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.name;
