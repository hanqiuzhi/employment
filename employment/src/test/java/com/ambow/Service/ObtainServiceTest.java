package com.ambow.Service;

import com.ambow.dao.ObtainDao;
import com.ambow.dao.ResumeDao;
import com.ambow.entity.City;
import com.ambow.entity.Obtain;
import com.ambow.entity.Resume;
import com.ambow.entity.Student;
import com.ambow.service.ObtainService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class ObtainServiceTest {


    @Test
    public void selectObtainAll(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ObtainDao obtainDao = app.getBean(ObtainDao.class);
        List<Obtain> obtainList = obtainDao.selectObtainAll();
        System.out.println(obtainList);
    }

    @Test
    public void selectObtainById(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ObtainDao obtainDao = app.getBean(ObtainDao.class);
        Obtain obtain = obtainDao.selectObtainById(1);
        System.out.println(obtain);
    }

    @Test
    public void addResule(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ObtainDao obtainDao = app.getBean(ObtainDao.class);
        Obtain obtain = new Obtain();
        obtain.setOself(1);
        obtain.setOename("xx公司1");
        obtain.setOjname("xx岗位1");
        obtain.setOtime("2020-1-11");
        Student student = new Student();
        student.setSid(1);
        obtain.setOsid(student);
        int res = obtainDao.addObtain(obtain);
        System.out.println(res);
    }

    @Test
    public void updateObtain(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ObtainDao obtainDao = app.getBean(ObtainDao.class);
        Obtain obtain = obtainDao.selectObtainById(1);
        obtain.setOjname("xx职位");
        int res = obtainDao.updateObtain(obtain);
        System.out.println(res);
    }

    @Test
    public void delObtain(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ObtainDao obtainDao = app.getBean(ObtainDao.class);
        int res = obtainDao.delObtain(2);
        System.out.println(res);
    }
}
