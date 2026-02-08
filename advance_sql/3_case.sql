SELECT
    COUNT(job_id) AS number_of_jobs,
       
    CASE 
    WHEN job_location='Anywhere' THEN 'Remote'
    WHEN job_location='New York, NY' THEN 'Local'
    ELSE 'onsite'
    END AS location_ctegory
FROM    job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY
    location_ctegory

