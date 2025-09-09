# Partitioning Performance Report

This document explains how **table partitioning** was applied to the `bookings` table to improve performance.

---

## 1. Why Partitioning?
The `bookings` table is expected to grow very large. Queries filtering by `start_date` were scanning the **entire table**, leading to slow performance.

Partitioning the table by `start_date` allows the database to **scan only the relevant partition**.

---

## 2. Implementation
We partitioned the table by **year ranges**:

```sql
CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);
