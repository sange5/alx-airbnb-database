-- Index for user_id in the Booking table (for faster lookups and joins with the User table)
CREATE INDEX idx_booking_user_id ON bookings (user_id);

-- Index for property_id in the Booking table (for faster lookups and joins with the Property table)
CREATE INDEX idx_booking_property_id ON bookings (property_id);

-- Index for booking_date in the Booking table (if filtering or sorting by date is common)
CREATE INDEX idx_booking_date ON bookings (booking_date);

-- Index for user_id in the User table (if user lookups are frequent)
CREATE INDEX idx_user_id ON users (user_id);
