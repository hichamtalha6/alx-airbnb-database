-- ========================
-- Insert Users
-- ========================
INSERT INTO Users (name, email, phone_number) VALUES
('Alice Johnson', 'alice@example.com', '+212611223344'),
('Mohammed Ali', 'mohammed@example.com', '+212677889900'),
('Sarah Williams', 'sarah@example.com', '+212633445566');

-- ========================
-- Insert Locations
-- ========================
INSERT INTO Location (address, city, country) VALUES
('123 Main St', 'Casablanca', 'Morocco'),
('456 Beach Ave', 'Agadir', 'Morocco'),
('789 Mountain Rd', 'Marrakech', 'Morocco');

-- ========================
-- Insert Properties
-- ========================
INSERT INTO Properties (owner_id, location_id, title, description, price) VALUES
(1, 1, 'Cozy Apartment Downtown', '2-bedroom apartment near city center.', 75.00),
(2, 2, 'Beachfront Villa', 'Luxury villa with ocean view.', 250.00),
(3, 3, 'Mountain Retreat', 'Quiet house near the Atlas mountains.', 120.00);

-- ========================
-- Insert Bookings
-- ========================
INSERT INTO Bookings (user_id, property_id, check_in, check_out, status) VALUES
(2, 1, '2025-09-10', '2025-09-15', 'confirmed'),
(1, 2, '2025-09-20', '2025-09-25', 'pending'),
(3, 3, '2025-10-01', '2025-10-05', 'confirmed');

-- ========================
-- Insert Payment Methods
-- ========================
INSERT INTO Payment_Methods (type, details) VALUES
('Credit Card', 'Visa ending in 1234'),
('PayPal', 'sarah.paypal@example.com'),
('Bank Transfer', 'Account: 0011223344');

-- ========================
-- Insert Payments
-- ========================
INSERT INTO Payments (booking_id, method_id, amount, date) VALUES
(1, 1, 375.00, '2025-09-08 14:30:00'),
(3, 2, 480.00, '2025-09-08 15:00:00');
