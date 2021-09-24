package com.ambow.Service;

import com.ambow.dao.EnterpriseDao;
import com.ambow.dao.ProvinceDao;
import com.ambow.entity.City;
import com.ambow.entity.Enterprise;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class EnterpriseTest {
    @Test
    public void selectEnterpriseTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        EnterpriseDao enterpriseDao = app.getBean(EnterpriseDao.class);
        List<Enterprise> list = enterpriseDao.selectEnterpriseAll();
        System.out.println(list);

    }
    @Test
    public void addEnterpriseTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        EnterpriseDao enterpriseDao = app.getBean(EnterpriseDao.class);
        Enterprise enterprise = new Enterprise();
        enterprise.setEname("安博");
        enterprise.setEpwd("123");
        enterprise.setElicense("执照");
        enterprise.setEinfo("huan");
        City city = new City();
        city.setCid(2);
        enterprise.setEcid(city);
        enterprise.setEphone("12345678");
        enterprise.setEemail("122222");
        enterpriseDao.addEnterprise(enterprise);
    }
    @Test
    public void delEnterpriseTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        EnterpriseDao enterpriseDao = app.getBean(EnterpriseDao.class);
        int p =enterpriseDao.delEnterprise(1);
        System.out.println(p);
    }
    @Test
    public void updateEnterpriseTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        EnterpriseDao enterpriseDao = app.getBean(EnterpriseDao.class);
        Enterprise enterprise = new Enterprise();
        enterprise.setEid(2);
        enterprise.setEname("aaa");
        enterprise.setEno("123");
        enterprise.setEpwd("123");
        enterprise.setElicense("123");
        enterprise.setEinfo("ccc");
        enterprise.setEphone("12345678");
        enterprise.setEemail("1234");
        int p =enterpriseDao.updateEnterprise(enterprise);
        System.out.println(p);
    }
}
