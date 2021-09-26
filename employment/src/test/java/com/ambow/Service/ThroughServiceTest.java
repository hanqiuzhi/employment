package com.ambow.Service;

import com.ambow.dao.CityDao;
import com.ambow.dao.ResumeDao;
import com.ambow.dao.StudentDao;
import com.ambow.dao.ThroughDao;
import com.ambow.entity.City;
import com.ambow.entity.Resume;
import com.ambow.entity.Student;
import com.ambow.entity.Through;
import com.ambow.utils.Tools;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class ThroughServiceTest {

    @Test
    public void selectThroughAll(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ThroughDao throughDao = app.getBean(ThroughDao.class);
        List<Through> throughList = throughDao.selectThroughAll();
        System.out.println(throughList);
    }

    @Test
    public void selectThroughAById(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ThroughDao throughDao = app.getBean(ThroughDao.class);
        Through through = throughDao.selectThroughById(1);
        System.out.println(through);
    }

    @Test
    public void addThrough(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ThroughDao throughDao = app.getBean(ThroughDao.class);
        Through through = new Through();
        through.setTname("项目二");
        through.setTcontent("内容");
        through.setTtime("2021-1-1");
        Resume resume = new Resume();
        resume.setRid(1);
        through.setTrid(resume);
        int res = throughDao.addThrough(through);
        System.out.println(res);
    }

    @Test
    public void updateThrough(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ThroughDao throughDao = app.getBean(ThroughDao.class);
        Through through = throughDao.selectThroughById(1);
        through.setTcontent("描述111");
        int res = throughDao.updateThrough(through);
        System.out.println(res);
    }

    @Test
    public void delThrough(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ThroughDao throughDao = app.getBean(ThroughDao.class);
        int res = throughDao.delThrough(2);
        System.out.println(res);
    }
}
