SELECT user_type, COUNT(*) as user_count
FROM Airbnb.user
GROUP BY user_type;