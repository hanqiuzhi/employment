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

    public int updateMajor(Major major) {
        return majorDao.updateMajor(major);
    }

    public int delMajor(int mid) {
        return majorDao.delMajor(mid);
    }

    public int addMajor(Major major) {
        return majorDao.addMajor(major);
    }

}
