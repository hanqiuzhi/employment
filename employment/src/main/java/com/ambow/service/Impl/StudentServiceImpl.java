package com.ambow.service.Impl;

import com.ambow.dao.StudentDao;
import com.ambow.entity.Student;
import com.ambow.service.StudentService;

import javax.annotation.Resource;
import java.util.List;

public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentDao studentDao;

    public void setStudentDao(StudentDao studentDao) {
        this.studentDao = studentDao;
    }

    @Override
    public Student selectStudentById(Student student) {
        return studentDao.selectStudentById(student);
    }

    @Override
    public void updateStudent(Student student) {
        studentDao.updateStudent(student);
    }

    @Override
    public List<Student> selectStudentAll() {
        return studentDao.selectStudentAll();
    }

    @Override
    public Student loginStudent(Student student) {
        return studentDao.loginStudent(student);
    }

    @Override
    public void addStudent(Student student) {
        studentDao.addStudent(student);
    }

    @Override
    public void delStudent(Student student) {
        studentDao.delStudent(student);
    }
}
