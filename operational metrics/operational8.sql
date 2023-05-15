SELECT 
    ds, 
    ROUND(AVG(1.0 * COUNT(job_id) * 3600 / SUM(time_spent)) OVER (
        ORDER BY ds
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ), 2) AS rolling_avg_throughput
FROM job_data
WHERE event IN ('transfer', 'decision')
GROUP BY ds;