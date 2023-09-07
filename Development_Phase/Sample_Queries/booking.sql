SELECT property_id, COUNT(*) AS booking_count
FROM Airbnb.booking
GROUP BY property_id
ORDER BY booking_count DESC;
