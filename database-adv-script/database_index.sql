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

-- 4. Reviews table (optional but useful for rating lookups)
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
CREATE INDEX idx_reviews_user_id ON reviews(user_id);
