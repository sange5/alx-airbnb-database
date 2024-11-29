# Entity-Relationship Diagram for Airbnb-like Database

## Entities and Attributes
1. **User**
   - `id` (Primary Key)
   - `name`
   - `email`
   - `password`
   - `created_at`
   - `updated_at`

2. **Property**
   - `id` (Primary Key)
   - `name`
   - `description`
   - `location`
   - `price_per_night`
   - `owner_id` (Foreign Key to User)
   - `created_at`
   - `updated_at`

3. **Booking**
   - `id` (Primary Key)
   - `user_id` (Foreign Key to User)
   - `property_id` (Foreign Key to Property)
   - `start_date`
   - `end_date`
   - `total_price`
   - `created_at`
   - `updated_at`

4. **Payment**
   - `id` (Primary Key)
   - `booking_id` (Foreign Key to Booking)
   - `amount`
   - `payment_date`
   - `payment_method`
   - `created_at`
   - `updated_at`

## Relationships
1. **User → Property**: One-to-Many  
   - A User can own multiple Properties.

2. **User → Booking**: One-to-Many  
   - A User can make multiple Bookings.

3. **Property → Booking**: One-to-Many  
   - A Property can have multiple Bookings.

4. **Booking → Payment**: One-to-One  
   - A Booking has one Payment.


 
