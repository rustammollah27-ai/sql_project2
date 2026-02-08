WITH remote_job_skills AS (
SELECT 
        --job_postings.job_id,--(GROUP BY korar somai eta darkar nai)
        skill_id,
        --job_postings.job_work_from_home  --(WHERE column make hoyar por r darkar nai)
        COUNT(*) AS skill_count
FROM
        skills_job_dim AS skills_to_job --sjd theke name change st
INNER JOIN job_postings_fact AS job_postings ON job_postings.job_id = skills_to_job.job_id
WHERE   job_postings.job_work_from_home = TRUE
GROUP BY skill_id
)

SELECT * 
        skills.skill_id,
        skills AS skill_name,
        skill_count
FROM remote_job_skills
INNER JOIN skills_dim AS skills ON skills.skill_id = remote_job_skills.skill_id
