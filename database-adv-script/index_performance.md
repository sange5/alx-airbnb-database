# Index Performance Optimization

## Overview
This document outlines the creation of indexes on the **User**, **Booking**, and **Property** tables to optimize query performance. We have identified frequently used columns based on queries and created indexes on them.

## Indexes Created
- **User Table**:
  - Index on `user_id` for faster lookups and joins.
  - Index on `email` for quick search queries.
  
- **Booking Table**:
  - Index on `user_id` for efficient lookups and joins with the User table.
  - Index on `property_id` for efficient joins with the Property table.
  - Index on `booking_date` for sorting/filtering queries based on booking date.

- **Property Table**:
  - Index on `property_id` for fast joins with the Booking table.
  - Index on `owner_id` for queries filtering by property owner.
  - Index on `location` and `price` for filtering queries based on these attributes.
  - Index on `rating` for sorting properties by rating.

## Query Performance Measurement

### Before Indexing:
- Query: `SELECT * FROM bookings WHERE user_id = 1;`
  - **Execution Plan**: Full table scan.

### After Indexing:
- Query: `SELECT * FROM bookings WHERE user_id = 1;`
  - **Execution Plan**: Index scan, significantly faster execution time.

## Conclusion
Indexes have been successfully applied to high-usage columns to optimize query performance. The `EXPLAIN` command showed improved performance with index scans instead of full table scans. These indexes will help reduce query execution time, especially for large datasets. 
-- Index for user_id in the User table (for faster lookups and joins)
CREATE INDEX idx_user_id ON users (user_id);

-- Index for email in the User table (if email is frequently searched)
CREATE INDEX idx_user_email ON users (email);

-- Index for user_id in the Booking table (for faster lookups and joins with the User table)
CREATE INDEX idx_booking_user_id ON bookings (user_id);

-- Index for property_id in the Booking table (for faster lookups and joins with the Property table)
CREATE INDEX idx_booking_property_id ON bookings (property_id);

-- Index for booking_date in the Booking table (if filtering or sorting by date is common)
CREATE INDEX idx_booking_date ON bookings (booking_date);

-- Index for property_id in the Property table (for faster lookups and joins with the Booking table)
CREATE INDEX idx_property_id ON properties (property_id);

-- Index for owner_id in the Property table (if querying by owner is frequent)
CREATE INDEX idx_property_owner_id ON properties (owner_id);

-- Index for location and price in the Property table (if filtering by location or price is common)
CREATE INDEX idx_property_location_price ON properties (location, price);

-- Index for rating in the Property table (if sorting by rating is common)
CREATE INDEX idx_property_rating ON properties (rating);

