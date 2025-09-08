# Airbnb Clone Database Schema

## 📌 Overview
This directory contains the SQL script for creating the **Airbnb Clone Database Schema** in **3NF (Third Normal Form)**.  
The schema supports core Airbnb-like features such as:
- User management
- Property listings
- Location handling
- Booking management
- Payments and payment methods

---

## 📂 Files
- **schema.sql** → Defines the database schema (tables, constraints, indexes).
- **README.md** → Documentation of schema purpose and usage.

---

## 🗄️ Database Entities
1. **Users**
   - Stores user details (name, email, phone).
2. **Location**
   - Stores address, city, country details.
3. **Properties**
   - Stores property details linked to an owner and a location.
4. **Bookings**
   - Stores booking information between users and properties.
5. **Payment_Methods**
   - Stores available payment method types.
6. **Payments**
   - Stores payment records linked to bookings and payment methods.

---

## ⚙️ Constraints & Integrity
- **Primary Keys**: Each table has a unique `id` column.
- **Foreign Keys**:
  - `Properties.owner_id → Users.user_id`
  - `Properties.location_id → Location.location_id`
  - `Bookings.user_id → Users.user_id`
  - `Bookings.property_id → Properties.property_id`
  - `Payments.booking_id → Bookings.booking_id`
  - `Payments.method_id → Payment_Methods.method_id`
- **Unique Constraints**: Email and phone number in `Users`.
- **Check Constraints**:
  - `price >= 0`
  - `amount >= 0`
  - `check_out > check_in`

---

## 🚀 Usage
Run the schema in PostgreSQL :

```bash
psql -U your_user -d your_database -f schema.sql
