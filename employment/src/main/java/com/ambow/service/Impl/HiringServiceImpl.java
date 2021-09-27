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
    public Hiring selectHiringById(int hid) {
        return hiringDao.selectHiringById(hid);
    }
}
