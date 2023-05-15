SELECT 
    users.username,
    likes.user_id,
    COUNT(likes.created_at) AS "number of photos liked"
    FROM
    likes
        JOIN
    users ON users.id = likes.user_id
WHERE
    likes.photo_id
GROUP BY likes.user_id
HAVING COUNT(likes.created_at) = 257;