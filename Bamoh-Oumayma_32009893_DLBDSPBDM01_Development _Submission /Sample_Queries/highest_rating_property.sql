SELECT p.property_id, p.title, COALESCE(MAX(r.rating), 0) AS highest_rating
FROM Airbnb.property p
LEFT JOIN Airbnb.review_rating r ON p.review_rating_id = r.review_rating_id
GROUP BY p.property_id, p.title
ORDER BY highest_rating DESC
LIMIT 5;



