# Database Performance Monitoring Report

This document describes the steps taken to monitor and refine the performance of queries in the ALX Airbnb Database.

---

## 1. Monitoring Queries

We monitored the performance of frequently used queries using `EXPLAIN ANALYZE` in PostgreSQL:

### Example Query 1: Retrieve all bookings for a user
```sql
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 5;
