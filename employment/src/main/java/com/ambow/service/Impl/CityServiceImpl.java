package com.ambow.service.Impl;

import com.ambow.dao.CityDao;
import com.ambow.entity.City;
import com.ambow.service.CityService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CityServiceImpl implements CityService {

    @Resource
    private CityDao cityDao;
    @Override
    public List<City> selectCityAll() {
        return cityDao.selectCityAll();
    }

    @Override
    public int addCity(City city) {
        return cityDao.addCity(city);
    }


    @Override
    public City selectCityById(int cid) {
        return cityDao.selectCityById(cid);
    }

    @Override
    public int updateCity(City city) {
        return cityDao.updateCity(city);
    }

    @Override
    public int delCity(int cid) {
        return cityDao.delCity(cid);
    }

    @Override
    public List<City> selectCityByPid(int pid) {
        return cityDao.selectCityByPid(pid);
    }


}
