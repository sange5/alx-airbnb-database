-- Total number of bookings made by each user using COUNT and GROUP BY
SELECT 
    user_id,
    COUNT(booking_id) AS total_bookings
FROM 
    bookings
GROUP BY 
    user_id;

-- Rank properties based on total number of bookings using ROW_NUMBER
SELECT 
    property_id,
    property_name,
    COUNT(booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(booking_id) DESC) AS rank
FROM 
    bookings
JOIN 
    properties
ON 
    bookings.property_id = properties.property_id
GROUP BY 
    property_id, property_name;

-- Rank properties based on total number of bookings using RANK
SELECT 
    property_id,
    property_name,
    COUNT(booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(booking_id) DESC) AS rank
FROM 
    bookings
JOIN 
    properties
ON 
    bookings.property_id = properties.property_id
GROUP BY 
    property_id, property_name;

