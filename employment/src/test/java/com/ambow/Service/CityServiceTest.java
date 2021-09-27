package com.ambow.Service;

import com.ambow.dao.CityDao;
import com.ambow.dao.ProvinceDao;
import com.ambow.entity.City;
import com.ambow.entity.Province;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class CityServiceTest {
    //查询所有城市
    @Test
    public void selectCityTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        CityDao cityDao = app.getBean(CityDao.class);
        List<City> list = cityDao.selectCityAll();
        System.out.println(list);
    }

    @Test
    public void addCityTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        CityDao cityDao = app.getBean(CityDao.class);
        City city = new City();
        city.setCname("大同");
        Province province=new Province();
        province.setPid(1);
        city.setCpid(province);
        cityDao.addCity(city);
    }
    @Test
    public void delCityTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        CityDao cityDao = app.getBean(CityDao.class);
        int p = cityDao.delCity(1);
        System.out.println(p);
    }
    @Test
    public void updateCityTest(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        CityDao cityDao = app.getBean(CityDao.class);
        City city = new City();
        city.setCid(1);
        city.setCname("济南");
        int p = cityDao.updateCity(city);
        System.out.println(p);
    }
    @Test
    public void selectCityById(){
        ApplicationContext app = new ClassPathXmlApplicationContext("spring.xml");
        CityDao cityDao = app.getBean(CityDao.class);
        City city = cityDao.selectCityById(1);
        System.out.println(city);
    }
}
