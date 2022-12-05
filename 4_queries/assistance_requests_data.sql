/*/////////////////////////////////////////////*/
/* Pertinent Details about Assistance Requests */
/*/////////////////////////////////////////////*/

SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
-- capture assistance_requests, including where assignments.id is null
FULL OUTER JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;