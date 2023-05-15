SELECT 
    COUNT(DISTINCT users.id) as 'total users',
    COUNT(photos.id) as 'total no of photos',
    ROUND((COUNT(photos.id) / COUNT(DISTINCT users.id)), 2) as 'total_photos/total_users'
FROM
    users
        LEFT JOIN
    photos ON users.id = photos.user_id;