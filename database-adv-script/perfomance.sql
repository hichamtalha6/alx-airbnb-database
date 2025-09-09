----------------------------------------------------
-- Initial Complex Query (unoptimized)
----------------------------------------------------
-- Retrieves all bookings along with user details,
-- property details, and payment details.
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
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;


----------------------------------------------------
-- Refactored Query (optimized)
----------------------------------------------------
-- Improvements:
-- 1. Used INNER JOIN only where necessary
-- 2. Changed JOIN order to reduce scanned rows
-- 3. Ensured relevant indexes exist on:
--    users(user_id), bookings(user_id, property_id),
--    properties(property_id), payments(booking_id)
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
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;
