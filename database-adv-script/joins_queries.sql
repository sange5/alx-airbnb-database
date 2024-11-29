-- INNER JOIN to retrieve all bookings and respective users
SELECT 
    bookings.booking_id,
    bookings.property_id,
    bookings.booking_date,
    users.user_id,
    users.username
FROM 
    bookings
INNER JOIN 
    users
ON 
    bookings.user_id = users.user_id;

-- LEFT JOIN to retrieve all properties and their reviews, including properties with no reviews
SELECT 
    properties.property_id,
    properties.property_name,
    reviews.review_id,
    reviews.review_text
FROM 
    properties
LEFT JOIN 
    reviews
ON 
    properties.property_id = reviews.property_id;

-- FULL OUTER JOIN to retrieve all users and all bookings
SELECT 
    users.user_id,
    users.username,
    bookings.booking_id,
    bookings.property_id
FROM 
    users
FULL OUTER JOIN 
    bookings
ON 
    users.user_id = bookings.user_id;

