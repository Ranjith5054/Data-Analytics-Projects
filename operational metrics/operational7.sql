select ds,
  jobs_reviewed,
  avg(jobs_reviewed)over(order by ds rows between 6 preceding and current row) as throughput_7_day_rolling_average
  from
(
select ds,
count(DISTINCT job_id) as jobs_reviewed
from
job_data
where ds between "2020-11-01" and "2020-11-30"
group by ds
order by ds
)b;
-- SELECT ds as date_of_review, jobs_reviewed, AVG(jobs_reviewed) 
-- OVER(ORDER BY ds ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS 
-- throughput_7_rolling_average
-- FROM 
-- ( 
-- SELECT ds, COUNT( DISTINCT job_id) AS jobs_reviewed
-- FROM job_data
-- GROUP BY ds ORDER BY ds 
-- ) a;