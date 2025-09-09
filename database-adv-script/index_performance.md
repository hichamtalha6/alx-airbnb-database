# Index Performance in SQL

This document explains how **indexes** were created in the ALX Airbnb Database to improve query performance.

---

## 1. Why Use Indexes?

Indexes improve the speed of data retrieval operations, especially on columns that are:
- Frequently used in `WHERE` clauses
- Common in `JOIN` operations
- Sorted with `ORDER BY`

Without indexes, the database must scan the **entire table** (sequential scan), which is slower for large datasets.

---

## 2. Created Indexes

### Users Table
- `user_id` → speeds up joins with `bookings`
- `email` → speeds up lookups for login and authentication

### Bookings Table
- `user_id` → improves queries like `WHERE user_id = ?`
- `property_id` → improves joins with `properties`
- `start_date` → improves filtering by booking dates

### Properties Table
- `property_id` → improves joins with `bookings` and `reviews`
- `location` → improves location-based searches

### Reviews Table
- `property_id` → improves property-to-reviews lookups
- `user_id` → improves user-to-reviews lookups

---

## 3. Measuring Performance

To measure performance **before and after indexing**, use:

```sql
-- Example query without index
EXPLAIN ANALYZE
SELECT * 
FROM bookings 
WHERE user_id = 5;

-- Example query with index
EXPLAIN ANALYZE
SELECT * 
FROM bookings 
WHERE user_id = 5;
