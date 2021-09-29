package com.ambow.dao;

import com.ambow.entity.City;
import com.ambow.entity.Province;

import java.util.List;

public interface ProvinceDao {

    List<Province> selectProvinceAll();
    int addProvince(Province province);
    Province selectProvinceById(int pid);
    int updateProvince(Province province);
    int delProvince(int pid);

}
