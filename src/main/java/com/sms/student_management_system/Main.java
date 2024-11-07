package com.sms.student_management_system;

import com.sms.dao.StudentDAO;
import com.sms.dao.TeacherDAO;
import com.sms.model.Student;
import com.sms.model.Teacher;

public class Main {
    public static void main(String[] args) {
        StudentDAO studentDAO = new StudentDAO();
        TeacherDAO teacherDAO = new TeacherDAO();

        // Example: Adding a new student
        Student student = new Student();
        student.setName("Shiv Mohan");
        student.setAge(20);
        student.setEmail("shivmohan.23scse0000002@galgotiasuniversity.ac.in");
        student.setAdmissionNo("23scse0000002");
        student.setCourse("B.Tech CSE");
        student.setPasswd("password123");
        studentDAO.addStudent(student);

        // Example: Adding a new teacher
        Teacher teacher = new Teacher();
        teacher.setName("Dr. Rama");
        teacher.setAge(30);
        teacher.setEmail("Rama.emp1234567@galgotiasuniversity.ac.in");
        teacher.setEmployeeId("EMP1234567");
        teacher.setCourse("Java");
        teacher.setPasswd("teacherpassword");
        teacherDAO.addTeacher(teacher);

        // Fetching all students and teachers
        System.out.println("All Students:");
        studentDAO.getAllStudents().forEach(s -> System.out.println(s));

        System.out.println("All Teachers:");
        teacherDAO.getAllTeachers().forEach(t -> System.out.println(t));
    }
}