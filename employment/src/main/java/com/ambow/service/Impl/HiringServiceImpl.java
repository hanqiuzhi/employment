package com.ambow.service.Impl;

import com.ambow.dao.HiringDao;
import com.ambow.entity.Hiring;
import com.ambow.service.HiringService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class HiringServiceImpl implements HiringService {

    @Resource
    private HiringDao hiringDao;

    @Override
    public int addHiring(Hiring hiring) {
         return hiringDao.addHiring(hiring);
    }

    @Override
    public int updateHiring(Hiring hiring) {
       return hiringDao.updateHiring(hiring);
    }

    @Override
    public int delHiring(int hid) {
       return hiringDao.delHiring(hid);
    }

    @Override
    public List<Hiring> selectHiringAll() {
        return hiringDao.selectHiringAll();
    }

    @Override
    public Hiring selectHiringById(int hid) {
        return hiringDao.selectHiringById(hid);
    }
}
