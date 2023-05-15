select 
count(job_id)/(30*24) as num_jobs_reviewed
from job_data
where 
ds between "2020-11-01" and "2020-11-30";