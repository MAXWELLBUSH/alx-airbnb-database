-- Index on bookings.user_id for faster JOINs and WHERE clauses
CREATE INDEX idx_user_id_on_bookings ON bookings(user_id);

-- Index on properties.id for JOIN performance
CREATE INDEX idx_property_id_on_properties ON properties(id);

-- Index on reviews.property_id for JOIN and filtering
CREATE INDEX idx_property_id_on_reviews ON reviews(property_id);

-- Index on bookings.start_date for date-range performance
CREATE INDEX idx_start_date_on_bookings ON bookings(start_date);
