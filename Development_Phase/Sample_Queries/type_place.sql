SELECT b.property_id, b.title, a.place_type
FROM Airbnb.place_type a
JOIN Airbnb.property b
ON a.place_type_id = b.property_id
WHERE place_type = 'room' OR place_type = 'apartment'
ORDER BY property_id


