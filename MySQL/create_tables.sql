CREATE DATABASE college_management;
USE college_management;

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    name VARCHAR(100),
    hod VARCHAR(100)
);

CREATE TABLE student (
    s_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_no VARCHAR(15),
    dob DATE,
    address VARCHAR(255),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE teacher (
    t_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_no VARCHAR(15),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(255),
    credit_hrs INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE class (
    class_id INT PRIMARY KEY,
    course_id INT,
    t_id INT,
    room_no VARCHAR(20),
    schedule VARCHAR(100),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (t_id) REFERENCES teacher(t_id)
);

CREATE TABLE enrollment (
    enrollment_id INT PRIMARY KEY,
    s_id INT,
    course_id INT,
    class_id INT,
    FOREIGN KEY (s_id) REFERENCES student(s_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (class_id) REFERENCES class(class_id)
);
