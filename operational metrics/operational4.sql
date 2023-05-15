SELECT ds, ROUND(1.0*COUNT(job_id)*3600/SUM(time_spent),2) AS throughput
FROM job_data
WHERE event IN ('transfer','decision')
AND ds BETWEEN '2020-11-01' AND '2020-11-30'
GROUP BY ds;