package com.ambow.dao;

import com.ambow.entity.Student;

import java.util.List;

public interface StudentDao {


    public Student selectStudentById(Student student);
    public void updateStudent(Student student);
    public List<Student> selectStudentAll();

    public Student loginStudent(Student student);

    public void addStudent(Student student);

    public void delStudent(Student student);
}
