-- Time: 3:21
--What skills are required for these top-paying positions?

    WITH top_paying_jobs AS (
    SELECT
            job_id,
            job_title,
            salary_year_avg,
            job_posted_date,
            name AS company_name
    FROM
            job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
            job_title_short = 'Data Analyst' AND  -- change practise
            job_location = 'Anywhere' AND         -- change practise
            salary_year_avg IS NOT NULL
    ORDER BY
            salary_year_avg DESC
    LIMIT 10
)

    SELECT 
    top_paying_jobs.*, --top paying job theke sob column ashce
    skills
    FROM top_paying_jobs
    INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    ORDER BY
            salary_year_avg DESC
