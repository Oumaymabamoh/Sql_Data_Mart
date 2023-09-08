SELECT
    p.property_id,
    p.title AS property_title,
    u.first_name AS user_first_name,
    u.last_name AS user_last_name,
    a.amenities_id,
    a.wifi,
    a.kitchen,
    a.washer,
    a.tv
FROM
    Airbnb.property p
JOIN
    Airbnb.property_amenities pa ON p.property_id = pa.property_id
JOIN
    Airbnb.amenities a ON pa.amenities_id = a.amenities_id
JOIN
    Airbnb.user u ON p.user_id = u.user_id
ORDER BY
    p.property_id;
