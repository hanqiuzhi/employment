package com.ambow.service;

import com.ambow.entity.City;

import java.util.List;

public interface CityService {
    List<City> selectCityAll();
    int addCity(City city);
    City selectCityById(int cid);
    int updateCity(City city);
    int delCity(int cid);
    //根据省份id 查询城市
    List<City> selectCityByPid(int pid);
}
