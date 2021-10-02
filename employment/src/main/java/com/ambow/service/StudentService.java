package com.ambow.service;

import com.ambow.entity.Student;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface StudentService {
    //学生查询个人信息
    public Student selectStudentById(int sid);

    //学生修改个人信息
    public int updateStudent(Student student);

    //查询所有学生信息
    public List<Student> selectStudentAll();

    //学生登录
    Student selectStudentBySno(String sno, String spwd);

    //添加信息
    public int addStudent(Student student);

    //删除学生信息
    public int delStudent(int sid);


}
