SELECT p.property_id, p.title, COUNT(i.images_id) AS image_count
FROM Airbnb.property p
JOIN Airbnb.images i ON p.property_id = i.property_id
GROUP BY p.property_id, p.title
HAVING COUNT(i.images_id) > 1;



