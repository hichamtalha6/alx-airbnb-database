# Database Normalization (Up to 3NF)

## Objective
The goal of normalization is to reduce data redundancy, avoid anomalies, and ensure data integrity.  
In this project, we normalized the **Airbnb Clone Database** schema to **Third Normal Form (3NF)**.

---

## Step 1: First Normal Form (1NF)
- **Rules**:
  - Each table must have a primary key.
  - Data must be atomic (no repeating groups, no multi-valued attributes).
- **Application**:
  - Separated user contact information into single attributes (e.g., `email`, `phone_number`).
  - Ensured property details like `address`, `city`, `country` are stored in separate columns instead of a single text field.
  - Created unique identifiers: `user_id`, `property_id`, `booking_id`, `payment_id`.

✅ Schema now meets **1NF**.

---

## Step 2: Second Normal Form (2NF)
- **Rules**:
  - Must be in 1NF.
  - No partial dependency (non-key attributes must depend on the whole primary key, not part of it).
- **Application**:
  - For composite keys (e.g., `booking_id` referencing `user_id` and `property_id`), ensured attributes like `check_in`, `check_out`, `status` depend only on `booking_id`.
  - Removed attributes that were partially dependent on `user_id` or `property_id`.

✅ Schema now meets **2NF**.

---

## Step 3: Third Normal Form (3NF)
- **Rules**:
  - Must be in 2NF.
  - No transitive dependencies (non-key attributes should not depend on other non-key attributes).
- **Application**:
  - Moved derived or dependent attributes to separate tables:
    - Example: Instead of storing `city` and `country` redundantly in the `property` table, created a `location` table with `location_id`, `city`, `country`, and referenced it in `property`.
  - Removed potential transitive dependencies such as `user → payment_method → payment_details`. Created a separate `payment_method` table.
  - Ensured all attributes in each table depend **only on the primary key**.

✅ Schema now meets **3NF**.

---

## Final Normalized Entities (Simplified)
- **Users**(`user_id`, `name`, `email`, `phone_number`)
- **Properties**(`property_id`, `owner_id`, `location_id`, `title`, `description`, `price`)
- **Location**(`location_id`, `address`, `city`, `country`)
- **Bookings**(`booking_id`, `user_id`, `property_id`, `check_in`, `check_out`, `status`)
- **Payments**(`payment_id`, `booking_id`, `method_id`, `amount`, `date`)
- **Payment_Methods**(`method_id`, `type`, `details`)

---

## Entity-Relationship Diagram (3NF)
Below is the ERD of the final normalized schema:


<img width="465" height="927" alt="airbnb_3nf_schema" src="https://github.com/user-attachments/assets/f3a5e08f-1d31-4b18-ba6c-e3e7cb1698ef" />

---

## Conclusion
By applying normalization up to 3NF:
- Redundancies were minimized.
- Relationships between entities are clearly defined.
- The database is scalable and consistent for the Airbnb project.
