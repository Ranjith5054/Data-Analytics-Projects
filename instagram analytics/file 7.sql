SELECT 
    DAYOFWEEK(created_at) AS day_of_the_week,
    COUNT(users.id) AS number_of_Accounts_Registered
FROM
    users
GROUP BY day_of_the_week
ORDER BY number_of_Accounts_Registered DESC;