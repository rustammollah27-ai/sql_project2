/*Question: Which job roles offer the highest salaries for my target role?
What are the most optimal skills to learn?
Optimal skills are defined as those with high demand and high pay.*/

/*  SELECT
        job_id,
        job_title,
        job_location,
        job_schedule_type,
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
LIMIT 10     */


/*SELECT       -- * sudhu mtro file explor korar jonno
        job_id,
        job_title,
        job_location,
        job_schedule_type,
        salary_year_avg,
        job_posted_date
FROM
        job_postings_fact

LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
ORDER BY
        salary_year_avg DESC
LIMIT 10 */

/* LEFT JOIN: job_postings_fact থেকে সব job নেওয়া হবে
2️⃣ প্রতিটা job এর company_id দেখা হবে
3️⃣ যদি company_dim এ same company_id পাওয়া যায়
➡️ company info যোগ হবে
4️⃣ যদি না পাওয়া যায়
➡️ company এর কলামগুলোতে NULL বসবে
➡️ কিন্তু job row টা থাকবেই */


SELECT
        job_id,
        job_title,
        job_location,
        job_schedule_type,
        salary_year_avg,
        job_posted_date,
        name AS company_name
FROM
        job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
ORDER BY 
        salary_year_avg DESC
LIMIT 100



