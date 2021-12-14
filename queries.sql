-- Part 1: Test it with SQL
--list the columns and their data types in the table as a SQL comment.--
--id (int,PK),
--employer (varchar),
--name(varchar),
--skills(varchar)
-- Part 2: Test it with SQL
--write a query to list the names of the employers in St. Louis City--
SELECT name
FROM employer
WHERE location = "St. Louis City";

-- Part 3: Test it with SQL
--write the SQL statement to remove the job table--
DROP TABLE job;

-- Part 4: Test it with SQL
--write a query to return a list of all fields of all skills that are attached to jobs in alphabetical
 --order by name. If a skill does not have a job listed, it should not be included in the results of this query.--
 SELECT *
 FROM skill
 INNER JOIN job_skills ON skill.id = job_skills.skills_id
 WHERE job_skills.jobs_id IS NOT NULL
 ORDER BY name ASC;