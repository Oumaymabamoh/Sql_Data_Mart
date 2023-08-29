SELECT
    p.property_id,
    p.title AS property_title,
    pr.base_price,
    pr.discount_per_week,
    pr.discount_per_month,
    pr.service_fee,
    pr.airbnb_fee
FROM
    Airbnb.property p
JOIN
    Airbnb.price pr ON p.property_id = pr.price_id
WHERE
    pr.base_price BETWEEN 8 AND 120;
	
	
	
	
