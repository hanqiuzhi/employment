package com.ambow.service.Impl;

import com.ambow.dao.MajorDao;
import com.ambow.entity.Major;
import com.ambow.service.MajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MajorServiceImpl implements MajorService {

    @Autowired
    private MajorDao majorDao;

    public List<Major> selectMajorAll() {
        return majorDao.selectMajorAll();
    }

    public Major selectMajorById(int mid) {
        return majorDao.selectMajorById(mid);
    }

    public void updateMajor(Major major) {
        majorDao.updateMajor(major);
    }

    public void delMajor(int mid) {
        majorDao.delMajor(mid);
    }

    public void addMajor(Major major) {
        majorDao.addMajor(major);
    }

}
