package com.ambow.Service;

import com.ambow.dao.ProvinceDao;
import com.ambow.dao.StudentDao;
import com.ambow.entity.Faculty;
import com.ambow.entity.Major;
import com.ambow.entity.Province;
import com.ambow.entity.Student;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;


public class StudentServiceTest {

    @Test
    public void selectStudentAll(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        StudentDao studentDao = app.getBean(StudentDao.class);
        List<Student> list = studentDao.selectStudentAll();
        System.out.println(list);
    }

    @Test
    public void selectStudentById(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        StudentDao studentDao = app.getBean(StudentDao.class);
        Student student=new Student();
        student.setSid(1);
        Student student1 = studentDao.selectStudentById(student);
        System.out.println(student1);
    }

    @Test
    public void updateStudent(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        StudentDao studentDao = app.getBean(StudentDao.class);
        Student student=new Student();
        student.setSname("2");
        student.setSno(1814110014);
        student.setSidcard("150426199910141781");
        student.setSage(23);
        student.setSsex("男");
        student.setSphone("18947605450");
        student.setSemail("19991017@163.com");
        student.setSpwd("123456");
        student.setSbgdate("2018");
        student.setSeducation("博士");
        student.setSflag(2);
        student.setSid(3);
        studentDao.updateStudent(student);
        selectStudentAll();
    }

    @Test
    public void addStudent(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        StudentDao studentDao = app.getBean(StudentDao.class);
        Student student=new Student();
        student.setSname("3");
        student.setSno(1814110013);
        student.setSidcard("150426199910141780");
        student.setSage(23);
        student.setSsex("女");
        student.setSphone("18947605450");
        student.setSemail("19991018@163.com");
        student.setSpwd("1234567");
        Major major=new Major();
        major.setMid(1);
        student.setSmid(major);
        System.out.println("1111111111111"+student.getSmid());
        student.setSbgdate("2018");
        student.setSeducation("硕士");
        student.setSflag(2);
        studentDao.addStudent(student);

    }
    @Test
    public void delStudent(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        StudentDao studentDao = app.getBean(StudentDao.class);
        Student student=new Student();
        student.setSno(1814110014);
        studentDao.delStudent(student);
        selectStudentAll();
    }

    @Test
    public void loginStudent() {
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        StudentDao studentDao = app.getBean(StudentDao.class);
        Student student=new Student();
        student.setSno(1814110011);
        student.setSpwd("123456");
        Student student1=studentDao.loginStudent(student);
        System.out.println(student1);
    }
}

