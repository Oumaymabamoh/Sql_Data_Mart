SELECT p.property_id, p.title
FROM Airbnb.property p
JOIN Airbnb.wishlist_property_mapping wpm ON p.property_id = wpm.property_id
WHERE wpm.wishlist_id = 5;






