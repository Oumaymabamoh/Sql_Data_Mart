SELECT
    p.title AS property_title,
    ng.adults,
    ng.children,
    ng.babies,
    ng.pets
FROM
    Airbnb.property p
JOIN
    Airbnb.number_guests ng ON p.property_id = ng.number_guests_id;


