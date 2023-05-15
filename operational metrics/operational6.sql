SELECT 
    job_id, language, COUNT(language) AS total_of_each_lang,
    (count(language)/(select count(*) from job_data))*100 as 'percentage share of each language'
FROM
    job_data
GROUP BY language, job_id
ORDER BY job_id;
