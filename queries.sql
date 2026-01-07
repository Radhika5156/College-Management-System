-- Students with department names
SELECT s.name AS student_name, d.name AS department_name
FROM student s
JOIN department d ON s.dept_id = d.dept_id;

-- Teachers with department names
SELECT t.name AS teacher_name, d.name AS department_name
FROM teacher t
JOIN department d ON t.dept_id = d.dept_id;

-- Students enrolled in AI department courses
SELECT s.name, c.name AS course_name
FROM student s
JOIN enrollment e ON s.s_id = e.s_id
JOIN course c ON e.course_id = c.course_id
JOIN department d ON c.dept_id = d.dept_id
WHERE d.name = 'Artificial Intelligence';

-- Teachers with Gmail accounts
SELECT name, email
FROM teacher
WHERE email LIKE '%@gmail.com';
