package com.ambow.service.Impl;

import com.ambow.dao.StudentDao;
import com.ambow.entity.Student;
import com.ambow.service.StudentService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentDao studentDao;

    @Override
    public Student selectStudentById(int sid) {
        return studentDao.selectStudentById(sid);
    }

    @Override
    public int updateStudent(Student student) {
        return studentDao.updateStudent(student);
    }

    @Override
    public List<Student> selectStudentAll() {
        return studentDao.selectStudentAll();
    }

    @Override
    public Student selectStudentBySno(String sno, String spwd) {
        return studentDao.selectStudentBySno(sno,spwd);
    }

    @Override
    public int addStudent(Student student) {
        return studentDao.addStudent(student);
    }

    @Override
    public int delStudent(int sid) {
        return studentDao.delStudent(sid);
    }

}
