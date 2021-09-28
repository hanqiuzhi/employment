package com.ambow.service;

import com.ambow.entity.City;

import java.util.List;

public interface CityService {
    List<City> selectCityAll();
    int addCity(City city);
    City selectCityById(int cid);
    int updateCity(City city);
    int delCity(int cid);

    List<City> selectCityByPid(int pid);
}
