-- Non-correlated subquery to find properties where the average rating is greater than 4.0
SELECT 
    property_id,
    property_name
FROM 
    properties
WHERE 
    property_id IN (
        SELECT 
            property_id
        FROM 
            reviews
        GROUP BY 
            property_id
        HAVING 
            AVG(rating) > 4.0
    );

-- Correlated subquery to find users who have made more than 3 bookings
SELECT 
    user_id,
    username
FROM 
    users u
WHERE 
    (SELECT 
        COUNT(*)
     FROM 
        bookings b
     WHERE 
        b.user_id = u.user_id) > 3;
