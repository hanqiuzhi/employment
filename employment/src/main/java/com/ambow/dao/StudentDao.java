package com.ambow.dao;

import com.ambow.entity.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentDao {


    public Student selectStudentById(int sid);
    public int updateStudent(Student student);
    public List<Student> selectStudentAll();

    public int addStudent(Student student);

    public int delStudent(int sid);

    Student selectStudentBySno(@Param("sno") String sno,@Param("spwd") String spwd);
}
