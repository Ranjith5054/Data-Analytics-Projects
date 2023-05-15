SELECT 
    users.username,
    likes.user_id,
    COUNT(likes.created_at) AS numberOfPhotosLiked
FROM
    likes
        JOIN
    users ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING numberOfPhotosLiked = 257;