SELECT
    w.wishlist_id,
    w.name AS wishlist_name,
    u.first_name,
    u.last_name
FROM
    Airbnb.wishlist w
JOIN
    Airbnb.user u ON w.user_id = u.user_id
limit 5;