INSERT INTO department VALUES
(1, 'Computer Engineering', 'Dr. Patil'),
(2, 'Artificial Intelligence', 'Dr. Mehta');

INSERT INTO student VALUES
(101, 'Radhika Vyas', 'radhika@gmail.com', '9876543210', '2003-05-12', 'Shirpur', 1),
(102, 'Apeksha Patil', 'apeksha@gmail.com', '9876543220', '2003-08-18', 'Pune', 2);

INSERT INTO teacher VALUES
(201, 'Prof. Sharma', 'sharma@gmail.com', '9876543230', 1),
(202, 'Prof. Joshi', 'joshi@gmail.com', '9876543240', 2);

INSERT INTO course VALUES
(301, 'DBMS', 'Database Management System', 4, 1),
(302, 'Machine Learning', 'Intro to ML', 4, 2);

INSERT INTO class VALUES
(401, 301, 201, 'Room A1', 'Mon-Wed 10AM'),
(402, 302, 202, 'Room B2', 'Tue-Thu 2PM');

INSERT INTO enrollment VALUES
(501, 101, 301, 401),
(502, 102, 302, 402);
