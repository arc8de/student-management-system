CREATE DATABASE student_management;
USE student_management;
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    admission_no VARCHAR(13) UNIQUE NOT NULL,
    course VARCHAR(100) NOT NULL,
    passwd VARCHAR(20) NOT NULL
);

USE student_management;
CREATE TABLE teachers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    employee_id VARCHAR(13) UNIQUE NOT NULL,
    course VARCHAR(100) NOT NULL,
    passwd VARCHAR(20) NOT NULL
);
