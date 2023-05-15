SELECT 
    users.username,
    likes.user_id,
    COUNT(likes.created_at) AS numberofPhotosLiked
FROM
    likes
        JOIN
    users ON users.id = likes.user_id
GROUP BY likes.user_id
where (numberofPhotosLiked = 257);