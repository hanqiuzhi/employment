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
    //添加省份
    @Test
    public void addProvinceTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ProvinceDao provinceDao = app.getBean(ProvinceDao.class);
        Province province = new Province();
        province.setPname("山西");
        int p= provinceDao.addProvince(province);
        System.out.println(p);
    }
    //删除
    @Test
    public void delProvinceTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ProvinceDao provinceDao = app.getBean(ProvinceDao.class);
        int p =provinceDao.delProvince(1);
        System.out.println(p);
    }
    //修改
    @Test
    public void updateProvinceTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        ProvinceDao provinceDao = app.getBean(ProvinceDao.class);
        Province province = new Province();
        province.setPid(2);
        province.setPname("山");
        int p =provinceDao.updateProvince(province);
        System.out.println(p);
    }
}
