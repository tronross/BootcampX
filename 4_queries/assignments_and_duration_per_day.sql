--//////////////////////////////////////////////////////
--Total Assignments and Duration of Assignments per Day 
--//////////////////////////////////////////////////////

SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day ASC;