SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    l.language
FROM
    Airbnb.user_language ul
JOIN
    Airbnb.user u ON ul.user_id = u.user_id
JOIN
    Airbnb.language l ON ul.language_id = l.language_id;

	

	
	
	
