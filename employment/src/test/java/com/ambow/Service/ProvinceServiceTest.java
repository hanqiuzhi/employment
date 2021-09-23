package com.ambow.Service;

import com.ambow.dao.ProvinceDao;
import com.ambow.entity.Province;
import com.ambow.service.ProvinceService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import java.util.List;

public class ProvinceServiceTest {

    @Test
    public void selectProvinceTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        //rovinceDao provinceDao = (ProvinceDao) app.getBean("provinceDao");
        ProvinceDao provinceDao = app.getBean(ProvinceDao.class);
        List<Province> list = provinceDao.selectProvinceAll();
        System.out.println(list);
    }
}
