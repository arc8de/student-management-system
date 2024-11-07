package com.sms.dao;

import com.sms.model.Teacher;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TeacherDAO {
    public void addTeacher(Teacher teacher) {
        String sql = "INSERT INTO teachers (name, age, email, employee_id, course, passwd) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, teacher.getName());
            statement.setInt(2, teacher.getAge());
            statement.setString(3, teacher.getEmail());
            statement.setString(4, teacher.getEmployeeId());
            statement.setString(5, teacher.getCourse());
            statement.setString(6, teacher.getPasswd());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Teacher> getAllTeachers() {
        List<Teacher> teachers = new ArrayList<>();
        String sql = "SELECT * FROM teachers";
        try (Connection connection = DBConnection.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {
            while (resultSet.next()) {
                Teacher teacher = new Teacher();
                teacher.setId(resultSet.getInt("id"));
                teacher.setName(resultSet.getString("name"));
                teacher.setAge(resultSet.getInt("age"));
                teacher.setEmail(resultSet.getString("email"));
                teacher.setEmployeeId(resultSet.getString("employee_id"));
                teacher.setCourse(resultSet.getString("course"));
                teacher.setPasswd(resultSet.getString("passwd"));
                teachers.add(teacher);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teachers;
    }
}