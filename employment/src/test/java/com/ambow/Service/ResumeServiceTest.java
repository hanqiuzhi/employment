package com.ambow.Service;

import com.ambow.dao.CityDao;
import com.ambow.dao.ResumeDao;
import com.ambow.dao.StudentDao;
import com.ambow.entity.City;
import com.ambow.entity.Resume;
import com.ambow.entity.Student;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class ResumeServiceTest {


    @Test
    public void selectResumeAll(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ResumeDao resumeDao = app.getBean(ResumeDao.class);
        List<Resume> resumeList = resumeDao.selectResumeAll();
        System.out.println(resumeList);
    }

    @Test
    public void selectResumeById(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ResumeDao resumeDao = app.getBean(ResumeDao.class);
        Resume resume = resumeDao.selectResumeById(1);
        System.out.println(resume);
    }

    @Test
    public void addResule(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ResumeDao resumeDao = app.getBean(ResumeDao.class);
        Resume resume = new Resume();
        resume.setRjobs("职位");
        resume.setRprice(1234.0);
        City city = new City();
        city.setCid(1);
        resume.setRcid(city);
        resume.setRskill("都还行");
        Student student = new Student();
        student.setSid(1);
        resume.setRsid(student);
        int res = resumeDao.addResume(resume);
        System.out.println(res);
    }

    @Test
    public void updateResume(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ResumeDao resumeDao = app.getBean(ResumeDao.class);
        Resume resume = resumeDao.selectResumeById(1);
        resume.setRjobs("职位1");
        int res = resumeDao.updateResume(resume);
        System.out.println(res);
    }

    @Test
    public void delResume(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ResumeDao resumeDao = app.getBean(ResumeDao.class);
        int res = resumeDao.delResume(2);
        System.out.println(res);
    }
}
