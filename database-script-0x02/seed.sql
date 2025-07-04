-- Insert Users
INSERT INTO users (name, email, phone, password)
VALUES 
('Alice Johnson', 'alice@example.com', '0712345678', 'hashed_password_1'),
('Bob Smith', 'bob@example.com', '0723456789', 'hashed_password_2'),
('Caroline Lee', 'caroline@example.com', '0734567890', 'hashed_password_3');

-- Insert Properties
INSERT INTO properties (title, location, price, host_id)
VALUES 
('Cozy Cottage', 'Nairobi, Kenya', 50.00, 1),
('Beachfront Bungalow', 'Mombasa, Kenya', 120.00, 2),
('Mountain Cabin', 'Naivasha, Kenya', 90.00, 3);

-- Insert Bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date, status)
VALUES 
(2, 1, '2025-08-01', '2025-08-05', 'confirmed'),
(3, 2, '2025-08-10', '2025-08-15', 'pending'),
(1, 3, '2025-09-01', '2025-09-03', 'cancelled');

-- Insert Payments
INSERT INTO payments (booking_id, amount, method, status)
VALUES 
(1, 200.00, 'M-Pesa', 'completed'),
(2, 600.00, 'Credit Card', 'pending'),
(3, 180.00, 'PayPal', 'refunded');

-- Insert Reviews
INSERT INTO reviews (user_id, property_id, rating, comment)
VALUES 
(2, 1, 5, 'Loved the cozy feel!'),
(3, 2, 4, 'Great view and location.'),
(1, 3, 2, 'Too far from town and no Wi-Fi.');
