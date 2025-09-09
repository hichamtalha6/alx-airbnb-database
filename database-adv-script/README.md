# SQL Joins Queries

This folder contains SQL scripts demonstrating the use of different types of joins in the **ALX Airbnb Database Project**.

## Queries

### 1. INNER JOIN
Retrieves all bookings along with the respective users who made those bookings.

```sql
SELECT 
    b.booking_id,
    b.property_id,
    b.user_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    u.email AS user_email
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id;
