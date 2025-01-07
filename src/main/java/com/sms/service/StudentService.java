package com.sms.service;

import java.util.List;

import com.sms.dao.StudentDAO;
import com.sms.model.Student;

public class StudentService {

    private StudentDAO studentDAO;

    // Constructor injection of StudentDAO
    public StudentService(StudentDAO studentDAO) {
        this.studentDAO = studentDAO;
    }

    /**
     * Adds a new student to the database.
     * @param student the student to add
     */
    public void addStudent(Student student) {
        studentDAO.save(student);
    }

    /**
     * Updates an existing student in the database.
     * @param student the student to update
     */
    public void updateStudent(Student student) {
        studentDAO.update(student);
    }

    /**
     * Deletes a student from the database by ID.
     * @param id the ID of the student to delete
     */
    public void deleteStudent(int id) {
        studentDAO.delete(id);
    }

    /**
     * Retrieves a student from the database by ID.
     * @param id the ID of the student to retrieve
     * @return the student with the given ID
     */
    public Object getStudentById(int id) {
        return studentDAO.getStudentById(id);
    }

    /**
     * Retrieves all students from the database.
     * @return a list of all students
     */
    public List<Student> getAllStudents() {
        return studentDAO.getAllStudents();
    }
}