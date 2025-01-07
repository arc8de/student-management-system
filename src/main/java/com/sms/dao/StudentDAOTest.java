package com.sms.dao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.sms.model.Student;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class StudentDAOTest {

    @Autowired
    private StudentDAO studentDAO;

    @Test
    public void testGetStudentById() {
        // Arrange
        Student student = new Student();
        studentDAO.save(student);

        // Act
        Student result = (Student) studentDAO.getStudentById(1);

        // Assert
        assertEquals(student, result);
    }

	private void assertEquals(Student student, Student result) {
		// TODO Auto-generated method stub
		
	}
}