package com.ambow.Service;

import com.ambow.dao.ProvinceDao;
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
}
