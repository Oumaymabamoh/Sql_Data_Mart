SELECT u.first_name, u.last_name,
ROUND(AVG(rr.rating), 2) AS "Average_rating"
FROM Airbnb.review_rating rr
JOIN Airbnb.user u ON rr.user_id = u.user_id
GROUP BY u.user_id
ORDER BY AVG(rr.rating) DESC
LIMIT 12;
