EXPLAIN ANALYZE
SELECT
    bookings.booking_id,
    users.user_id, users.name AS user_name, users.email,
    properties.property_id, properties.location, properties.price,
    payments.payment_id, payments.payment_date, payments.amount
FROM
    bookings
JOIN
    users ON bookings.user_id = users.user_id
JOIN
    properties ON bookings.property_id = properties.property_id
JOIN
    payments ON bookings.booking_id = payments.booking_id
WHERE
    bookings.booking_date BETWEEN '2023-01-01' AND '2023-12-31';
