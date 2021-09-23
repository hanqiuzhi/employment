package com.ambow.service.Impl;

import com.ambow.dao.ProvinceDao;
import com.ambow.entity.Province;
import com.ambow.service.ProvinceService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProvinceServiceImpl implements ProvinceService {

    @Resource
    private ProvinceDao provinceDao;

    @Override
    public List<Province> selectProvinceAll() {
        return provinceDao.selectProvinceAll();
    }

    @Override
    public int addProvince(Province province) {
        return provinceDao.addProvince(province);
    }

    @Override
    public Province selectProvinceById(int pid) {
        return provinceDao.selectProvinceById(pid);
    }

    @Override
    public int updateProvince(Province province) {
        return provinceDao.updateProvince(province);
    }

    @Override
    public int delProvince(int pid) {
        return provinceDao.delProvince(pid);
    }
}
