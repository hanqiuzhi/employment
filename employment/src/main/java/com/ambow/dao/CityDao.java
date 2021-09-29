package com.ambow.dao;

import com.ambow.entity.City;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CityDao {
     List<City> selectCityAll();
     int addCity(City city);
     City selectCityById(int cid);
     int updateCity(City city);
     int delCity(int cid);

    List<City> selectCityByPid(int pid);
}
