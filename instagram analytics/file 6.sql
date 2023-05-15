SELECT 
    tags.id,
    tags.tag_name,
    COUNT(photo_tags.photo_id) AS no_of_times_tag_used
FROM
    photo_tags
        JOIN
    tags ON photo_tags.tag_id = tags.id
WHERE
    photo_tags.photo_id
GROUP BY tag_id
ORDER BY no_of_times_tag_used DESC
LIMIT 5;