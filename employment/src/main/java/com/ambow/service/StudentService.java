package com.ambow.service;

import com.ambow.entity.Student;

import java.util.List;

public interface StudentService {
    //学生查询个人信息
    public Student selectStudentById(Student student);

    //学生修改个人信息
    public void updateStudent(Student student);

    //查询所有学生信息
    public List<Student> selectStudentAll();

    //学生登录
    public Student loginStudent(Student student);

    //添加信息
    public void addStudent(Student student);

    //删除学生信息
    public void delStudent(Student student);
}
