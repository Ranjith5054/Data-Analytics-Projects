SELECT 
    count(distinct users.id) as 'no of users who post',
    COUNT(photos.id) as 'total no of post',
    count(photos.id)/count(distinct users.id) as 'no of times avg users post'
FROM
    users
        JOIN
    photos ON users.id = photos.user_id;