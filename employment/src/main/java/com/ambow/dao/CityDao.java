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
     //根据省份id 查询城市
     List<City> selectProvinceCity(int pid);

}
