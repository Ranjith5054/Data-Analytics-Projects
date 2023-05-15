SELECT 
    COUNT(DISTINCT users.id) as no_of_users,
    COUNT(photos.id) as total_no_of_photos,
    ROUND((COUNT(photos.id) / COUNT(DISTINCT users.id)),
            2) AS avg_no_of_times_a_user_posts
FROM
    users
        LEFT JOIN
    photos ON users.id = photos.user_id;