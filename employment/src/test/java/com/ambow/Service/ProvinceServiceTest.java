package com.ambow.Service;

import com.ambow.dao.FacultyDao;
import com.ambow.dao.ProvinceDao;
import com.ambow.entity.Faculty;
import com.ambow.entity.Province;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class ProvinceServiceTest {

    //查询所有省份
    @Test
    public void selectProvinceTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ProvinceDao provinceDao = app.getBean(ProvinceDao.class);
        List<Province> list = provinceDao.selectProvinceAll();
        System.out.println(list);
    }


    //测试学院
    @Test
    public void selectFacultyTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        FacultyDao facultyDao=app.getBean(FacultyDao.class);
        List<Faculty> list = facultyDao.selectFacultyAll();
        System.out.println(list);
    }

    @Test
    public void addFacultyTest(){
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        FacultyDao facultyDao=app.getBean(FacultyDao.class);
        Faculty faculty=new Faculty();
        faculty.setFname("生命科学学院");
        facultyDao.addFaculty(faculty);
    }

    @Test
    public void updateFacultyTest(){
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        FacultyDao facultyDao=app.getBean(FacultyDao.class);
        Faculty faculty=new Faculty();
        faculty.setFid(3);
        faculty.setFname("文学与新闻传播学院");
        int i=facultyDao.updateFaculty(faculty);
        System.out.println(i);
    }
    @Test
    public void delFacultyTest(){
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        FacultyDao facultyDao=app.getBean(FacultyDao.class);
        int i=facultyDao.delFaculty(2);
        System.out.println(i);
    }
}
