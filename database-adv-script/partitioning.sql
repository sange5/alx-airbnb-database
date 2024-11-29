-- partitioning.sql
-- Create the partitioned Booking table
CREATE TABLE booking (
    booking_id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    payment_status VARCHAR(50)
) PARTITION BY RANGE (start_date);

-- Create partitions for each year
CREATE TABLE booking_2023 PARTITION OF booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE booking_2024 PARTITION OF booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');
    
-- Example query after partitioning
SELECT * FROM booking
WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
