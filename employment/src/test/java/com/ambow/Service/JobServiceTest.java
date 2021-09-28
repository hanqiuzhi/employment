package com.ambow.Service;

import com.ambow.dao.JobDao;
import com.ambow.dao.ProvinceDao;
import com.ambow.entity.City;
import com.ambow.entity.Enterprise;
import com.ambow.entity.Job;
import com.ambow.entity.Province;
import com.ambow.service.Impl.JobServiceImpl;
import com.ambow.service.JobService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class JobServiceTest {

    @Test
    public void addJobTest(){
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        JobDao jobDao=(JobDao) app.getBean(JobDao.class);
        //JobService jobService=(JobService)app.getBean("jobService");
        Job job=new Job();
        //job.setJid(2);
        job.setJname("测试");
        job.setJinfo("计算机");
        Enterprise enterprise=new Enterprise();
        enterprise.setEid(1);
        job.setJeid(enterprise);
        jobDao.addJob(job);
    }

    @Test
    public void updateJobTest(){
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        JobDao jobDao=(JobDao) app.getBean(JobDao.class);
        Job job=new Job();
        job.setJid(4);
        job.setJname("会计");
        job.setJinfo("各大银行");
        Enterprise enterprise=new Enterprise();
        enterprise.setEid(1);
        job.setJeid(enterprise);
        jobDao.updateJob(job);
    }

    @Test
    public void allJobtest(){
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        JobDao jobDao=(JobDao) app.getBean(JobDao.class);
        Job job=new Job();
        City city=new City();
        List<Job> list=jobDao.selectJobAll();
        for (Job items:list){
            System.out.println("id:"+items.getJid()+"岗位名称："+items.getJname()+"岗位描述："+items.getJinfo()+"所属单位："+items.getJeid().getEid());
        }
    }

    @Test
    public void delJobtest(){
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        JobDao jobDao=(JobDao) app.getBean(JobDao.class);
        Job job=new Job();
        jobDao.delJob(2);
    }

}
