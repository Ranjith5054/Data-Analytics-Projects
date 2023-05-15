SELECT 
    COUNT(distinct users.id) AS numberOfUsers,
    COUNT(photos.id) AS numberOfPosts,
    COUNT(photos.id) / COUNT(distinct users.id) AS numberOfTimesAverageUserPosts
FROM
    users
        LEFT JOIN
    photos ON users.id = photos.user_id;