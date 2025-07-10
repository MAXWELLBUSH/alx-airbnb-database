-- 1. INNER JOIN: Get all bookings and their respective users
SELECT 
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    users.id AS user_id,
    users.name AS user_name,
    users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Get all properties and their reviews (include properties without reviews)
SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.comment,
    reviews.rating
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

-- 3. FULL OUTER JOIN simulation: Get all users and all bookings (even unlinked)
-- Note: MySQL does not support FULL OUTER JOIN directly
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.start_date
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.start_date
FROM users
RIGHT JOIN bookings ON users.id = bookings.user_id;
