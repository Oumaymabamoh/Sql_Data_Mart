SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    pm.payment_method
FROM
    Airbnb.user u
JOIN
    Airbnb.payment_method pm ON u.user_id = pm.payment_method_id;




