SELECT * FROM users;
select * from likes;
select * from photos;
select * from comments;
select * from tags;
select * from follows;
select * from photo_tags;
select count(distinct photos.user_id) from photos;
select count(distinct users.id) from users;