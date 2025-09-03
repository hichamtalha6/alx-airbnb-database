# Task 0: Define Entities and Relationships in ER Diagram

## Entities

1. **User**
   - user_id (PK)
   - first_name
   - last_name
   - email
   - password
   - phone_number
   - created_at
   - updated_at

2. **Property**
   - property_id (PK)
   - owner_id (FK → User.user_id)
   - title
   - description
   - location
   - price_per_night
   - created_at
   - updated_at

3. **Booking**
   - booking_id (PK)
   - user_id (FK → User.user_id)
   - property_id (FK → Property.property_id)
   - start_date
   - end_date
   - total_price
   - status
   - created_at
   - updated_at

4. **Payment**
   - payment_id (PK)
   - booking_id (FK → Booking.booking_id)
   - amount
   - payment_date
   - payment_method
   - status

5. **Review**
   - review_id (PK)
   - user_id (FK → User.user_id)
   - property_id (FK → Property.property_id)
   - rating
   - comment
   - created_at

---

## Relationships

- **User ↔ Property**: One user (owner) can have many properties (1-to-Many).  
- **User ↔ Booking**: One user can make many bookings (1-to-Many).  
- **Property ↔ Booking**: One property can have many bookings (1-to-Many).  
- **Booking ↔ Payment**: One booking can have one or many payments (1-to-Many).  
- **User ↔ Review**: One user can write many reviews (1-to-Many).  
- **Property ↔ Review**: One property can have many reviews (1-to-Many).  

---

## ER Diagram

<img width="657" height="556" alt="er_diagram" src="https://github.com/user-attachments/assets/155e0627-2e23-4e5c-9d43-b08b3da79192" />

