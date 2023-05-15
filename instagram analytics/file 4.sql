SELECT 
    users.id, users.username
FROM
    users
        LEFT JOIN
    photos ON users.id = photos.user_id
WHERE
    created_dat IS NULL;