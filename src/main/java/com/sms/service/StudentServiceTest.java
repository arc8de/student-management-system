package com.sms.service;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import com.sms.dao.StudentDAO;
import com.sms.model.Student;

import static org.mockito.Mockito.*;
import static org.junit.Assert.*;

@RunWith(MockitoJUnitRunner.class)
public class StudentServiceTest {

    @Mock
    private StudentDAO studentDAO;

    @InjectMocks
    private StudentService studentService;

    @Test
    public void testGetStudentById() {
        // Arrange
        Student student = new Student();
        when(studentDAO.getStudentById(1)).thenReturn(student);

        // Act
        Student result = studentService.getStudentById(1);

        // Assert
        assertEquals(student, result);
    }
}