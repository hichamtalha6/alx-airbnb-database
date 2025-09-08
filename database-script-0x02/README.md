# Airbnb Clone Sample Data

## 📌 Overview
This directory contains the SQL script to populate the **Airbnb Clone Database** with sample data for testing and demonstration purposes.  
The dataset simulates real-world usage with multiple users, properties, bookings, and payments.

---

## 📂 Files
- **seed.sql** → Inserts sample records into all tables.
- **README.md** → Documentation of the dataset.

---

## 🗄️ Sample Data
- **Users** → 3 users with unique emails and phone numbers.
- **Locations** → 3 different Moroccan cities.
- **Properties** → Each owned by a different user.
- **Bookings** → Reservations linking users and properties.
- **Payment_Methods** → Credit card, PayPal, and bank transfer.
- **Payments** → Linked to bookings with different amounts.

---

## 🚀 Usage
Run the seed script after the schema has been created:

```bash
psql -U your_user -d your_database -f seed.sql
