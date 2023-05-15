select (avg(photo_count)) as 'average_post'
from (
select user_id, count(id) as photo_count
from photos
group by user_id
)temp;
