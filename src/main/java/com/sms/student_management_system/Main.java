package com.sms.student_management_system;

import com.sms.dao.StudentDAO;
import com.sms.model.Student;

import java.util.List;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        StudentDAO studentDAO = new StudentDAO();
        Scanner scanner = new Scanner(System.in);
        int choice;

        do {
            System.out.println("Student Management System");
            System.out.println("1. Add Student");
            System.out.println("2. View All Students");
            System.out.println("3. Exit");
            System.out.print("Enter your choice: ");
            choice = scanner.nextInt();
            scanner.nextLine(); // Consume newline

            switch (choice) {
                case 1:
                    // Adding a new student
                    Student student = new Student();
                    System.out.print("Enter student name: ");
                    student.setName(scanner.nextLine());
                    System.out.print("Enter student email: ");
                    student.setEmail(scanner.nextLine());
                    System.out.print("Enter student age: ");
                    student.setAge(scanner.nextInt());
                    studentDAO.addStudent(student);
                    System.out.println("Student added successfully!");
                    break;

                case 2:
                    // Fetching and displaying all students
                    List<Student> students = studentDAO.getAllStudents();
                    System.out.println("All Students:");
                    if (students.isEmpty()) {
                        System.out.println("No students found.");
                    } else {
                        students.forEach(s -> System.out.println(s));
                    }
                    break;

                case 3:
                    System.out.println("Exiting the program.");
                    break;

                default:
                    System.out.println("Invalid choice. Please try again.");
            }
            System.out.println();
        } while (choice != 3);

        scanner.close();
    }
}