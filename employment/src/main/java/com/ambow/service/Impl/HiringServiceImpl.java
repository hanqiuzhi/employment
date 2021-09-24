package com.ambow.service.Impl;

import com.ambow.dao.HiringDao;
import com.ambow.entity.Hiring;
import com.ambow.service.HiringService;

import javax.annotation.Resource;
import java.util.List;

public class HiringServiceImpl implements HiringService {

    @Resource
    private HiringDao hiringDao;

    @Override
    public void addHiring(Hiring hiring) {
        hiringDao.addHiring(hiring);
    }

    @Override
    public void updateHiring(Hiring hiring) {
        hiringDao.updateHiring(hiring);
    }

    @Override
    public void delHiring(int hid) {
        hiringDao.delHiring(hid);
    }

    @Override
    public List<Hiring> selectHiringAll() {
        return hiringDao.selectHiringAll();
    }

    @Override
    public Hiring selectJobById(int hid) {
        return hiringDao.selectJobById(hid);
    }
}
