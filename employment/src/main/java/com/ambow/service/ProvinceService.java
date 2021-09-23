package com.ambow.service;

import com.ambow.entity.Province;

import java.util.List;

public interface ProvinceService {

    List<Province> selectProvinceAll();
    int addProvince(Province province);
    Province selectProvinceById(int pid);
    int updateProvince(Province province);
    int delProvince(int pid);
}
