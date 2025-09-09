----------------------------------------------------
-- Initial Complex Query (unoptimized)
----------------------------------------------------
-- Retrieves all bookings along with user details,
-- property details, and payment details.
-- Includes filtering with WHERE and AND clauses.
EXPLAIN
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.name AS user_name,
    u.email AS user_email,
    p.property_id,
    p.title AS property_title,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.start_date >= '2025-01-01'
  AND b.end_date <= '2025-12-31'
  AND pay.status = 'completed';


----------------------------------------------------
-- Refactored Query (optimized)
----------------------------------------------------
-- Improvements:
-- 1. Removed unnecessary columns
-- 2. JOIN order ensures filtering happens earlier
-- 3. Relevant indexes: bookings(user_id, property_id, start_date, end_date),
--    payments(booking_id, status), users(user_id), properties(property_id)
EXPLAIN
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    u.email AS user_email,
    p.title AS property_title,
    pay.amount,
    pay.status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.start_date >= '2025-01-01'
  AND b.end_date <= '2025-12-31'
  AND pay.status = 'completed';
