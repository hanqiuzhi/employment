package com.ambow.Service;

import com.ambow.dao.HiringDao;
import com.ambow.entity.Hiring;
import com.ambow.entity.Job;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.swing.plaf.PanelUI;
import java.util.List;

public class HiringServiceTest {

    @Test
    public void addHiringTest(){
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        HiringDao hiringDao=(HiringDao)app.getBean(HiringDao.class);
        Hiring hiring=new Hiring();
        hiring.setHname("招聘2");
        hiring.setHnum(5);
        hiring.setHmajor("会计");
        hiring.setHexperience("不限");
        hiring.setHprice(2800.00);
        hiring.setHetime("now");
        Job job=new Job();
        job.setJid(4);
        hiring.setHjid(job);
        hiringDao.addHiring(hiring);
    }

    @Test
    public void updateHiringTest(){
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        HiringDao hiringDao=(HiringDao)app.getBean(HiringDao.class);
        Hiring hiring=new Hiring();
        hiring.setHid(4);
        hiring.setHname("招聘3");
        hiring.setHnum(5);
        hiring.setHmajor("实施");
        hiring.setHexperience("本科及以上");
        hiring.setHprice(3800.00);
        hiring.setHetime("now");
        Job job=new Job();
        job.setJid(2);
        hiring.setHjid(job);
        hiringDao.updateHiring(hiring);
    }

    @Test
    public void allHiringTest(){
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        HiringDao hiringDao=(HiringDao)app.getBean(HiringDao.class);
        Hiring hiring=new Hiring();
        Job job=new Job();
        List<Hiring> list=hiringDao.selectHiringAll();
        for (Hiring items:list){
            System.out.println(items);
        }
    }
    @Test
    public void delHiringTest(){
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        HiringDao hiringDao=(HiringDao)app.getBean(HiringDao.class);
        Hiring hiring=new Hiring();
        hiringDao.delHiring(4);
    }
}
