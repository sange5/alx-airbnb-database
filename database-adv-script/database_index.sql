SELECT * FROM bookings
JOIN users ON bookings.user_id = users.user_id
WHERE users.email = 'example@example.com';

CREATE INDEX idx_booking_user_id ON bookings (user_id);

-- Query after index creation (on user_id in bookings table)
EXPLAIN ANALYZE
SELECT * FROM bookings
JOIN users ON bookings.user_id = users.user_id
WHERE users.email = 'example@example.com';

-- Query before index creation (on property_id in bookings table)
EXPLAIN ANALYZE
SELECT * FROM bookings
JOIN properties ON bookings.property_id = properties.property_id
WHERE properties.location = 'New York';

-- Create index on property_id in the bookings table
CREATE INDEX idx_booking_property_id ON bookings (property_id);

-- Query after index creation (on property_id in bookings table)
EXPLAIN ANALYZE
SELECT * FROM bookings
JOIN properties ON bookings.property_id = properties.property_id
WHERE properties.location = 'New York';

-- Query before index creation (on booking_date in bookings table)
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE booking_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Create index on booking_date in the bookings table
CREATE INDEX idx_booking_date ON bookings (booking_date);

-- Query after index creation (on booking_date in bookings table)
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE booking_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Repeat for other indexes and querie
