SELECT 
    photos.user_id,
    users.username,
    likes.photo_id,
    COUNT(likes.user_id) AS number_of_Likes
FROM
    likes
        JOIN
    photos
        JOIN
    users ON users.id = photos.user_id
        AND photos.id = likes.photo_id
GROUP BY likes.photo_id
ORDER BY number_of_Likes DESC
LIMIT 1;