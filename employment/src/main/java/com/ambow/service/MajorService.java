package com.ambow.service;

import com.ambow.dao.MajorDao;
import com.ambow.entity.Major;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MajorService {

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
