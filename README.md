STUDENT MANAGEMENT SYSTEM
========================

Project Overview
----------------
A Java-based Student Management System for managing student and teacher information using MySQL database.

Project Structure
-----------------
student-management-system/

│

├── src/

│   ├── main/

│   │   └── java/

│   │       └── com/

│   │           └── sms/

│   │               ├── dao/

│   │               │   ├── DBConnection.java

│   │               │   ├── StudentDAO.java

│   │               │   └── TeacherDAO.java

│   │               ├── model/

│   │               │   ├── Student.java

│   │               │   └── Teacher.java

│   │               └── student_management_system/

│   │                   └── Main.java

│   │

│   └── schema.sql

│

├── pom.xml

└── README.txt

Prerequisites
-------------
- Java Development Kit (JDK) 8 or higher
- MySQL Database
- Maven for dependency management

Database Setup
--------------
1. Install MySQL Server
2. Create database using schema in src/schema.sql:
   - CREATE DATABASE student_management
   - USE student_management

Database Connection Configuration
---------------------------------
File: src/main/java/com/sms/dao/DBConnection.java
Update connection details:
- URL: jdbc:mysql://localhost:3306/student_management
- USER: root
- PASSWORD: root

Dependencies
------------
- MySQL Connector/J
- JUnit (for testing)

Building the Project
--------------------
1. Clone repository:
   git clone https://github.com/yourusername/student-management-system.git
   cd student-management-system

2. Install dependencies:
   mvn clean install

Running the Application
-----------------------
Command: mvn compile exec:java

Features
--------
- Add new students
- Add new teachers
- Retrieve all students
- Retrieve all teachers

Database Schema
---------------
Students Table Columns:
- id (Primary Key)
- name
- age
- email
- admission_no
- course
- passwd

Teachers Table Columns:
- id (Primary Key)
- name
- age
- email
- employee_id
- course
- passwd

Example Usage
-------------
// Adding a new student
Student student = new Student();
student.setName("Shiv Mohan");
student.setAge(20);
student.setEmail("shivmohan@example.com");
studentDAO.addStudent(student);

// Retrieving all students
List<Student> students = studentDAO.getAllStudents();
students.forEach(System.out::println);

Troubleshooting
---------------
- Ensure MySQL server is running
- Verify database connection parameters
- Check that all dependencies are installed

Contribution Guidelines
-----------------------
1. Fork the repository
2. Create feature branch: git checkout -b feature/AmazingFeature
3. Commit changes: git commit -m 'Add some AmazingFeature'
4. Push to branch: git push origin feature/AmazingFeature
5. Open Pull Request

Contact
--------
Project Maintainer: arc8de
Project Link: https://github.com/arc8de/student-management-system

License
--------
Distributed under the MIT License
